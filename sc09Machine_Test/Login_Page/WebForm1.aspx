<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Login_Page.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" margin-left: 306px;">
    <form id="form1" runat="server">
    <div>
        
      
        
<table border="1" style="align-content:center;margin-left:100px;">
    <tr>
        <td colspan="2">
     <h2 style="color:mediumaquamarine" >Welcome to Thrill of Taste</h2>
            </td>
        </tr>
    <tr>
        <td >
       Login:
        </td>
         <td >
       <asp:TextBox ID="Textuser" runat="server" ToolTip="Enter User Name"></asp:TextBox>
        </td>       
   </tr>
    <tr>
        <td>
        Password:
        </td>
        <td>
       <asp:TextBox ID="Textpassword" runat="server" TextMode="Password" ToolTip="Enter Your Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="Button1_Click" />
        </td>
    </tr>
 </table>
        

    </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
    </form>
</body>
</html>
