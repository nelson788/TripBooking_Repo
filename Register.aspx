<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Register, App_Web_fna2rchp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style10">
                <tr>
                    <td class="style4">
                        Name:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter your Name" ForeColor="#E3194C"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Contact no:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox3" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Provide Contact Details" 
                            ForeColor="#E3194C"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Email-ID:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox4" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" 
                            ErrorMessage="Enter Email-ID for Login" ForeColor="#E3194C"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" 
                            ErrorMessage="Enter Email in proper Format" ForeColor="#E3194C" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        State:</td>
                    <td class="style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="181px" 
                            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        City:</td>
                    <td class="style8">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="181px">
                        </asp:DropDownList>
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Address:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Please provide Address" 
                            ForeColor="#E3194C"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Password:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox6" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Cnf. Password:</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox7" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style8">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" 
                            onclick="Button1_Click" />
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style8">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
            </table>
</asp:Content>