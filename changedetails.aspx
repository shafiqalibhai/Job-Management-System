<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="changedetails.aspx.cs" Inherits="changedetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        Change Personal Details</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uname"
        DataSourceID="SqlDataSource2" DefaultMode="Edit" 
        >
        <Fields>
            <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" SortExpression="uname">
                <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email Address" SortExpression="email">
                <ControlStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Mailing Address" SortExpression="address" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    
    
   <asp:SqlDataSource ID="sqldatasource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobsConnectionString4 %>"
        DeleteCommand="DELETE FROM [users] WHERE [uname] = @uname" InsertCommand="INSERT INTO [users] ([uname], [email], [address], [phone]) VALUES (@uname, @email, @address, @phone)"
        ProviderName="<%$ ConnectionStrings:JobsConnectionString4.ProviderName %>" SelectCommand="SELECT [uname], [email], [address], [phone] FROM [users] WHERE ([uname] = @uname)"
        UpdateCommand="UPDATE [users] SET [email] = @email, [address] = @address, [phone] = @phone WHERE [uname] = @uname">
        <DeleteParameters>
            <asp:Parameter Name="uname" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="uname" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

