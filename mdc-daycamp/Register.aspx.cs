using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace mdc_daycamp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // connection
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            // populate new user from the register form
            var user = new IdentityUser()
            {
                UserName = registerUsername.Text,
                Email = registerEmail.Text
            };

            // try to save user
            IdentityResult result = manager.Create(user, registerPassword.Text);

            // evaluate the result
            if (result.Succeeded)
            {
                Response.Redirect("StaffLogin.aspx");
            }
            else
            {
                registrationPending.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}