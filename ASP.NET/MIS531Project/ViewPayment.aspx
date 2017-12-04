<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPayment.aspx.cs" Inherits="ViewPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">View Payment</font></h1>
    <p>
        <font size="5">View data in PAYMENT table.</font></p>
    <p>
        View the infromation of the any payemnt which Elite receive or pay 
    </p>
    <p>
        <asp:GridView ID="ViewPaymentGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="ViewPaymentSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                <asp:BoundField DataField="PAYMENT_AMOUNT" HeaderText="PAYMENT_AMOUNT" SortExpression="PAYMENT_AMOUNT" />
                <asp:BoundField DataField="PAYMENT_DESCRIPTION" HeaderText="PAYMENT_DESCRIPTION" SortExpression="PAYMENT_DESCRIPTION" />
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
        <asp:SqlDataSource ID="ViewPaymentSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PAYMENTS&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;PAYMENTS&quot; (&quot;PAYMENT_ID&quot;, &quot;PAYMENT_DATE&quot;, &quot;PAYMENT_AMOUNT&quot;, &quot;PAYMENT_DESCRIPTION&quot;) VALUES (:PAYMENT_ID, :PAYMENT_DATE, :PAYMENT_AMOUNT, :PAYMENT_DESCRIPTION)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENTS&quot; ORDER BY &quot;PAYMENT_ID&quot;" UpdateCommand="UPDATE &quot;PAYMENTS&quot; SET &quot;PAYMENT_DATE&quot; = :PAYMENT_DATE, &quot;PAYMENT_AMOUNT&quot; = :PAYMENT_AMOUNT, &quot;PAYMENT_DESCRIPTION&quot; = :PAYMENT_DESCRIPTION WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
                <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="PAYMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="PAYMENT_DESCRIPTION" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="PAYMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="PAYMENT_DESCRIPTION" Type="String" />
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>




</asp:Content>

