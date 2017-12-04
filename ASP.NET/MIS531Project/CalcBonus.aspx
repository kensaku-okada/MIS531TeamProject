<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalcBonus.aspx.cs" Inherits="CalcBonus_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1">Calculate Bonus</h1>
    <p>&nbsp;Calculate the quarterly bonus payment to employees &nbsp;</p>
    Year (YYYY)<br />
    <asp:TextBox ID="YearTextBox" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
    <asp:Button ID="CalcQuarterlyBonusButton" runat="server" OnClick="CalcQuarterlyBonusButton_Click" Text="Calculate" />
    <br />
    Quarter (1 to 4)<br />
    <asp:TextBox ID="QuarterTextBox" runat="server"></asp:TextBox>




    <br />
    <asp:SqlDataSource ID="calculate_quarter_bonus_procedure" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="CALCULATE_QUARTER_BONUS" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="YearTextBox" Name="EARNED_Y" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="QuarterTextBox" Name="EARNED_Q" PropertyName="Text" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="quarter_bonus_resultGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="quarter_bonus_resultSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EARNED_YEAR" HeaderText="EARNED_YEAR" SortExpression="EARNED_YEAR" />
            <asp:BoundField DataField="EARNED_QUARTER" HeaderText="EARNED_QUARTER" SortExpression="EARNED_QUARTER" />
            <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
            <asp:BoundField DataField="BONUS_AMOUNT" HeaderText="BONUS_AMOUNT" SortExpression="BONUS_AMOUNT" />
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
    <asp:SqlDataSource ID="quarter_bonus_resultSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;QUARTER_BONUS_RESULT&quot;"></asp:SqlDataSource>




</asp:Content>

