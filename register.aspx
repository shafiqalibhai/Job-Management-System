<%@ Page Language="C#" MasterPageFile="~/all.master"AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    User Registration<br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="vFirst" runat="server">
            <br />
            <table>
                <tr>
                    <td style="width: 100px">
                        User Name :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Password :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="145px"></asp:TextBox>&nbsp;
                        <asp:TextBox ID="hPwd" runat="server" Visible="False" Width="64px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Confirm Password :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password" Width="145px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Email Address:</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtEmail" runat="server" Width="271px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 53px">
                        Address</td>
                    <td style="width: 100px; height: 53px">
                        <asp:TextBox ID="txtAddress" runat="server" Height="48px" TextMode="MultiLine" Width="269px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Phone No.</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        User Type :
                    </td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="ddlUtype" runat="server" Width="154px">
                            <asp:ListItem Value="j">Job Seeker</asp:ListItem>
                            <asp:ListItem Value="e">Employer</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="BtnNext" runat="server" Text="Next" Width="69px" OnClick="BtnNext_Click" />&nbsp;<asp:Button
                ID="Btncancel" runat="server" Text="Cancel" /><br />
            <br />
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label><br />
            <br />
        </asp:View>
        <asp:View ID="vJobseeker" runat="server">
            <table>
                <tr>
                    <td style="width: 100px">
                        Full name :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 26px">
                        Qualification :</td>
                    <td style="width: 100px; height: 26px">
                        <asp:TextBox ID="txtQual" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Date of Birth
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtDob" runat="server" Width="84px"></asp:TextBox>
                        (mm/dd/yy)</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /><br />
            <br />
            <asp:Label ID="lblmsg2" runat="server" Font-Bold="True"></asp:Label><br />
        </asp:View>
        <asp:View ID="vEmployer" runat="server">
            <table>
                <tr>
                    <td style="width: 100px">
                        Company Name :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtCompname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Location :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Web URL :
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtWeburl" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnEmpRegister" runat="server" Text="Register" OnClick="btnEmpRegister_Click" /><br />
        </asp:View>
    </asp:MultiView>
</asp:Content>

