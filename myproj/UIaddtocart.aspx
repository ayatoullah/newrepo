<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/anonymous.Master" AutoEventWireup="true" CodeBehind="UIaddtocart.aspx.cs" Inherits="myproj.UIaddtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 102px">&nbsp;</td>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 770px">
            <table style="width: 87%; height: 157px">
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Label ID="lblCat" runat="server" Text="1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Label ID="lblProID" runat="server" Text="2"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Label ID="lblProName" runat="server" Text="PC Dell"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Label ID="lblPrice" runat="server" Text="3200"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">
                        <asp:Label ID="Label1" runat="server" Text="Max Quantity"></asp:Label>
                    </td>
                    <td style="width: 77px" id="lbl_qty">
                        <asp:Label ID="lblQty" runat="server" Text="3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Label ID="lblSubtotal" runat="server" Text="dhhguyi jejkejweo lkjeoeuoljf jfwoo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">
                        <asp:Label ID="Label2" runat="server" Text="Quantity You Want"></asp:Label>
                    </td>
                    <td style="width: 77px">
                        <asp:TextBox ID="txtQty" runat="server">2</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 77px">
                        <asp:Button ID="btn_addtocart" runat="server" OnClick="btn_addtocart_Click" Text="Add to cart" />
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 102px">&nbsp;</td>
        <td style="width: 150px">&nbsp;</td>
        <td style="width: 770px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
