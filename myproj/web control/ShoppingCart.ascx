<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.ascx.cs" Inherits="myproj.web_control.ShoppingCart" %>
<style type="text/css">
    .auto-style2 {
        width: 72%;
        height: 618px;
    }
    .auto-style1 {
        margin-right: 56px;
        margin-top: 0px;
    }
    .auto-style3 {
        width: 793px;
    }
    .auto-style4 {
        width: 793px;
        margin-left: 40px;
    }
</style>

<table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">
            <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Height="16px" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating" OnSelectedIndexChanged="grdCart_SelectedIndexChanged" Width="212px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Category" ReadOnly="True" />
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="Product" ReadOnly="True" />
                    <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="SubTotal" HeaderText="Sub Total" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="81px" ImageUrl='<%# "..//images//"+eval("CatNo")+"-"+eval(ProID)+".jpg" %>' Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Control" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4" style="background-color: #3366CC; font-size: 12px; color: #FFFFFF">
            <asp:Label ID="lbl_total" runat="server" Font-Bold="True" Font-Size="Large" Text="Total Cost"></asp:Label>
        </td>
        <td>
            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="Confirm" />
        </td>
    </tr>
</table>

