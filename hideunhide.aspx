<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="hideunhide.aspx.cs" Inherits="hideunhide" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Change Status<p>
        <asp:Label ID="lblStatus" runat="server" ></asp:Label>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnChange" runat="server" Text="Change Status" OnClick="btnChange_Click" />
        &nbsp;</p>
    <p>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        &nbsp;</p>
</asp:Content>

