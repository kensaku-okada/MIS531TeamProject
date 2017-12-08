<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalcTaxableRevenue.aspx.cs" Inherits="CalcTaxtableIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Calculate taxable Revenue</font></h1>
    <p>&nbsp;Calculate the annual taxable revenue of Elite (money_received (amount Elite received from its client) - external_payment (amount Elite paid)) &nbsp;</p>


    Year<br />


    <asp:TextBox ID="CalcTaxtableRevenueYearTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp;&nbsp;
    <asp:Button ID="CalcTaxtableIncomeButton" runat="server" Text="Calculate" OnClick="CalcTaxtableIncomeButton_Click" style="height: 29px" />



 

    <br />

    <asp:SqlDataSource ID="calculateAnnualTaxableRevenueProcedure" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="CALCULATEANNUALTAXABLEREVENUE" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="CalcTaxtableRevenueYearTextBox" Name="RYEAR" PropertyName="Text" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>

 



    <br />
    <asp:GridView ID="annual_taxable_income_resultGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="annual_taxable_income_resultSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EARNED_YEAR" HeaderText="EARNED_YEAR" SortExpression="EARNED_YEAR" />
            <asp:BoundField DataField="TAXABLE_INCOME" HeaderText="TAXABLE_INCOME" SortExpression="TAXABLE_INCOME" />
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
    <asp:SqlDataSource ID="annual_taxable_income_resultSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANNUAL_TAXABLE_INCOME_RESULT&quot;"></asp:SqlDataSource>
    <br />

     



</asp:Content>

