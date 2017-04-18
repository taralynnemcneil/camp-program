using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Reports
{
    public partial class DailyCamperReports : System.Web.UI.Page
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
    }
}