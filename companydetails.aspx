<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="companydetails.aspx.cs" Inherits="companydetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Employer Details<p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uname"
            DataSourceID="SqlDataSource2" >
            <Fields>
                <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname" />
                <asp:BoundField DataField="compname" HeaderText="compname" SortExpression="compname" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="noemployees" HeaderText="noemployees" SortExpression="noemployees" />
                <asp:BoundField DataField="weburl" HeaderText="weburl" SortExpression="weburl" />
                <asp:BoundField DataField="comptype" HeaderText="comptype" SortExpression="comptype" />
                <asp:BoundField DataField="estdyear" HeaderText="estdyear" SortExpression="estdyear" />
            </Fields>
        </asp:DetailsView>
        &nbsp;</p>
    <p>
        
        <asp:HyperLink ID="HyperLink1" runat="server" >Jobs Posted By This Company</asp:HyperLink>
    </p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobsConnectionString5 %>"
        SelectCommand="SELECT * FROM [employers] WHERE ([uname] = @uname)">
        <SelectParameters>
            <asp:QueryStringParameter Name="uname" QueryStringField="uname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    
</asp:Content>

