<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="food_details.aspx.cs" Inherits="Login_Page.food_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>

        <div style="background-color:aqua">
        <h1 style="font-style:italic;text-align:center;color:saddlebrown">Food Details</h1>
        </div>


            <div style="color:red;margin-left:700px">
          <h2 style="float:left">  <asp:Label ID="Lbl_wc_txt" runat="server" ></asp:Label></h2>
        &nbsp;&nbsp;&nbsp;
       <h3 style="float:left; margin-left: 40px;"> <asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="Logout" style="margin-top: 0px" /></h3>
            </div>

        
        <br />
<div style="width:300px;float:left;margin-left:150px;margin-bottom:100px;background-color:aliceblue">
        <h2>Veg-Delight</h2>
    <asp:Button ID="Btnveg" runat="server" Text="Veg" OnClick="Btnveg_Click" />
        <asp:GridView ID="GridView1" runat="server" Visible="false" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    <br />
    <asp:ListBox ID="List_veg" SelectionMode="Multiple" runat="server"></asp:ListBox>
      <br />  
        <asp:TextBox ID="txt_V_quantity" runat="server" TextMode="Number" Text="1"></asp:TextBox>
        <br />
    <asp:Button ID="Btncart_VEG" runat="server" Text="Add To Cart_VEG" style="margin-left: 0px; margin-top: 0px" Width="116px" OnClick="Btncart_Click" /> &nbsp;&nbsp; &nbsp&nbsp
        
</div >
<div style="width:300px;float:left;margin-left:150px;margin-bottom:100px;background-color:aliceblue">
        <h2>Non-Veg Delight</h2>
    <asp:Button ID="Btnnonveg" runat="server" Text="Non-veg" OnClick="Btnnonveg_Click" />
        <asp:GridView ID="GridView2" runat="server" Visible="false" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    <br />
    <asp:ListBox ID="List_nonveg" SelectionMode="Multiple" runat="server"></asp:ListBox>
        <br />
        <asp:TextBox ID="txt_NV_quantity" runat="server" TextMode="Number" Text="1"></asp:TextBox>
        <br />
        <asp:Button ID="Btn_nonveg" runat="server" OnClick="Btn_nonveg_Click" Text="Add to cart_nonveg" Width="136px" />        
</div>             
                 
<asp:Button ID="Btn_view_cart" runat="server" OnClick="Btn_view_cart_Click" Text="VIEW_CART" style="margin-left: 375px" Width="255px" />               
        <br />       
       <div>         
        <asp:GridView ID="GV_cart" runat="server" style="margin-top: 23px; float:left; margin-left: 225px;" Width="376px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>   
        </div>
<div>
        <br />   
        
        <asp:Label ID="lbl_ta" runat="server" Text="Total AMOUNT" Visible="false"></asp:Label>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        <br />
 </div>       
        <asp:Button ID="CnfPay" runat="server" Text="Confirm & make Payment"  OnClick="CnfPay_Click"/>
          
        
        <asp:Button ID="BTN_ORDERS" runat="server" OnClick="click_vieworder" Text="VIEW ORDER" />
          
        
        <asp:GridView ID="GV_VIEWORDERS" runat="server">
        </asp:GridView>
    &nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
