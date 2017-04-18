using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Reports
{
    public partial class AuthenticationReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCampers();
        }

        protected void submitDate_Click(object sender, EventArgs e)
        {
            
        }

        protected void GetCampers()
        {
            using (muskokaEntites conn = new muskokaEntites())
            {
                
                var camperDates = (from cp in conn.camperProfiles
                                   join cr in conn.camperRegistrations on cp.ID equals cr.camperID into c
                                   from cr in c
                                   join rD in conn.registrationDates on cr.registrationDateID equals rD.ID
                                   where rD.date == datebox1.Text
                                   select new { cp.ID, cp.familyName, cp.firstName, rD.signInTime, rD.signOutTime, rD.signedInBy, rD.signedOutBy, rD.date });

                grdParents.DataSource = camperDates.ToList();

                grdParents.DataBind();
            }

        }
    }
}