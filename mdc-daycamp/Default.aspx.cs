using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace mdc_daycamp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void parentSubmit_Click(object sender, EventArgs e)
        {
            // connect
            using (muskokaEntites db = new muskokaEntites())
            {
                // create guardian login object
                guardian objO = new guardian();

                String firstname = firstName.Text;
                String lastname = lastName.Text;

                objO = (from o in db.guardians
                        where o.firstName == firstname
                        && o.lastName == lastname
                        select o).FirstOrDefault();

                if (objO != null)
                {
                    // store the camperID in the session
                    Session["guardianID"] = objO.ID;

                    // redirect to sign in/out page
                    Response.Redirect("Parent/CamperAttendance.aspx?guardianID=" + objO.ID);
                }
                else
                {
                    lblError.Text = "Invalid Login";
                }
            }
        }
    }
}