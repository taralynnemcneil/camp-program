using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Campers
{
    public partial class RegistrationDates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getCampers();
        }

        protected void getCampers()
        {
            //connect to db
            var conn = new muskokaEntites();

            Int32 camperID = Convert.ToInt32(Request.QueryString["camperID"]);

            //run the query using LINQ
            var dates = from r in conn.registrationDates
                        join cR in conn.camperRegistrations on r.ID equals cR.registrationDateID into rID
                        from cR in rID
                        join c in conn.camperProfiles on cR.camperID equals c.ID
                        select r;


            //display the query results in grid view
            grdRegistration.DataSource = dates.ToList();
            grdRegistration.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void grdRegistration_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //function to delete a camper from the list of profiles
            // 1. determine row in the grid
            Int32 gridIndex = e.RowIndex;

            // 2. find the camper id value in the selected row
            Int32 ID = Convert.ToInt32(grdRegistration.DataKeys[gridIndex].Values["ID"]);

            Int32 camperID = Convert.ToInt32(Request.QueryString["camperID"]);

            // 3. connect to db
            using (muskokaEntites db = new muskokaEntites())
            {

                registrationDate camp = (from r in db.registrationDates
                                         join cR in db.camperRegistrations on r.ID equals cR.registrationDateID into rID
                                         from cR in rID
                                         join c in db.camperProfiles on cR.camperID equals c.ID
                                         select r).FirstOrDefault();

                // 4. delete the selected camper
                db.registrationDates.Remove(camp);
                db.SaveChanges();

                // 5. referesh the grid
                getCampers();
            }
        }
    }
}