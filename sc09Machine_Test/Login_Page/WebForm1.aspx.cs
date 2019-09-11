using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Login_Page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sb09DBcontext db = new sb09DBcontext();
            List<Login> log =db.Logins.ToList();


            Session["username"] = Textuser.Text;

            foreach (var item in log)
            {
                if (item.uName == Textuser.Text && item.uPassword == Textpassword.Text)
                {
                    Response.Redirect("~/food_details.aspx");
                }
                else
                {
                    Label1.Text = "Please Enter Proper UserName & UserPassword";
                }
            }

            
            
        }
    }
} 