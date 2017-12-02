<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateInvoice.aspx.cs" Inherits="ViewUpdateInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 class="auto-style2">View/Update Invoice</h1>
        <p class="auto-style1">
            &nbsp;</p>
        <br />
            <asp:DropDownList ID="PaidOrNotInvoice" runat="server" AutoPostBack="True" DataSourceID="PaidOrNotInvoices" DataTextField="PAID_OR_NOT" DataValueField="PAID_OR_NOT">
            </asp:DropDownList>
        <asp:SqlDataSource ID="PaidOrNotInvoices" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" OnSelecting="PaidOrNotInvoices_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT 
   (case when
      &quot;PAID_OR_NOT&quot; = 0 then 'PAID'
      else 'NOT PAID'
    end)
 FROM &quot;INVOICES&quot;"></asp:SqlDataSource>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <p class="auto-style1">
            <asp:SqlDataSource ID="ViewINVOICES" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT I.INVOICE_NUMBER, ISSUE_DATE, PAYMENT_DATE, 
COALESCE(government_id, ssn) AS &quot;Public ID&quot;, CLIENT_NAME, BILL_AMOUNT, DISBURSEMENT_AMOUNT, TYPING_FEE, WITHHELD_INCOME_TAX, TOTAL_AMOUNT, 
paid_or_not, first_name || last_name as &quot;Employee&quot;
FROM INVOICES I LEFT OUTER JOIN MONEY_RECEIVED M ON (I.INVOICE_NUMBER = M.INVOICE_NUMBER)
LEFT OUTER JOIN PAYMENTS P ON (P.PAYMENT_ID = M.PAYMENT_ID)
LEFT OUTER JOIN CLIENTS C ON (I.CLIENT_ID = C.CLIENT_ID)
LEFT OUTER JOIN COMPANIES COM ON (C.CLIENT_ID = COM.CLIENT_ID)
LEFT OUTER JOIN INDIVIDUALS IND ON (C.CLIENT_ID = IND.CLIENT_ID)
LEFT OUTER JOIN EMPLOYEES E ON (I.EMP_ID = E.EMP_ID)
ORDER BY INVOICE_NUMBER"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="INVOICE_NUMBER" DataSourceID="ViewINVOICES" PageSize="30" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" ReadOnly="True" SortExpression="INVOICE_NUMBER" />
                    <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
                    <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                    <asp:BoundField DataField="Public ID" HeaderText="Public ID" SortExpression="Public ID" />
                    <asp:BoundField DataField="CLIENT_NAME" HeaderText="CLIENT_NAME" SortExpression="CLIENT_NAME" />
                    <asp:BoundField DataField="BILL_AMOUNT" HeaderText="BILL_AMOUNT" SortExpression="BILL_AMOUNT" />
                    <asp:BoundField DataField="DISBURSEMENT_AMOUNT" HeaderText="DISBURSEMENT_AMOUNT" SortExpression="DISBURSEMENT_AMOUNT" />
                    <asp:BoundField DataField="TYPING_FEE" HeaderText="TYPING_FEE" SortExpression="TYPING_FEE" />
                    <asp:BoundField DataField="WITHHELD_INCOME_TAX" HeaderText="WITHHELD_INCOME_TAX" SortExpression="WITHHELD_INCOME_TAX" />
                    <asp:BoundField DataField="TOTAL_AMOUNT" HeaderText="TOTAL_AMOUNT" SortExpression="TOTAL_AMOUNT" />
                    <asp:BoundField DataField="PAID_OR_NOT" HeaderText="PAID_OR_NOT" SortExpression="PAID_OR_NOT" />
                    <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
                </Columns>
            </asp:GridView>
        </p>



</asp:Content>

