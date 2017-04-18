using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mdc_daycamp.Staff.Reports
{
    public partial class Stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //connect to database 
            var conn = new muskokaEntites();

            //table query 
            var Campers = from c in conn.camperProfiles
                          select c;
            //show the values
            totalCamper.Text = Convert.ToString(Campers.Count());
        }

        protected void Calculate1_Click(object sender, EventArgs e)
        {
            //connect to database
            var conn = new muskokaEntites();

            //table query 
            var startdate = from r in conn.registrationDates
                            where r.date == datebox1.Text && r.signInTime != null
                            select r;

            var enddate = from r in conn.registrationDates
                          where r.date == datebox2.Text && r.signInTime != null
                          select r;

            var count1 = Convert.ToInt32(startdate.Count());
            var count2 = Convert.ToInt32(enddate.Count());
            var total = (count1 + count2) / 2;
            result1.Text = Convert.ToString(total);

        }

        protected void Calculate2_Click(object sender, EventArgs e)
        {
            //connect to database
            var conn = new muskokaEntites();

            //table query 
            var startdate = from r in conn.registrationDates
                            where r.date == datebox3.Text
                            select r;

            var enddate = from r in conn.registrationDates
                          where r.date == datebox4.Text
                          select r;

            var count3 = Convert.ToInt32(startdate.Count());
            var count4 = Convert.ToInt32(enddate.Count());
            var total = (count3 + count4) / 2;
            result2.Text = Convert.ToString(total);
        }
    }
}