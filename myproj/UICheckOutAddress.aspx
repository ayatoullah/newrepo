<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UICheckOutAddress.aspx.cs" Inherits="myproj.UICheckOutAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74%;
            height: 43px;
        }
        .auto-style3 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table align="center" class="auto-style1" style="background-color: #CCFF99">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="بريدك الالكتروني"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="العنوان"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="تأكيد الطلب" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
