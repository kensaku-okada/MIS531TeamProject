<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateBonusPay.aspx.cs" Inherits="ViewBonusPay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Bonus</font></h1>
    <font size="5"><div class="tableNameTitle">View or update data on BONUS_PAY table.</div></font> <br />

        The updated bonus pay is overwritten when you automatically calcualte bonuses on "Calculate Bonus" page. <br/>
    <p>

        <asp:GridView ID="ViewUPdateBonusPayGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BONUS_PAY_ID" DataSourceID="ViewUPdateBonusPaySQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BONUS_PAY_ID" HeaderText="BONUS_PAY_ID" ReadOnly="True" SortExpression="BONUS_PAY_ID" />
                <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" SortExpression="SERVICE_ID" />
                <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" SortExpression="INVOICE_NUMBER" />
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                <asp:BoundField DataField="BONUS_AMOUNT" HeaderText="BONUS_AMOUNT" SortExpression="BONUS_AMOUNT" />
                <asp:BoundField DataField="REGISTRATION_SERVICE_FEE" HeaderText="REGISTRATION_SERVICE_FEE" SortExpression="REGISTRATION_SERVICE_FEE" />
                <asp:BoundField DataField="BOOKKEEPING_SERVICE_FEE" HeaderText="BOOKKEEPING_SERVICE_FEE" SortExpression="BOOKKEEPING_SERVICE_FEE" />
                <asp:BoundField DataField="TYPING_FEE" HeaderText="TYPING_FEE" SortExpression="TYPING_FEE" />
                <asp:BoundField DataField="EARNED_DATE" HeaderText="EARNED_DATE" SortExpression="EARNED_DATE" />
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
        <asp:SqlDataSource ID="ViewUPdateBonusPaySQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;BONUS_PAY&quot; ORDER BY &quot;BONUS_PAY_ID&quot;"></asp:SqlDataSource>

    </p>



</asp:Content>

