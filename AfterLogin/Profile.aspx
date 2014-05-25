<%@ page title="" language="C#" masterpagefile="~/AfterLogin/MasterPage.master" autoeventwireup="true" inherits="AfterLogin_Profile, App_Web_0lhz1bjb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.aa { resize:none; }
.bb { vertical-align:text-top; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" CssClass="table"
                    AutoGenerateRows="False" OnModeChanging="DetailsView1_ModeChanging" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="Horizontal"
                    OnItemUpdating="DetailsView1_ItemUpdating">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Name:">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Width="90px" Text='<%# bind("rname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("rname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact:">
                        <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Width="90px" Text='<%# bind("contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# bind("contact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email-ID:">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location:">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:Label ID="Label10" runat="server" Text='<%# bind("sid") %>' Visible="false"></asp:Label>
                                &nbsp;-
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
                                <asp:Label ID="Label11" runat="server" Text='<%# bind("cid") %>' Visible="false"></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# bind("sname") %>'></asp:Label>
                                &nbsp;-
                                <asp:Label ID="Label8" runat="server" Text='<%# bind("cname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address:" HeaderStyle-CssClass="bb">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox112" runat="server" CssClass="aa" Width="220px" TextMode="MultiLine" Text='<%# bind("adrs") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# bind("adrs") %>'></asp:Label>
                            </ItemTemplate>

<HeaderStyle CssClass="bb"></HeaderStyle>
                        </asp:TemplateField>                        
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td>
                <table cellpadding="5px" class="style1">
                    <tr>
                        <td>
                            Old Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="m"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Enter Old Password" 
                                ForeColor="Red" Display="Dynamic" ValidationGroup="m"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            New Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="m"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="Enter New Password" 
                                ForeColor="Red" Display="Dynamic" ValidationGroup="m"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Cnf. Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="m"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox6" Display="Dynamic" 
                                ErrorMessage="Enter New Password Again" ForeColor="Red" 
                                ValidationGroup="m"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" 
                                ErrorMessage="Value does not Match" ForeColor="Red" ValidationGroup="m"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="Change Password" 
                                onclick="Button1_Click" ValidationGroup="m" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label92" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

