<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateExternalAgency.aspx.cs" Inherits="CreateExternalAgency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Create External Agency</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into EXTERNAL_AGENCIES table.</div>
    </font> 
        
    <p>Insert the new external agency data by clicking &quot; New &quot; under the table. 
    </p>

    <asp:DetailsView ID="CreateExternalAgencySQLDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EA_ID" DataSourceID="CreateExternalAgencySQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EA_ID" HeaderText="EA_ID" ReadOnly="True" SortExpression="EA_ID" />
            <asp:BoundField DataField="EA_NAME" HeaderText="EA_NAME" SortExpression="EA_NAME" />
            <asp:BoundField DataField="EA_PHONE" HeaderText="EA_PHONE" SortExpression="EA_PHONE" />
            <asp:BoundField DataField="EA_EMAIL" HeaderText="EA_EMAIL" SortExpression="EA_EMAIL" />
            <asp:BoundField DataField="EA_ADDRESS" HeaderText="EA_ADDRESS" SortExpression="EA_ADDRESS" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateExternalAgencySQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EXTERNAL_AGENCIES&quot; WHERE &quot;EA_ID&quot; = :EA_ID" InsertCommand="INSERT INTO &quot;EXTERNAL_AGENCIES&quot; (&quot;EA_ID&quot;, &quot;EA_NAME&quot;, &quot;EA_PHONE&quot;, &quot;EA_EMAIL&quot;, &quot;EA_ADDRESS&quot;) VALUES (:EA_ID, :EA_NAME, :EA_PHONE, :EA_EMAIL, :EA_ADDRESS)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EXTERNAL_AGENCIES&quot;" UpdateCommand="UPDATE &quot;EXTERNAL_AGENCIES&quot; SET &quot;EA_NAME&quot; = :EA_NAME, &quot;EA_PHONE&quot; = :EA_PHONE, &quot;EA_EMAIL&quot; = :EA_EMAIL, &quot;EA_ADDRESS&quot; = :EA_ADDRESS WHERE &quot;EA_ID&quot; = :EA_ID">
        <DeleteParameters>
            <asp:Parameter Name="EA_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EA_ID" Type="String" />
            <asp:Parameter Name="EA_NAME" Type="String" />
            <asp:Parameter Name="EA_PHONE" Type="String" />
            <asp:Parameter Name="EA_EMAIL" Type="String" />
            <asp:Parameter Name="EA_ADDRESS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EA_NAME" Type="String" />
            <asp:Parameter Name="EA_PHONE" Type="String" />
            <asp:Parameter Name="EA_EMAIL" Type="String" />
            <asp:Parameter Name="EA_ADDRESS" Type="String" />
            <asp:Parameter Name="EA_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>

