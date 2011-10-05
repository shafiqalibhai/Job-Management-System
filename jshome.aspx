<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="jshome.aspx.cs" Inherits="jshome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>
        Recently Added Jobs</h4>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" ForeColor="Navy" ></asp:Label>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jobid,uname" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="jobid" DataNavigateUrlFormatString="jobdetails.aspx?jobid={0}"
                    DataTextField="jobtitle" HeaderText="Job Title" />
                <asp:HyperLinkField DataNavigateUrlFields="uname" DataNavigateUrlFormatString="companydetails.aspx?uname={0}"
                    DataTextField="compname" HeaderText="Company Name" />
                <asp:BoundField DataField="jobid" HeaderText="jobid" ReadOnly="True" SortExpression="jobid"
                    Visible="False" />
                <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname"
                    Visible="False" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="dpost" HeaderText="dpost" SortExpression="dpost" />
            </Columns>
            <HeaderStyle BackColor="#FF8000" BorderColor="#FF8000" BorderStyle="Solid" />
            <AlternatingRowStyle BackColor="#C0C0FF" />
        </asp:GridView>
        &nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="background-color: lightgrey">
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobsConnectionString %>"
            SelectCommand="select top 5  jobid, jobtitle, e.uname,compname, j.location , dpost from  jobs j,  employers e where   j.uname = e.uname order by  dpost desc">
        </asp:SqlDataSource>
        &nbsp;</p>
</asp:Content>

