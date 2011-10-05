<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="jobseekerslist.aspx.cs" Inherits="jobseekerslist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Job Seekers<p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="uname" DataSourceID="SqlDataSource1"
            Style="z-index: 100; left: 311px; position: absolute; top: 148px">
            <HeaderTemplate>
                <hr />
            </HeaderTemplate>
            <ItemTemplate>
                Fullname :
                <%# Eval("fullname") %>
                Qualification :
                <%# Eval("qual") %>
                <br />
                Tech. Skills:
                <%# Eval("techskills") %>
                Exp. In Years:
                <%# Eval("expinyears") %>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
            <FooterTemplate>
                <hr />
            </FooterTemplate>
        </asp:DataList>
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
    <p>
        &nbsp;</p>
    <!--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobsConnectionString %>"
        SelectCommand="SELECT * FROM [jobseekers]"></asp:SqlDataSource>-->
</asp:Content>

