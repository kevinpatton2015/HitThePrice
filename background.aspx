<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="background.aspx.cs" Inherits="background" %>

<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <%if (userId!=null){%>
        <%if (legal){%>
    <form runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
        <Columns>
            <asp:BoundField DataField="txtUserID" HeaderText="txtUserID" ReadOnly="True" SortExpression="txtUserID" />
            <asp:BoundField DataField="txtLoginName" HeaderText="txtLoginName" SortExpression="txtLoginName" />
            <asp:BoundField DataField="txtPwd" HeaderText="txtPwd" SortExpression="txtPwd" />
            <asp:BoundField DataField="txtEmail" HeaderText="txtEmail" SortExpression="txtEmail" />
            <asp:BoundField DataField="txtSecPwd" HeaderText="txtSecPwd" SortExpression="txtSecPwd" />

            <asp:TemplateField  HeaderText="删除">
                <ItemTemplate> 
                    <asp:LinkButton ID="Button2" runat="server" CausesValidation="False" CommandName="delete" Text="删除" CommandArgument='<%# Eval("txtUserID") %> '/> 
                </ItemTemplate> 
            </asp:TemplateField>
        </Columns>

    </asp:GridView>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/userchec.mdb" SelectCommand="SELECT * FROM [user_infor]"></asp:AccessDataSource>
    </form>
    <%} %>
    <%} %>
</asp:Content>
