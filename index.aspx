<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SurvayForm2._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="0" style="width: 639px">
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="FullName"></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="user" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>  
    </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email Name"></asp:Label></td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter a Email" ForeColor="Red"></asp:RequiredFieldValidator>  
      <asp:RegularExpressionValidator ID="remail" runat="server" 
               ControlToValidate="TextBox2" ErrorMessage="Write Valid Mail" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator> 
    </td>
    </tr>
    <tr>
     <td><asp:Label ID="Label3" runat="server" Text="Favourate Color"></asp:Label></td>
     <td>
      <asp:RadioButtonList ID="rblhouse" runat="server" RepeatLayout="Flow">
               <asp:ListItem>Red</asp:ListItem>
               <asp:ListItem>Blue</asp:ListItem>
               <asp:ListItem>Yellow</asp:ListItem>
               <asp:ListItem>Green</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:RequiredFieldValidator ID="rfvhouse" runat="server" 
               ControlToValidate="rblhouse" ErrorMessage="Enter your Favourate Color" >
            </asp:RequiredFieldValidator>
                     </td>
     </tr>
     <tr>
      <td><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
      <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a Address" ForeColor="Red"></asp:RequiredFieldValidator>  
      </td>
     </tr>
     <tr>
     <td colspan="2" align="center">
         <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
         </td>
     </tr>
    </table>
    <br />
    <br />
    <div visible="false"><asp:FileUpload ID="FileUpload1" runat="server" /></div>
    
    
    </div>
    </form>
</body>
</html>
