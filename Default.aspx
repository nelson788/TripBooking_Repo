<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_Default, App_Web_kckoqhz0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
                    <tr>
                        <td class="style2">
                            Email-ID:
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                Display="Dynamic" ErrorMessage="Please Enter Email-ID" ForeColor="#DD1A4C"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                                Display="Dynamic" ErrorMessage="Enter Email-ID in proper Format" ForeColor="#DD1A4C"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Password:
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="Must enter Password" ForeColor="#DD196E"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remeber me !" /></td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                            
                            <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" OnClick="Button1_Click" />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                            :: New User? <a href="Register.aspx">Register</a> Here ::
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forget Password?</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="3">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="style1" id="fgpass" runat="server">
        <tr>
            <td class="style10">
                Email-ID:</td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
            &nbsp;-
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
