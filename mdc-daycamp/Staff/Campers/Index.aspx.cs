using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.ModelBinding;

namespace mdc_daycamp.Staff.Campers
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getCampers();
        }

        protected void getCampers()
        {
            //connect to db
            var conn = new muskokaEntites();

            //run the query using LINQ
            var Campers = from c in conn.camperProfiles
                          select c;

            //display the query results in grid view
            grdCampers.DataSource = Campers.ToList();
            grdCampers.DataBind();
        }

        protected void grdCampers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //function to delete a camper from the list of profiles
            // 1. determine row in the grid
            Int32 gridIndex = e.RowIndex;

            // 2. find the camper id value in the selected row
            Int32 camperID = Convert.ToInt32(grdCampers.DataKeys[gridIndex].Values["camperID"]);

            // 3. connect to db
            using (muskokaEntites db = new muskokaEntites())
            {

                camperProfile camp = (from c in db.camperProfiles
                                      where c.ID == camperID
                                      select c).FirstOrDefault();

                // 4. delete the selected camper
                db.camperProfiles.Remove(camp);
                db.SaveChanges();

                // 5. referesh the grid
                getCampers();
            }
        }
    }
}