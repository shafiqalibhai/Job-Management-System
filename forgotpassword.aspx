<%@ Page Language="C#" MasterPageFile="~/all.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        Forgot Password?</h3>
    Enter your email address :
    <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 100; left: 178px; position: absolute;
        top: 146px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>

