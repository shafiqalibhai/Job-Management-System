<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="jobdetails.aspx.cs" Inherits="jobdetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Job Details<p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="jobid"
            DataSourceID="SqlDataSource1" Style="z-index: 100; left: 317px; position: absolute;
            top: 130px">
            <Fields>
                <asp:BoundField DataField="jobtitle" HeaderText="Job Title" SortExpression="jobtitle" />
                <asp:HyperLinkField DataNavigateUrlFields="uname" DataNavigateUrlFormatString="companydetails.aspx?uname={0}"
                    DataTextField="compname" HeaderText="Company Name" />
                <asp:BoundField DataField="location" HeaderText="Job Location" SortExpression="location" />
                <asp:BoundField DataField="expreq" HeaderText="Experience Required(years)" SortExpression="expreq" />
                <asp:BoundField DataField="minsal" HeaderText="Min. salary" SortExpression="minsal" />
                <asp:BoundField DataField="maxsal" HeaderText="Max. Salary" SortExpression="maxsal" />
                <asp:BoundField DataField="skillsreq" HeaderText="Skills Req." SortExpression="skillsreq" />
                <asp:BoundField DataField="dpost" HeaderText="Posted On" SortExpression="dpost" />
            </Fields>
        </asp:DetailsView>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobsConnectionString %>"
        SelectCommand="select   j.*, compname&#13;&#10;from  jobs j, employers e&#13;&#10;where  j.uname = e.uname  and  jobid = @jobid">
        <SelectParameters>
            <asp:QueryStringParameter Name="jobid" QueryStringField="jobid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

