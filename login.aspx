<%@ Page Language="C#" MasterPageFile="~/all.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="height: 307px" width="50%">
                <h3>
                    Login</h3>
                <br />
                <table>
                    <tr>
                        <td>
                            User name
                        </td>
                        <td>
                            <asp:TextBox ID="txtUname" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname"
                                ErrorMessage="Username is missing!"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr >
                        <td>
                            Password 
                        </td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                ErrorMessage="Password is missing!"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="64px" OnClick="btnLogin_Click" /><br />
                <br />
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
                <br />
                <a href="forgotpassword.aspx">Forgot Password?</a>
                <p>
                </p>
                <a href="register.aspx">New user? Sign In!</a>
            </td>
            <td style="height: 307px">
                Your search for job has come to an end with this website.
                <p>
                    This site offers the following features:
                </p>
                <ul>
                    <li>Searching of 100000 resumes</li></ul>
                <p>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/example7.jpg" /></p>
            </td>
        </tr>
    </table>
</asp:Content>

