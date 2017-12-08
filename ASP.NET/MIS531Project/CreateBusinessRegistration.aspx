<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateBusinessRegistration.aspx.cs" Inherits="CreateBusinessRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h1 class="auto-style1"><font size="7" style="text-align: center">Create Business Registration</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into BUSINESS_REGISTRATIONS table.</div>
    </font>
 
     <br />
        BR_TYPE should be chosen from installation, update, and other.<br />

    <br />

    <asp:DetailsView ID="CreateBusinessRegistrationDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="CreateBusinessRegistrationSQL" ForeColor="#333333" GridLines="None" AllowPaging="True" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
            <asp:BoundField DataField="BR_TYPE" HeaderText="BR_TYPE" SortExpression="BR_TYPE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateBusinessRegistrationSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;BUSINESS_REGISTRATIONS&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;BUSINESS_REGISTRATIONS&quot; (&quot;SERVICE_ID&quot;, &quot;BR_TYPE&quot;) VALUES (:SERVICE_ID, :BR_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;BUSINESS_REGISTRATIONS&quot;" UpdateCommand="UPDATE &quot;BUSINESS_REGISTRATIONS&quot; SET &quot;BR_TYPE&quot; = :BR_TYPE WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
        <DeleteParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
            <asp:Parameter Name="BR_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BR_TYPE" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

