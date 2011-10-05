<%@ Page Language="C#" MasterPageFile="~/js.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        Change Password</h3>
    <br />
    <table >
        <tr>
            <td style="height: 23px">
                Old Password :</td>
            <td style="height: 23px">
                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                New Password :</td>
            <td>
                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChange" runat="server" Text="Change Password" OnClick="btnChange_Click" />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

