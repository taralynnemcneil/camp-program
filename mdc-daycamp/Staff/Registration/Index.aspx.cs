using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Registration
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getCampers();
        }

        protected void submitDate_Click(object sender, EventArgs e)
        {
            date.Text = datebox1.Text;
        }

        protected void getCampers()
        {
            //connect to db
            var conn = new muskokaEntites();

            //run the query using LINQ
            var camperDates = (from cp in conn.camperProfiles
                               join cr in conn.camperRegistrations on cp.ID equals cr.camperID into c
                               from cr in c
                               join rD in conn.registrationDates on cr.registrationDateID equals rD.ID
                               where rD.date == datebox1.Text
                               select new { cp.ID, cp.familyName, cp.firstName, rD.signInTime, rD.signOutTime, rD.signedInBy, rD.signedOutBy });


            //display the query results in grid view
            grdRegistration.DataSource = camperDates.ToList();
            grdRegistration.DataBind();
        }
        protected void grdRegistration_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //function to delete a camper from the list of profiles
            // 1. determine row in the grid
            Int32 gridIndex = e.RowIndex;

            // 2. find the camper id value in the selected row
            Int32 camperID = Convert.ToInt32(grdRegistration.DataKeys[gridIndex].Values["camperID"]);
            var date = datebox1.Text;

            // 3. connect to db
            using (muskokaEntites db = new muskokaEntites())
            {

                registrationDate camp = (from r in db.registrationDates
                                         join cR in db.camperRegistrations on r.ID equals cR.registrationDateID into rID
                                         from cR in rID
                                         join c in db.camperProfiles on cR.camperID equals c.ID
                                         where c.ID == camperID && r.date == date
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