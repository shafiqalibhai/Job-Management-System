<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="searchjobs.aspx.cs" Inherits="searchjobs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Search Jobs<p>
        Posted After :
        <asp:TextBox ID="txtPostedAfter" runat="server" ></asp:TextBox>
        (mm/dd/yy) and&nbsp; before
        <asp:TextBox ID="txtPostedBefore" runat="server" ></asp:TextBox>
        (mm/dd/yy)<br />
        Technical Skills Required contains : &nbsp;
        <asp:TextBox ID="txtTechskills" runat="server" ></asp:TextBox>
        <br />
        Location of job contains : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
        <br />
        Experience Required&nbsp; From (years) :
        <asp:TextBox ID="txtExpFrom" runat="server" ></asp:TextBox>
        &nbsp; &nbsp;
        to&nbsp;
        <asp:TextBox ID="txtExpTo" runat="server"></asp:TextBox>
        <br />
        Minmum Salary From (per month) &nbsp; &nbsp;<asp:TextBox ID="txtMinFrom" runat="server"></asp:TextBox>
        &nbsp; &nbsp; &nbsp;
        To&nbsp;
        <asp:TextBox ID="txtMinTo" runat="server"></asp:TextBox>
        <br />
        Job Title Contains&nbsp; : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtJobtitle" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Clear Fields</asp:LinkButton>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="jobid" DataNavigateUrlFormatString="jobdetails.aspx?jobid={0}"
                    DataTextField="jobtitle" HeaderText="Job Title" />
                <asp:HyperLinkField DataNavigateUrlFields="uname" DataNavigateUrlFormatString="companydetails.aspx?uname={0}"
                    DataTextField="compname" HeaderText="Company Name" />
                <asp:BoundField DataField="dpost" HeaderText="Posted On" />
                <asp:BoundField DataField="location" HeaderText="Location" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

