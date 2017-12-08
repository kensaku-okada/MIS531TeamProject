<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateClient.aspx.cs" Inherits="ViewUpdateClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Client</font></h1>
    <p>
        View or update the clients

    </p>

    <asp:GridView ID="ViewUpdateClientGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CLIENT_ID" DataSourceID="ViewUpdateClientSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" ReadOnly="True" SortExpression="CLIENT_ID" />
            <asp:BoundField DataField="CLIENT_NAME" HeaderText="CLIENT_NAME" SortExpression="CLIENT_NAME" />
            <asp:BoundField DataField="CLIENT_ADDRESS" HeaderText="CLIENT_ADDRESS" SortExpression="CLIENT_ADDRESS" />
            <asp:BoundField DataField="CLIENT_EMAIL" HeaderText="CLIENT_EMAIL" SortExpression="CLIENT_EMAIL" />
            <asp:BoundField DataField="CLIENT_PHONE" HeaderText="CLIENT_PHONE" SortExpression="CLIENT_PHONE" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="ViewUpdateClientSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CLIENTS&quot; WHERE &quot;CLIENT_ID&quot; = :CLIENT_ID" InsertCommand="INSERT INTO &quot;CLIENTS&quot; (&quot;CLIENT_ID&quot;, &quot;CLIENT_NAME&quot;, &quot;CLIENT_ADDRESS&quot;, &quot;CLIENT_EMAIL&quot;, &quot;CLIENT_PHONE&quot;) VALUES (:CLIENT_ID, :CLIENT_NAME, :CLIENT_ADDRESS, :CLIENT_EMAIL, :CLIENT_PHONE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLIENTS&quot; ORDER BY &quot;CLIENT_ID&quot;" UpdateCommand="UPDATE &quot;CLIENTS&quot; SET &quot;CLIENT_NAME&quot; = :CLIENT_NAME, &quot;CLIENT_ADDRESS&quot; = :CLIENT_ADDRESS, &quot;CLIENT_EMAIL&quot; = :CLIENT_EMAIL, &quot;CLIENT_PHONE&quot; = :CLIENT_PHONE WHERE &quot;CLIENT_ID&quot; = :CLIENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="CLIENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CLIENT_ID" Type="String" />
            <asp:Parameter Name="CLIENT_NAME" Type="String" />
            <asp:Parameter Name="CLIENT_ADDRESS" Type="String" />
            <asp:Parameter Name="CLIENT_EMAIL" Type="String" />
            <asp:Parameter Name="CLIENT_PHONE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CLIENT_NAME" Type="String" />
            <asp:Parameter Name="CLIENT_ADDRESS" Type="String" />
            <asp:Parameter Name="CLIENT_EMAIL" Type="String" />
            <asp:Parameter Name="CLIENT_PHONE" Type="String" />
            <asp:Parameter Name="CLIENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />


</asp:Content>

