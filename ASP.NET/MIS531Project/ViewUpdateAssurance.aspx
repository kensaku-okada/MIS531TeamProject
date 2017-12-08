<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateAssurance.aspx.cs" Inherits="ViewUpdateAssurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Assurance</font></h1>
    <font size="5"><div class="tableNameTitle">View or Update data on ASSURANCES table.</div></font> <br />
 
    ASSURANCE_TYPE should be chosen from audit, tax, special, and review.
    
     <br />

    <asp:GridView ID="ViewUpadateAssuranceGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="ViewUpadateAssuranceSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
            <asp:BoundField DataField="ASSURANCE_TYPE" HeaderText="ASSURANCE_TYPE" SortExpression="ASSURANCE_TYPE" />
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
    <asp:SqlDataSource ID="ViewUpadateAssuranceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;ASSURANCES&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;ASSURANCES&quot; (&quot;SERVICE_ID&quot;, &quot;ASSURANCE_TYPE&quot;) VALUES (:SERVICE_ID, :ASSURANCE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;ASSURANCES&quot; ORDER BY &quot;SERVICE_ID&quot;" UpdateCommand="UPDATE &quot;ASSURANCES&quot; SET &quot;ASSURANCE_TYPE&quot; = :ASSURANCE_TYPE WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
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

