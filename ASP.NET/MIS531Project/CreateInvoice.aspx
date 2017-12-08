<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateInvoice.aspx.cs" Inherits="CreateInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 class="auto-style1"><font size="7">Create Invoice</font></h1>
        <font size="5"><div class="tableNameTitle">Insert data into INVOICES table.</div></font> <br />
        
        <p>Insert the new invoice data by clicking &quot;New&quot; under the table.<br/>
            The total invoice amount is the total of  bill_amount,  disbursement_amount and typing_fee subtracting - withheld_income_tax <br/>
            For &quot;PAID_OR_NOT&quot;, please filling Y (paid already) or N (not paid yet). <br/>
            The format of ISSUE_DATE and DUE_DATE is DD-MMM-YYYY (e.g. 31-DEC-2017)<br /> 
            Do not fill in partners employee ID but staff&#39;s ID. It will show an error screen. Please insert the data again in this case.

        </p>
        <p style="text-align: center">&nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">

                            <div style="text-align:center">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DetailsView ID="createInvoiceDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="INVOICE_NUMBER" DataSourceID="CreateInvoiceSQL" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px" AllowPaging="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                                    <Fields>
                                        <%--<asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" SortExpression="INVOICE_NUMBER" ReadOnly="True" />--%>
                                        <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
                                        <asp:BoundField DataField="DUE_DATE" HeaderText="DUE_DATE" SortExpression="DUE_DATE" />
                                        <asp:BoundField DataField="BILL_AMOUNT" HeaderText="BILL_AMOUNT" SortExpression="BILL_AMOUNT" />
                                        <asp:BoundField DataField="DISBURSEMENT_AMOUNT" HeaderText="DISBURSEMENT_AMOUNT" SortExpression="DISBURSEMENT_AMOUNT" />
                                        <asp:BoundField DataField="TYPING_FEE" HeaderText="TYPING_FEE" SortExpression="TYPING_FEE" />
                                        <asp:BoundField DataField="WITHHELD_INCOME_TAX" HeaderText="WITHHELD_INCOME_TAX" SortExpression="WITHHELD_INCOME_TAX" />
                                        <%--<asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />--%>
                                        <asp:BoundField DataField="BILLING_ADDRESS" HeaderText="BILLING_ADDRESS" SortExpression="BILLING_ADDRESS" />
                                        <asp:BoundField DataField="PAID_OR_NOT" HeaderText="PAID_OR_NOT" SortExpression="PAID_OR_NOT" />
                                        <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                                        <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
                                        <asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" SortExpression="CONTRACT_ID" />
                                        <asp:CommandField ShowInsertButton="True" />
                                    </Fields>
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:DetailsView>
            </div>
        
            <asp:SqlDataSource ID="CreateInvoiceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;INVOICES&quot; ORDER BY &quot;INVOICE_NUMBER&quot; DESC" DeleteCommand="DELETE FROM &quot;INVOICES&quot; WHERE &quot;INVOICE_NUMBER&quot; = :INVOICE_NUMBER" InsertCommand="INSERT INTO &quot;INVOICES&quot; (&quot;INVOICE_NUMBER&quot;, &quot;ISSUE_DATE&quot;, &quot;DUE_DATE&quot;, &quot;BILL_AMOUNT&quot;, &quot;DISBURSEMENT_AMOUNT&quot;, &quot;TYPING_FEE&quot;, &quot;WITHHELD_INCOME_TAX&quot;, &quot;TOTAL_AMOUNT&quot;, &quot;DESCRIPTION&quot;, &quot;BILLING_ADDRESS&quot;, &quot;PAID_OR_NOT&quot;, &quot;EMP_ID&quot;, &quot;CLIENT_ID&quot;, &quot;CONTRACT_ID&quot;) VALUES (:INVOICE_NUMBER, :ISSUE_DATE, :DUE_DATE, :BILL_AMOUNT, :DISBURSEMENT_AMOUNT, :TYPING_FEE, :WITHHELD_INCOME_TAX, :TOTAL_AMOUNT, :DESCRIPTION, :BILLING_ADDRESS, :PAID_OR_NOT, :EMP_ID, :CLIENT_ID, :CONTRACT_ID)" UpdateCommand="UPDATE &quot;INVOICES&quot; SET &quot;ISSUE_DATE&quot; = :ISSUE_DATE, &quot;DUE_DATE&quot; = :DUE_DATE, &quot;BILL_AMOUNT&quot; = :BILL_AMOUNT, &quot;DISBURSEMENT_AMOUNT&quot; = :DISBURSEMENT_AMOUNT, &quot;TYPING_FEE&quot; = :TYPING_FEE, &quot;WITHHELD_INCOME_TAX&quot; = :WITHHELD_INCOME_TAX, &quot;TOTAL_AMOUNT&quot; = :TOTAL_AMOUNT, &quot;DESCRIPTION&quot; = :DESCRIPTION, &quot;BILLING_ADDRESS&quot; = :BILLING_ADDRESS, &quot;PAID_OR_NOT&quot; = :PAID_OR_NOT, &quot;EMP_ID&quot; = :EMP_ID, &quot;CLIENT_ID&quot; = :CLIENT_ID, &quot;CONTRACT_ID&quot; = :CONTRACT_ID WHERE &quot;INVOICE_NUMBER&quot; = :INVOICE_NUMBER">
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
                    <asp:Parameter Name="PAID_OR_NOT" Type="String" />
                    <asp:Parameter Name="EMP_ID" Type="String" />
                    <asp:Parameter Name="CLIENT_ID" Type="String" />
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
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
                    <asp:Parameter Name="PAID_OR_NOT" Type="String" />
                    <asp:Parameter Name="EMP_ID" Type="String" />
                    <asp:Parameter Name="CLIENT_ID" Type="String" />
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
                    <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />


</asp:Content>

