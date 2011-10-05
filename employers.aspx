<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="employers.aspx.cs" Inherits="employers" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Employers
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CaptionAlign="Left" DataSourceID="SqlDataSource1" DataKeyNames="uname"
        PageSize="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <Columns>
          <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname"
                Visible="False" />
            <asp:BoundField DataField="compname" HeaderText="compname" SortExpression="compname" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="noemployees" HeaderText="noemployees" SortExpression="noemployees" />
            <asp:BoundField DataField="weburl" HeaderText="weburl" SortExpression="weburl" />
            <asp:BoundField DataField="comptype" HeaderText="comptype" SortExpression="comptype" />
            <asp:BoundField DataField="estdyear" HeaderText="estdyear" SortExpression="estdyear" />
        </Columns>
        <SelectedRowStyle BackColor="Gray" />
    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobsConnectionString2 %>"
        SelectCommand="SELECT * FROM [employers]"></asp:SqlDataSource>
    <h3>
        Jobs</h3>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="jobid"
        DataSourceID="SqlDataSource2" >
         <Columns>
            <asp:BoundField DataField="jobid" HeaderText="jobid" ReadOnly="True" SortExpression="jobid" />
            <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="expreq" HeaderText="expreq" SortExpression="expreq" />
            <asp:BoundField DataField="minsal" HeaderText="minsal" SortExpression="minsal" />
            <asp:BoundField DataField="skillsreq" HeaderText="skillsreq" SortExpression="skillsreq" />
            <asp:BoundField DataField="dpost" HeaderText="dpost" SortExpression="dpost" />
        </Columns>
    </asp:GridView>
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobsConnectionString3 %>" 
    SelectCommand="SELECT [jobid], [jobtitle], [location], [expreq], [minsal], [skillsreq], [dpost] FROM [jobs] WHERE ([uname] = @uname)">
       <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="uname" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   
       
    
    <br />
</asp:Content>

