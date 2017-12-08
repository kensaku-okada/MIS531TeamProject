<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAssurance.aspx.cs" Inherits="CreateAssurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Create Assurance</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into ASSURANCES table.</div></font> <br />
 
    ASSURANCE_TYPE should be chosen from audit, tax, special, and review.
    
     <br />
    
     <br />

    <asp:DetailsView ID="CreateAssuranceDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="CreateAssuranceSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
            <asp:BoundField DataField="ASSURANCE_TYPE" HeaderText="ASSURANCE_TYPE" SortExpression="ASSURANCE_TYPE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateAssuranceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;ASSURANCES&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;ASSURANCES&quot; (&quot;SERVICE_ID&quot;, &quot;ASSURANCE_TYPE&quot;) VALUES (:SERVICE_ID, :ASSURANCE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;ASSURANCES&quot;" UpdateCommand="UPDATE &quot;ASSURANCES&quot; SET &quot;ASSURANCE_TYPE&quot; = :ASSURANCE_TYPE WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
        <DeleteParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
            <asp:Parameter Name="ASSURANCE_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ASSURANCE_TYPE" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

