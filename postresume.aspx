<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="postresume.aspx.cs" Inherits="postresume" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Post/Edit &nbsp;Resume<p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uname"
            DataSourceID="SqlDataSource1" DefaultMode="Edit" Style="z-index: 100; left: 314px;
            position: absolute; top: 133px">
            <Fields>
                <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="qual" HeaderText="qual" SortExpression="qual" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="techskills" HeaderText="techskills" SortExpression="techskills" />
                <asp:BoundField DataField="expinyears" HeaderText="expinyears" SortExpression="expinyears" />
                <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
                <asp:BoundField DataField="prefplace" HeaderText="prefplace" SortExpression="prefplace" />
                <asp:BoundField DataField="areaofinterest" HeaderText="areaofinterest" SortExpression="areaofinterest" />
                <asp:BoundField DataField="minsalary" HeaderText="minsalary" SortExpression="minsalary" />
                <asp:CommandField ShowEditButton="True" />
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobsConnectionString %>"
        DeleteCommand="DELETE FROM [jobseekers] WHERE [uname] = @uname" InsertCommand="INSERT INTO [jobseekers] ([uname], [fullname], [qual], [dob], [techskills], [expinyears], [experience], [prefplace], [areaofinterest], [minsalary]) VALUES (@uname, @fullname, @qual, @dob, @techskills, @expinyears, @experience, @prefplace, @areaofinterest, @minsalary)"
        SelectCommand="SELECT * FROM [jobseekers] WHERE ([uname] = @uname)" UpdateCommand="UPDATE [jobseekers] SET [fullname] = @fullname, [qual] = @qual, [dob] = @dob, [techskills] = @techskills, [expinyears] = @expinyears, [experience] = @experience, [prefplace] = @prefplace, [areaofinterest] = @areaofinterest, [minsalary] = @minsalary WHERE [uname] = @uname">
        <DeleteParameters>
            <asp:Parameter Name="uname" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="qual" Type="String" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="techskills" Type="String" />
            <asp:Parameter Name="expinyears" Type="Int32" />
            <asp:Parameter Name="experience" Type="String" />
            <asp:Parameter Name="prefplace" Type="String" />
            <asp:Parameter Name="areaofinterest" Type="String" />
            <asp:Parameter Name="minsalary" Type="Int32" />
            <asp:Parameter Name="uname" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="qual" Type="String" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="techskills" Type="String" />
            <asp:Parameter Name="expinyears" Type="Int32" />
            <asp:Parameter Name="experience" Type="String" />
            <asp:Parameter Name="prefplace" Type="String" />
            <asp:Parameter Name="areaofinterest" Type="String" />
            <asp:Parameter Name="minsalary" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

