<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myproj.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OurProject %>" DeleteCommand="DELETE FROM [cart] WHERE [id] = @id" InsertCommand="INSERT INTO [cart] ([id], [userid]) VALUES (@id, @userid)" ProviderName="<%$ ConnectionStrings:OurProject.ProviderName %>" SelectCommand="SELECT [id], [userid] FROM [cart]" UpdateCommand="UPDATE [cart] SET [userid] = @userid WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="userid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
