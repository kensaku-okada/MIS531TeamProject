<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateInvoice.aspx.cs" Inherits="CreateInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 class="auto-style1">Create Invoice</h1>
        <p class="auto-style1">&nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">&nbsp;</p>
        <p class="auto-style1">&nbsp;</p>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="CALCULATE_WITHHELD_TAX" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="01-Jan-2017" Name="DUE_DATE" PropertyName="SelectedValue" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style1">&nbsp;</p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="INVOICE_NUMBER" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" ReadOnly="True" SortExpression="INVOICE_NUMBER" />
                <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
                <asp:BoundField DataField="DUE_DATE" HeaderText="DUE_DATE" SortExpression="DUE_DATE" />
                <asp:BoundField DataField="BILL_AMOUNT" HeaderText="BILL_AMOUNT" SortExpression="BILL_AMOUNT" />
                <asp:BoundField DataField="DISBURSEMENT_AMOUNT" HeaderText="DISBURSEMENT_AMOUNT" SortExpression="DISBURSEMENT_AMOUNT" />
                <asp:BoundField DataField="TYPING_FEE" HeaderText="TYPING_FEE" SortExpression="TYPING_FEE" />
                <asp:BoundField DataField="WITHHELD_INCOME_TAX" HeaderText="WITHHELD_INCOME_TAX" SortExpression="WITHHELD_INCOME_TAX" />
                <asp:BoundField DataField="TOTAL_AMOUNT" HeaderText="TOTAL_AMOUNT" SortExpression="TOTAL_AMOUNT" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
                <asp:BoundField DataField="BILLING_ADDRESS" HeaderText="BILLING_ADDRESS" SortExpression="BILLING_ADDRESS" />
                <asp:BoundField DataField="PAID_OR_NOT" HeaderText="PAID_OR_NOT" SortExpression="PAID_OR_NOT" />
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;INVOICES&quot; WHERE &quot;INVOICE_NUMBER&quot; = :INVOICE_NUMBER" InsertCommand="INSERT INTO &quot;INVOICES&quot; (&quot;INVOICE_NUMBER&quot;, &quot;ISSUE_DATE&quot;, &quot;DUE_DATE&quot;, &quot;BILL_AMOUNT&quot;, &quot;DISBURSEMENT_AMOUNT&quot;, &quot;TYPING_FEE&quot;, &quot;WITHHELD_INCOME_TAX&quot;, &quot;TOTAL_AMOUNT&quot;, &quot;DESCRIPTION&quot;, &quot;BILLING_ADDRESS&quot;, &quot;PAID_OR_NOT&quot;, &quot;EMP_ID&quot;, &quot;CLIENT_ID&quot;) VALUES (:INVOICE_NUMBER, :ISSUE_DATE, :DUE_DATE, :BILL_AMOUNT, :DISBURSEMENT_AMOUNT, :TYPING_FEE, :WITHHELD_INCOME_TAX, :TOTAL_AMOUNT, :DESCRIPTION, :BILLING_ADDRESS, :PAID_OR_NOT, :EMP_ID, :CLIENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;INVOICES&quot;" UpdateCommand="UPDATE &quot;INVOICES&quot; SET &quot;ISSUE_DATE&quot; = :ISSUE_DATE, &quot;DUE_DATE&quot; = :DUE_DATE, &quot;BILL_AMOUNT&quot; = :BILL_AMOUNT, &quot;DISBURSEMENT_AMOUNT&quot; = :DISBURSEMENT_AMOUNT, &quot;TYPING_FEE&quot; = :TYPING_FEE, &quot;WITHHELD_INCOME_TAX&quot; = :WITHHELD_INCOME_TAX, &quot;TOTAL_AMOUNT&quot; = :TOTAL_AMOUNT, &quot;DESCRIPTION&quot; = :DESCRIPTION, &quot;BILLING_ADDRESS&quot; = :BILLING_ADDRESS, &quot;PAID_OR_NOT&quot; = :PAID_OR_NOT, &quot;EMP_ID&quot; = :EMP_ID, &quot;CLIENT_ID&quot; = :CLIENT_ID WHERE &quot;INVOICE_NUMBER&quot; = :INVOICE_NUMBER">
            <DeleteParameters>
                <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
                <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
                <asp:Parameter Name="DUE_DATE" Type="DateTime" />
                <asp:Parameter Name="BILL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="DISBURSEMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="TYPING_FEE" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_INCOME_TAX" Type="Decimal" />
                <asp:Parameter Name="TOTAL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="DESCRIPTION" Type="String" />
                <asp:Parameter Name="BILLING_ADDRESS" Type="String" />
                <asp:Parameter Name="PAID_OR_NOT" Type="Decimal" />
                <asp:Parameter Name="EMP_ID" Type="String" />
                <asp:Parameter Name="CLIENT_ID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
                <asp:Parameter Name="DUE_DATE" Type="DateTime" />
                <asp:Parameter Name="BILL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="DISBURSEMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="TYPING_FEE" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_INCOME_TAX" Type="Decimal" />
                <asp:Parameter Name="TOTAL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="DESCRIPTION" Type="String" />
                <asp:Parameter Name="BILLING_ADDRESS" Type="String" />
                <asp:Parameter Name="PAID_OR_NOT" Type="Decimal" />
                <asp:Parameter Name="EMP_ID" Type="String" />
                <asp:Parameter Name="CLIENT_ID" Type="String" />
                <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p class="auto-style1">&nbsp;</p>



</asp:Content>

