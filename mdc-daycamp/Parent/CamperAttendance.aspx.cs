using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Parent
{
    public partial class CamperAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Show current Date
            currentDate.Text = DateTime.Now.DayOfWeek.ToString();
            currentDate2.Text = DateTime.Now.ToString("MMMM dd, yyyy");
            getCampers();
        }


        protected void getCampers()
        {
            using (muskokaEntites conn = new muskokaEntites())
            {
                Int32 guardianID = Convert.ToInt32(Request.QueryString["guardianID"]);

                // run query to match get all campers related to the logged in guardian
                var campers = from c in conn.camperProfiles
                              join cG in conn.camperGuardians on c.ID equals cG.camperID into match
                              from cG in match
                              join g in conn.guardians on cG.guardianID equals g.ID
                              where g.ID == guardianID
                              select c;

                grdCampers.DataSource = campers.ToList();

                grdCampers.DataBind();
            }

        }
    }
}