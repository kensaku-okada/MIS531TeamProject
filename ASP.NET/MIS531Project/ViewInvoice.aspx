<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewInvoice.aspx.cs" Inherits="ViewInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">View Invoice</font></h1>
    <p>
        <font size="5"><div class="tableNameTitle">Filter paid/unpaid invoices</div></font>
    <p>
        <asp:DropDownList ID="PaidOrNotPaid" runat="server" AutoPostBack="True" DataSourceID="invoicePaidOrNotSQL" DataTextField="PAID_OR_NOT_Word" DataValueField="PAID_OR_NOT" OnSelectedIndexChanged="PaidOrNotPaid_SelectedIndexChanged">
        </asp:DropDownList>

        &nbsp;&nbsp;<asp:Button ID="refreshFilter" runat="server" Text="refresh filter" OnClick="Button1_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:SqlDataSource ID="invoicePaidOrNotSQL" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>"
             SelectCommand="SELECT DISTINCT 
	&quot;PAID_OR_NOT&quot;
	,(case when
		&quot;PAID_OR_NOT&quot; = 'Y' then 'Paid'
	else
		'Not Paid'
	end) as &quot;PAID_OR_NOT_Word&quot;
FROM &quot;INVOICES&quot;
"></asp:SqlDataSource>

        <div id="dateStart"> 
            Issue Date: 
            <asp:TextBox ID="TextBoxIssueDateStart" runat="server" OnTextChanged="TextBoxIssueDateStart_TextChanged"></asp:TextBox>
            <asp:ImageButton ID="TextBoxIssueDateStartIcon" runat="server" ImageUrl="images/calendarIcon.png" width="30px" height="30px" OnClick="TextBoxIssueDateStartIcon_Click" />
            
             &nbsp; ~ &nbsp; 
            <asp:TextBox ID="TextBoxIssueDateEnd" runat="server"></asp:TextBox>
            <asp:ImageButton ID="TextBoxIssueDateEndIcon" runat="server" ImageUrl="images/calendarIcon.png" width="30px" height="30px" OnClick="TextBoxIssueDateEndIcon_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonSearchByIssueDate" runat="server" Text="Search by Issue Date" OnClick="ButtonSearchByIssueDate_Click" /> This filtering function is not working yet...
            
        <asp:Calendar ID="CalendarStartDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="CalendarStartDate_SelectionChanged">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>
    <%--<div id="dateEnd" style="position: relative; left: 400px; margin-top: -213px;">--%>
        <div id="dateEnd">
        <asp:Calendar ID="CalendarEndDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="CalendarEndDate_SelectionChanged">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>

        &nbsp;</p>
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server">

        <%--this does not work. AutoGenerateColumns="False" should be True--%>
         <%--<asp:GridView ID="InvoiceViewNoFilter" runat="server" CellPadding="4" DataSourceID="ViewINvoiceSQL" ForeColor="#333333" GridLines="None" Width="542px" PageSize="15" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="InvoiceViewNoFilter_SelectedIndexChanged" AutoGenerateColumns="False">--%>
        <asp:GridView ID="InvoiceViewNoFilter" runat="server" CellPadding="4" DataSourceID="ViewINvoiceSQL" ForeColor="#333333" GridLines="None" Width="542px" PageSize="50" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="InvoiceViewNoFilter_SelectedIndexChanged" AutoGenerateColumns="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
