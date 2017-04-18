using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.ModelBinding;

namespace mdc_daycamp.Staff.Payments
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

            //run the query using LINQ order by f
            var Campers = from c in conn.camperProfiles
                          orderby c.familyName ascending
                          select c;

            //display the query results in grid view
            grdCampers.DataSource = Campers.ToList();
            grdCampers.DataBind();
        }

    }
}