<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Contact_Us, App_Web_fna2rchp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.a { vertical-align:text-top; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
                    <tr>
                        <td colspan="2">
                            :: Give Your FeedBack ::</td>
                    </tr>
                    <tr>
                        <td>
                            Name:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Small"
                            ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            E-mail ID:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="181px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Small"
                            ControlToValidate="TextBox2" ErrorMessage="Enter Email" 
                            ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Size="Small"
                                ControlToValidate="TextBox2" ErrorMessage="Not Valid! (abc@gmail.com)" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact no:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="181px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Small"
                            ControlToValidate="TextBox3" ErrorMessage="Enter Your Contact no" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top;">
                            Message:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="60px" 
                                Width="181px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="Small"
                            ControlToValidate="TextBox4" ErrorMessage="Enter Feedback" ForeColor="Red" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbl_fdbk" runat="server" ForeColor="#2A738E"></asp:Label>
                        </td>
                    </tr>
                    </table>
</asp:Content>

