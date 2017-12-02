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
    <p> Due date: <asp:TextBox ID="WithHeldTaxIncomeDueDateTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp; <asp:Button ID="CalcWithHeldTaxIncomeButton" runat="server" Text="Calculate" OnClick="CalcWithHeldTaxIncomeButton_Click" /></p>
    <p>
        <asp:GridView ID="WithHeldTaxIncomeGridView" runat="server" HorizontalAlign="Center" OnSelectedIndexChanged="WithHeldTaxIncomeGridView_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" DataSourceID="WithHeldTaxIncomeStoredProcedure">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="WithHeldTaxIncomeStoredProcedure" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="CALCULATE_WITHHELD_TAX" SelectCommandType="StoredProcedure" OnSelecting="WithHeldTaxIncomeStoredProcedure_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="WithHeldTaxIncomeDueDateTextBox" Name="DUE_DATE" PropertyName="Text" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p> 
    </p>
</asp:Content>

