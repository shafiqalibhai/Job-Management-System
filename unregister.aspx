<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="unregister.aspx.cs" Inherits="unregister" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Unregistration
    <p>
        If you unregister, your information will be deleted from the database. If you wish
        to continue, click on <strong>Unregister Me</strong> &nbsp;button below.</p>
    <p>
        <asp:Button ID="btnUnregister" runat="server" Text="Unregister Me" OnClick="btnUnregister_Click" />
        &nbsp;</p>
</asp:Content>

