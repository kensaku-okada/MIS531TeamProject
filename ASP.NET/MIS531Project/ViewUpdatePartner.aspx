<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdatePartner.aspx.cs" Inherits="ViewUpdatePartner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Partner</font></h1>
    <font size="5"><div class="tableNameTitle">Update data on PARTNERS table.</div>
    </font>

    Update or delete existing full time employees. <br />
    OWNERSHIP_PERCENTAGE must not be zero. It has to be 0 to 1.0.<br />
    The Unit of INVESTMENT_AMOUNT is New Taiwan Dollar.<br />
    <br />

    <asp:GridView ID="ViewUpdatePartnerGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUpdatePartnerSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="OWNERSHIP_PERCENTAGE" HeaderText="OWNERSHIP_PERCENTAGE" SortExpression="OWNERSHIP_PERCENTAGE" />
            <asp:BoundField DataField="INVESTMENT_AMOUNT" HeaderText="INVESTMENT_AMOUNT" SortExpression="INVESTMENT_AMOUNT" />
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
    <asp:SqlDataSource ID="ViewUpdatePartnerSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PARTNERS&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;PARTNERS&quot; (&quot;EMP_ID&quot;, &quot;OWNERSHIP_PERCENTAGE&quot;, &quot;INVESTMENT_AMOUNT&quot;) VALUES (:EMP_ID, :OWNERSHIP_PERCENTAGE, :INVESTMENT_AMOUNT)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PARTNERS&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;PARTNERS&quot; SET &quot;OWNERSHIP_PERCENTAGE&quot; = :OWNERSHIP_PERCENTAGE, &quot;INVESTMENT_AMOUNT&quot; = :INVESTMENT_AMOUNT WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="OWNERSHIP_PERCENTAGE" Type="Decimal" />
            <asp:Parameter Name="INVESTMENT_AMOUNT" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OWNERSHIP_PERCENTAGE" Type="Decimal" />
            <asp:Parameter Name="INVESTMENT_AMOUNT" Type="Decimal" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>






    <br />






</asp:Content>