<%--                <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" SortExpression="INVOICE_NUMBER" />
                <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                <asp:BoundField DataField="Public ID" HeaderText="Public ID" SortExpression="Public ID" />
                <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
                <asp:BoundField DataField="CLIENT_NAME" HeaderText="CLIENT_NAME" SortExpression="CLIENT_NAME" />
                <asp:BoundField DataField="BILL_AMOUNT" HeaderText="BILL_AMOUNT" SortExpression="BILL_AMOUNT" />
                <asp:BoundField DataField="DISBURSEMENT_AMOUNT" HeaderText="DISBURSEMENT_AMOUNT" SortExpression="DISBURSEMENT_AMOUNT" />
                <asp:BoundField DataField="TYPING_FEE" HeaderText="TYPING_FEE" SortExpression="TYPING_FEE" />
                <asp:BoundField DataField="WITHHELD_INCOME_TAX" HeaderText="WITHHELD_INCOME_TAX" SortExpression="WITHHELD_INCOME_TAX" />
                <asp:BoundField DataField="TOTAL_AMOUNT" HeaderText="TOTAL_AMOUNT" SortExpression="TOTAL_AMOUNT" />
                <asp:BoundField DataField="PAID_OR_NOT" HeaderText="PAID_OR_NOT" SortExpression="PAID_OR_NOT" />
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />--%>
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

        <asp:SqlDataSource ID="ViewINvoiceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>"
             SelectCommand=
            "SELECT
	I.INVOICE_NUMBER
	, ISSUE_DATE
	, PAYMENT_DATE
	, COALESCE(com.government_id, ind.ssn) AS &quot;Public ID&quot;
	, C.CLIENT_ID
	, CLIENT_NAME
	, BILL_AMOUNT
	, DISBURSEMENT_AMOUNT
	, TYPING_FEE
	, WITHHELD_INCOME_TAX
	, TOTAL_AMOUNT
	, paid_or_not, e.emp_id, first_name || last_name as &quot;Employee&quot;

    FROM 
	    INVOICES I LEFT OUTER JOIN MONEY_RECEIVED M ON (I.INVOICE_NUMBER = M.INVOICE_NUMBER)
	    LEFT OUTER JOIN PAYMENTS P ON (P.PAYMENT_ID = M.PAYMENT_ID)
	    LEFT OUTER JOIN CLIENTS C ON (I.CLIENT_ID = C.CLIENT_ID)
	    LEFT OUTER JOIN COMPANIES COM ON (C.CLIENT_ID = COM.CLIENT_ID)
	    LEFT OUTER JOIN INDIVIDUALS IND ON (C.CLIENT_ID = IND.CLIENT_ID)
	    LEFT OUTER JOIN EMPLOYEES E ON (I.EMP_ID = E.EMP_ID)
    ORDER BY INVOICE_NUMBER">
        </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <%--<asp:GridView ID="InvoiceViewFiltered" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="INVOICE_NUMBER" DataSourceID="ViewInvoiceSQLFiltered" ForeColor="#333333" GridLines="None" PageSize="15" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="InvoiceViewFiltered_SelectedIndexChanged">--%>
        <asp:GridView ID="InvoiceViewFiltered" runat="server" AutoGenerateColumns="True" CellPadding="4" DataKeyNames="INVOICE_NUMBER" DataSourceID="ViewInvoiceSQLFiltered" ForeColor="#333333" GridLines="None" PageSize="50" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="InvoiceViewFiltered_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
<%--                <asp:CommandField ShowSelectButton="True" />
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
                <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />--%>
                <asp:CommandField ShowSelectButton="True" />
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


        <asp:SqlDataSource ID="ViewInvoiceSQLFiltered" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>"            
             SelectCommand=
            "SELECT
	        I.INVOICE_NUMBER
	        , ISSUE_DATE
	        , PAYMENT_DATE
	        , COALESCE(com.government_id, ind.ssn) AS &quot;Public ID&quot;
	        , C.CLIENT_ID
	        , CLIENT_NAME
	        , BILL_AMOUNT
	        , DISBURSEMENT_AMOUNT
	        , TYPING_FEE
	        , WITHHELD_INCOME_TAX
	        , TOTAL_AMOUNT
	        , paid_or_not, e.emp_id, first_name || last_name as &quot;Employee&quot;

            FROM 
	            INVOICES I LEFT OUTER JOIN MONEY_RECEIVED M ON (I.INVOICE_NUMBER = M.INVOICE_NUMBER)
	            LEFT OUTER JOIN PAYMENTS P ON (P.PAYMENT_ID = M.PAYMENT_ID)
	            LEFT OUTER JOIN CLIENTS C ON (I.CLIENT_ID = C.CLIENT_ID)
	            LEFT OUTER JOIN COMPANIES COM ON (C.CLIENT_ID = COM.CLIENT_ID)
	            LEFT OUTER JOIN INDIVIDUALS IND ON (C.CLIENT_ID = IND.CLIENT_ID)
	            LEFT OUTER JOIN EMPLOYEES E ON (I.EMP_ID = E.EMP_ID)

            WHERE (&quot;PAID_OR_NOT&quot; = :PAID_OR_NOT)

            ORDER BY INVOICE_NUMBER
            "            
            >       
            <SelectParameters>
                <asp:ControlParameter ControlID="PaidOrNotPaid" Name="PAID_OR_NOT" PropertyName="SelectedValue" Type="Char" />
            </SelectParameters>
        </asp:SqlDataSource>


        <br />
        <br />


        <br />


    </asp:Panel>



    <p>
    </p>



</asp:Content>

