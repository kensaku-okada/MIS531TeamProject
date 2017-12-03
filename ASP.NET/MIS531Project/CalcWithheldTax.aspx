<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalcWithheldTax.aspx.cs" Inherits="CalcWithheldTax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1">Calculate withheld tax</h1>


    <p> Due date: <asp:TextBox ID="WithHeldTaxIncomeDueDateTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp; <asp:Button ID="CalcWithHeldTaxIncomeButton" runat="server" Text="Calculate" OnClick="CalcWithHeldTaxIncomeButton_Click" />
        <asp:SqlDataSource ID="CalculateWithheldtaxStoredProcedure" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="CALCULATE_WITHHELD_TAX" SelectCommandType="StoredProcedure" OnSelecting="CalculateWithheldtaxStoredProcedure_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="WithHeldTaxIncomeDueDateTextBox" Name="DUE_DATE" PropertyName="Text" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p> 
    <asp:Button ID="RefreshWidhheldTaxResult" runat="server" OnClick="RefreshWidhheldTaxResult_Click" Text="Refresh Table" />
    (it does not work. Reload this page by entering the URL.)</p>
    <p>
        <asp:GridView ID="WithHeldTaxGridView" runat="server" HorizontalAlign="Center" OnSelectedIndexChanged="WithHeldTaxIncomeGridView_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" DataSourceID="calculate_withheld_tax_grid_viewSQL" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PAID_YEAR" HeaderText="PAID_YEAR" SortExpression="PAID_YEAR" />
                <asp:BoundField DataField="PAID_MONTH" HeaderText="PAID_MONTH" SortExpression="PAID_MONTH" />
                <asp:BoundField DataField="GOV_ID" HeaderText="GOV_ID" SortExpression="GOV_ID" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="CLIENT_NAME" HeaderText="CLIENT_NAME" SortExpression="CLIENT_NAME" />
                <asp:BoundField DataField="ELITE_PAY" HeaderText="ELITE_PAY" SortExpression="ELITE_PAY" />
                <asp:BoundField DataField="CLIENT_PAY" HeaderText="CLIENT_PAY" SortExpression="CLIENT_PAY" />
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
        <asp:SqlDataSource ID="calculate_withheld_tax_grid_viewSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;WITHHELD_TAX_RESULT&quot;"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p> 
    </p>
</asp:Content>

