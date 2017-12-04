<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateReceipt.aspx.cs" Inherits="UpdateReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">Update Receipt</font></h1>
    <p>
        <font size="5">Update data on RECEIPTS table.</font></p>
    <p>
        Choose the delivery type from email, express, post and in person. <br />
        The format of issue date is DD-MMM-YYYY (31-Dec-2017).
    </p>

    <asp:DropDownList ID="UpdateReceiptDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdateReceiptDropDownSQL" DataTextField="RECEIPT_ID" DataValueField="RECEIPT_ID"></asp:DropDownList>
    <asp:SqlDataSource ID="UpdateReceiptDropDownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;RECEIPT_ID&quot; FROM &quot;RECEIPTS&quot; ORDER BY &quot;RECEIPT_ID&quot;"></asp:SqlDataSource>


    <asp:DetailsView ID="UpdateReceiptDetailesView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="RECEIPT_ID" DataSourceID="UpdateReceiptDetailesViewSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="RECEIPT_ID" HeaderText="RECEIPT_ID" ReadOnly="True" SortExpression="RECEIPT_ID" />
            <asp:BoundField DataField="ISSUE_DATE" HeaderText="ISSUE_DATE" SortExpression="ISSUE_DATE" />
            <asp:BoundField DataField="DELIVERY_TYPE" HeaderText="DELIVERY_TYPE" SortExpression="DELIVERY_TYPE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="UpdateReceiptDetailesViewSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;RECEIPTS&quot; WHERE &quot;RECEIPT_ID&quot; = :RECEIPT_ID" InsertCommand="INSERT INTO &quot;RECEIPTS&quot; (&quot;RECEIPT_ID&quot;, &quot;ISSUE_DATE&quot;, &quot;DELIVERY_TYPE&quot;) VALUES (:RECEIPT_ID, :ISSUE_DATE, :DELIVERY_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;RECEIPTS&quot; WHERE (&quot;RECEIPT_ID&quot; = :RECEIPT_ID) ORDER BY &quot;RECEIPT_ID&quot; DESC" UpdateCommand="UPDATE &quot;RECEIPTS&quot; SET &quot;ISSUE_DATE&quot; = :ISSUE_DATE, &quot;DELIVERY_TYPE&quot; = :DELIVERY_TYPE WHERE &quot;RECEIPT_ID&quot; = :RECEIPT_ID">
        <DeleteParameters>
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
            <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
            <asp:Parameter Name="DELIVERY_TYPE" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="UpdateReceiptDropDown" Name="RECEIPT_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISSUE_DATE" Type="DateTime" />
            <asp:Parameter Name="DELIVERY_TYPE" Type="String" />
            <asp:Parameter Name="RECEIPT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>




</asp:Content>

