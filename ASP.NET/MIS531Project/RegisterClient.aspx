<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterClient.aspx.cs" Inherits="RegisterClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Register Client</font></h1>
    <p>
        Register new clients.
    </p>
    <p>
        <asp:DetailsView ID="RegisterClientsDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CLIENT_ID" DataSourceID="RegisterClientsSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <%--<asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" ReadOnly="True" SortExpression="CLIENT_ID" />--%>
                <asp:BoundField DataField="CLIENT_NAME" HeaderText="CLIENT_NAME" SortExpression="CLIENT_NAME" />
                <asp:BoundField DataField="CLIENT_ADDRESS" HeaderText="CLIENT_ADDRESS" SortExpression="CLIENT_ADDRESS" />
                <asp:BoundField DataField="CLIENT_EMAIL" HeaderText="CLIENT_EMAIL" SortExpression="CLIENT_EMAIL" />
                <asp:BoundField DataField="CLIENT_PHONE" HeaderText="CLIENT_PHONE" SortExpression="CLIENT_PHONE" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="RegisterClientsSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CLIENTS&quot; WHERE &quot;CLIENT_ID&quot; = :CLIENT_ID" InsertCommand="INSERT INTO &quot;CLIENTS&quot; (&quot;CLIENT_ID&quot;, &quot;CLIENT_NAME&quot;, &quot;CLIENT_ADDRESS&quot;, &quot;CLIENT_EMAIL&quot;, &quot;CLIENT_PHONE&quot;) VALUES (:CLIENT_ID, :CLIENT_NAME, :CLIENT_ADDRESS, :CLIENT_EMAIL, :CLIENT_PHONE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLIENTS&quot;" UpdateCommand="UPDATE &quot;CLIENTS&quot; SET &quot;CLIENT_NAME&quot; = :CLIENT_NAME, &quot;CLIENT_ADDRESS&quot; = :CLIENT_ADDRESS, &quot;CLIENT_EMAIL&quot; = :CLIENT_EMAIL, &quot;CLIENT_PHONE&quot; = :CLIENT_PHONE WHERE &quot;CLIENT_ID&quot; = :CLIENT_ID">
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
    </p>





</asp:Content>

