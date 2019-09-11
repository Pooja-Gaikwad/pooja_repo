using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Page
{
    public partial class food_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Lbl_wc_txt.Text = "Welcome," + Session["username"].ToString();

            if (!IsPostBack)
            {
                sb09DBcontext db = new sb09DBcontext();
               List<cart> carts = db.carts.ToList();

               foreach (var item in carts)
               {
                   db.carts.Remove(item);                  
               }
               db.SaveChanges();
            }
        }

        protected void Btnveg_Click(object sender, EventArgs e)
        {
            sb09DBcontext db = new sb09DBcontext();
            List<FoodDetails_veg> veg = db.FoodDetails_veg.ToList();

           
            if (GridView1.Visible)
            {
                GridView1.Visible = false;
            }
            else
            {
                GridView1.Visible = true;
                GridView1.DataSource = veg;
                GridView1.DataBind();

                foreach (FoodDetails_veg item in veg)
                {
                    List_veg.Items.Add(item.Food_name);                 
                }
            }           
        }

        protected void Btnnonveg_Click(object sender, EventArgs e)
        {
            sb09DBcontext db = new sb09DBcontext();
            
            List<FoodDetails_nonveg> nonveg = db.FoodDetails_nonveg.ToList();

            if (GridView2.Visible)
            {
                GridView2.Visible = false;
            }
            else
            {
                GridView2.Visible = true;
                GridView2.DataSource = nonveg;
                GridView2.DataBind();

                foreach (FoodDetails_nonveg item in nonveg)
                {
                    List_nonveg.Items.Add(item.Food_name);

                   
                }
            }
        }

        protected void Btncart_Click(object sender, EventArgs e)
        {
            string veg_Selected_list  = Convert.ToString(List_veg.SelectedItem);
            int quantity = Convert.ToInt32(txt_V_quantity.Text);
            int? price = 0;


            sb09DBcontext db = new sb09DBcontext();
            List<FoodDetails_veg> veg = db.FoodDetails_veg.ToList();

            foreach (FoodDetails_veg item in veg)
            {
                if (veg_Selected_list == item.Food_name)
                {
                    price = item.Price * quantity;
                }
            }
          
            cart carts_veg= new cart() {foodname=veg_Selected_list, price= price, quantity=quantity};
            db.carts.Add(carts_veg);
            db.SaveChanges();              
            }

        protected void Btn_nonveg_Click(object sender, EventArgs e)
        {
            string nonveg_Selected_list = Convert.ToString(List_nonveg.SelectedItem);
            int quantity = Convert.ToInt32(txt_NV_quantity.Text);
            int? price = 0;

            sb09DBcontext db = new sb09DBcontext();
            List<FoodDetails_nonveg> nonveg = db.FoodDetails_nonveg.ToList();

            foreach (FoodDetails_nonveg item in nonveg)
            {
                if (nonveg_Selected_list == item.Food_name)
                {
                    price = item.Price * quantity;
                }               
            }
            cart carts_nv = new cart() { foodname = nonveg_Selected_list, price = price, quantity = quantity };
            db.carts.Add(carts_nv);
            db.SaveChanges();
        }

        protected void Btn_view_cart_Click(object sender, EventArgs e)
        {
            sb09DBcontext db =new sb09DBcontext();
            List<cart> cart_list = db.carts.ToList();

            GV_cart.DataSource = cart_list;
            GV_cart.DataBind();

            int? totalprice = 0;

            foreach (var item in cart_list)
            {
                totalprice = totalprice + item.price;
            }
            lbl_ta.Visible = true;

            Label1.Text = totalprice.ToString();

        }

        protected void CnfPay_Click(object sender, EventArgs e)
        {
             sb09DBcontext db = new sb09DBcontext();

            List<Login> login_user = db.Logins.ToList();
            int userid = 0;

            foreach (var item in login_user)
            {
                if (item.uName == Session["username"].ToString()) ;

                userid = item.uid;
            }

            db.usp_orderlist(userid, Convert.ToInt32(Label1.Text));



        }

        protected void click_vieworder(object sender, EventArgs e)
        {
            sb09DBcontext db = new sb09DBcontext();
           List<orderHistory> order_history_list = db.orderHistories.ToList();

             List<Login> login_user = db.Logins.ToList();
            int userid = 0;

            foreach (var item in login_user)
            {
                if (item.uName == Session["username"].ToString()) ;

                userid = item.uid;
            }

           var order_his_list= order_history_list.Where(s => s.userid.Equals(userid));

            GV_VIEWORDERS.DataSource = order_his_list;
           GV_VIEWORDERS.DataBind();

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
       
}

}
