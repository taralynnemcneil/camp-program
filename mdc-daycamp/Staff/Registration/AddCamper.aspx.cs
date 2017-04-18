using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Registration
{
    public partial class AddCamper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCampers();
            }

        }

        protected void getCampers()
        {
            //connect to db
            var conn = new muskokaEntites();

            //run the query using LINQ
            var Campers = from c in conn.camperProfiles
                          select c;

            //display the query results in grid view
            grdRegistration.DataSource = Campers.ToList();
            grdRegistration.DataBind();
        }

        protected void grdRegistration_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow SelectedRow = grdRegistration.SelectedRow;
            string id = SelectedRow.Cells[0].Text;
        }

        protected void grdRegistration_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(grdRegistration, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }


        protected void grdRegistration_SelectedIndex(object sender, EventArgs e)
        {

        }
    }
}