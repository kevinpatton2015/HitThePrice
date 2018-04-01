<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="background.aspx.cs" Inherits="background" %>

<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="txtUserID" DataSourceID="AccessDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="txtUserID" HeaderText="用户名" ReadOnly="True" SortExpression="txtUserID" />
            <asp:BoundField DataField="txtLoginName" HeaderText="昵称" SortExpression="txtLoginName" />
            <asp:BoundField DataField="txtPwd" HeaderText="密码" SortExpression="txtPwd" />
            <asp:BoundField DataField="txtEmail" HeaderText="邮箱" SortExpression="txtEmail" />
            <asp:BoundField DataField="txtSecPwd" HeaderText="二次密码" SortExpression="txtSecPwd" />
        </Columns>

    </asp:GridView>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/userchec.mdb" SelectCommand="SELECT * FROM [user_infor]"></asp:AccessDataSource>
    </form>
</asp:Content>
