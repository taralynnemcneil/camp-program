using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.ModelBinding;
using System.Data;
using System.Data.SqlClient;

namespace mdc_daycamp.Staff.Payments
{
    public partial class Pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                // get the id from the url
                Int32 camperID = Convert.ToInt32(Request.QueryString["camperID"]);

                // connect
                var conn = new muskokaEntites();

                // look up the camper
                var objCamper = (from c in conn.camperProfiles
                                 where c.ID == camperID
                                 select c).FirstOrDefault();

                var objPayment = (from p in conn.payments
                                  where p.camperID == camperID
                                  select p).FirstOrDefault();

                // run the query using LINQ
                var payment = (from p in conn.payments
                               where p.camperID == camperID
                               select p);

                // display the query results in grid view
                grdPayment.DataSource = payment.ToList();
                grdPayment.DataBind();

                // populate the camper form
                familyName.Text = objCamper.familyName;
                firstName.Text = objCamper.firstName;
                rate.Text = "$" + objCamper.rate;
            }

        }

        protected void submitPayment_Click(object sender, EventArgs e)
        {

            // connect
            using (muskokaEntites db = new muskokaEntites())
            {

                // create new payment
                payment pay = new payment();

                Int32 camperID = 0;

                // check for ID in url
                if (!String.IsNullOrEmpty(Request.QueryString["camperID"]))
                {
                    //get the id from the url
                    camperID = Convert.ToInt32(Request.QueryString["camperID"]);

                    // get the payment
                    pay = (from p in db.payments
                           where p.camperID == camperID
                           select p).FirstOrDefault();
                }

                //fill properties to make a payment
                pay.date = payCalendar.Text;
                pay.amount = "$" + makePayment.Text;
                pay.paymentType = payType.SelectedItem.Text;
                pay.camperID = Convert.ToInt32(Request.QueryString["camperID"]);

                db.payments.Add(pay);
                db.SaveChanges();

                // redirect
                Response.Redirect("Pay.aspx");

            }
        }
    }
}