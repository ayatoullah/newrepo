<%@ Page Title="Success" Language="C#" MasterPageFile="~/anonymous.Master" AutoEventWireup="true" CodeBehind="UIsuccess.aspx.cs" Inherits="myproj.UIsuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2" style="width: 80%; height: 194px">
        <tr>
            <td class="txt-center">
                <asp:Label ID="Label1" runat="server" Text="Thank you"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="txt-center">
                <asp:Label ID="Label2" runat="server" Text="Order ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="txt-center">Your Order has been completed .<br />
                We will call you if there is any missing data .If there isnot, the order will me confirmed immediatetly</td>
        </tr>
    </table>
</asp:Content>
