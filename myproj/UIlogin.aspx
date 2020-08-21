<%@ Page Title="" Language="C#" MasterPageFile="~/anonymous.Master" AutoEventWireup="true" CodeBehind="UIlogin.aspx.cs" Inherits="myproj.UIlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 761px; height: 628px; margin-left: 0">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEW CUSTOMERS<br />
            </td>
            <td></td>
            <td style="width: 312px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTERED CUSTOMERS</td>
        </tr>
        <tr>
            <td>
                <br />
                By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</td>
            <td></td>
            <td style="width: 312px">&nbsp;If you have an account with us, please log in.<br />
                <br />
                Email Address<br />
                <br />
                <asp:TextBox ID="txt_mail" runat="server" Height="35px" TextMode="Email" Width="306px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_create" runat="server" BackColor="#666666" ForeColor="White" Height="41px" OnClick="Button1_Click" Style="border-radius:15px;border:hidden" Text="create your account" Width="189px" />
                &nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 312px">
                <br />
                Password<br />
                <br />
                <asp:TextBox ID="txt_pass" runat="server" Height="35px" TextMode="Password" Width="306px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 312px">
                <br />
                <asp:CheckBox ID="ck_remember" runat="server" OnCheckedChanged="ck_remember_CheckedChanged" Text="Remember  Me" />
                <br />
                <br />
                <br />
                <asp:Button ID="btn_login" runat="server" BackColor="#666666" BorderStyle="None" ForeColor="White" Height="33px" OnClick="btn_login_Click" Style="border-radius:15px;border:hidden" Text="Log in" Width="137px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <asp:LinkButton ID="lbl_forgetpass0" runat="server" OnClick="lbl_forgetpass_Click">Forget password</asp:LinkButton>
                &nbsp;?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 312px">
                <br />
                &nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 312px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
