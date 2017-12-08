<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewReceipt.aspx.cs" Inherits="ViewReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">View Receipt</font></h1>
    <p>
        <font size="5">View data on RECEIPTS table. You can also update/delete data</font></p>
    <p>
        Choose the delivery type from email, express, post and in person. <br />
        The format of issue date is DD-MMM-YYYY (31-Dec-2017).
    </p>

    <asp:GridView ID="ViewReceiptGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RECEIPT_ID" DataSourceID="ViewReceiptSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="RECEIPT_ID" HeaderText="RECEIPT_ID" ReadOnly="True" SortExpression="RECEIPT_ID" />
            <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
            <asp:BoundField DataField="DELIVERY_TYPE" HeaderText="DELIVERY_TYPE" SortExpression="DELIVERY_TYPE" />
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
    <asp:SqlDataSource ID="ViewReceiptSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;RECEIPTS&quot; WHERE &quot;RECEIPT_ID&quot; = :RECEIPT_ID" InsertCommand="INSERT INTO &quot;RECEIPTS&quot; (&quot;RECEIPT_ID&quot;, &quot;ISSUE_DATE&quot;, &quot;DELIVERY_TYPE&quot;) VALUES (:RECEIPT_ID, :ISSUE_DATE, :DELIVERY_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;RECEIPTS&quot; ORDER BY &quot;RECEIPT_ID&quot;" UpdateCommand="UPDATE &quot;RECEIPTS&quot; SET &quot;ISSUE_DATE&quot; = :ISSUE_DATE, &quot;DELIVERY_TYPE&quot; = :DELIVERY_TYPE WHERE &quot;RECEIPT_ID&quot; = :RECEIPT_ID">
        <DeleteParameters>
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
            <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
            <asp:Parameter Name="DELIVERY_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
            <asp:Parameter Name="DELIVERY_TYPE" Type="String" />
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />


</asp:Content>

