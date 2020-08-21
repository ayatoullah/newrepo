<%@ Page Title="" Language="C#" MasterPageFile="~/anonymous.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="myproj.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; margin-left: 36">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_fname" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_lname" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_username" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">ID</td>
        <td colspan="2">
            <asp:Label ID="lbl_id" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">Email</td>
        <td id="lbl_email" colspan="2">
            <asp:Label ID="lbl_email" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="height: 18px">
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </td>
        <td colspan="2" style="height: 18px">
            <asp:Label ID="lbl_password" runat="server"></asp:Label>
        </td>
        <td style="height: 18px"></td>
    </tr>
    <tr>
        <td colspan="2" style="height: 18px">
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td colspan="2" style="height: 18px">
            <asp:Label ID="lbl_confirm" runat="server"></asp:Label>
        </td>
        <td style="height: 18px">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_img" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_address" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label9" runat="server" Text="Phone"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="lbl_phone" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 175px">
            <asp:Button ID="Button4" runat="server" Text="edit profile" />
        </td>
        <td style="width: 127px">
            <asp:Button ID="Button3" runat="server" style="margin-left: 20px" Text="change password" />
        </td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 253px">
            <asp:Button ID="Button1" runat="server" Text="logout" Width="108px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
