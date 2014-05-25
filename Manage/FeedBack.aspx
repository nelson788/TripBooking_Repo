<%@ page title="" language="C#" masterpagefile="~/Manage/MasterPage.master" autoeventwireup="true" inherits="Manage_FeedBack, App_Web_vucqizqf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="fid" onrowdeleting="GridView1_RowDeleting">
        <AlternatingRowStyle HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <Columns>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email ID">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact No">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Feedback Message">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <HeaderStyle 
            HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
    <asp:Label ID="Label5" runat="server"></asp:Label>
</asp:Content>

