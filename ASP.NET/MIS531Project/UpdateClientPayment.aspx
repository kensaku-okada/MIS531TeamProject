﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateClientPayment.aspx.cs" Inherits="UpdateClientPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">Update Client Payment</font></h1>
    <p>
        <font size="5">Update or delete data on MONEY_RECEIVED table.</font></p>
    <p>
        Update or delete the infromation of the payemnt which Elite received from clients</p>
        
    <p>Before fill in the data here, please input in PAYMENT page and put the same PAYMENT_ID.<br/>
        You can check the payment ID on "View Payment" page. <br/>
    </p>
    <p>In "WITHHELD_TAX_PAID_BY", input only Client or Elite.</p>
    <p>
        <asp:DropDownList ID="UpdateMoneyReceivedDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdateMoneyReceivedDropDownSQL" DataTextField="PAYMENT_ID" DataValueField="PAYMENT_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UpdateMoneyReceivedDropDownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;MONEY_RECEIVED&quot; ORDER BY &quot;PAYMENT_ID&quot;"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="UpdateMoneyReceivedDetailsView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PAYMENT_ID" DataSourceID="UpdateMoneyReceivedSQL">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="PAID_BILL_AMOUNT" HeaderText="PAID_BILL_AMOUNT" SortExpression="PAID_BILL_AMOUNT" />
                <asp:BoundField DataField="WITHHELD_TAX_AMOUNT" HeaderText="WITHHELD_TAX_AMOUNT" SortExpression="WITHHELD_TAX_AMOUNT" />
                <asp:BoundField DataField="WITHHELD_TAX_PAID_BY" HeaderText="WITHHELD_TAX_PAID_BY" SortExpression="WITHHELD_TAX_PAID_BY" />
                <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" SortExpression="INVOICE_NUMBER" />
                <asp:BoundField DataField="RECEIPT_ID" HeaderText="RECEIPT_ID" SortExpression="RECEIPT_ID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="UpdateMoneyReceivedSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;MONEY_RECEIVED&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;MONEY_RECEIVED&quot; (&quot;PAYMENT_ID&quot;, &quot;PAID_BILL_AMOUNT&quot;, &quot;WITHHELD_TAX_AMOUNT&quot;, &quot;WITHHELD_TAX_PAID_BY&quot;, &quot;INVOICE_NUMBER&quot;, &quot;RECEIPT_ID&quot;) VALUES (:PAYMENT_ID, :PAID_BILL_AMOUNT, :WITHHELD_TAX_AMOUNT, :WITHHELD_TAX_PAID_BY, :INVOICE_NUMBER, :RECEIPT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;MONEY_RECEIVED&quot; WHERE (&quot;PAYMENT_ID&quot; = :PAYMENT_ID) ORDER BY &quot;PAYMENT_ID&quot; DESC" UpdateCommand="UPDATE &quot;MONEY_RECEIVED&quot; SET &quot;PAID_BILL_AMOUNT&quot; = :PAID_BILL_AMOUNT, &quot;WITHHELD_TAX_AMOUNT&quot; = :WITHHELD_TAX_AMOUNT, &quot;WITHHELD_TAX_PAID_BY&quot; = :WITHHELD_TAX_PAID_BY, &quot;INVOICE_NUMBER&quot; = :INVOICE_NUMBER, &quot;RECEIPT_ID&quot; = :RECEIPT_ID WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
                <asp:Parameter Name="PAID_BILL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_TAX_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_TAX_PAID_BY" Type="String" />
                <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
                <asp:Parameter Name="RECEIPT_ID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UpdateMoneyReceivedDropDown" Name="PAYMENT_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PAID_BILL_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_TAX_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="WITHHELD_TAX_PAID_BY" Type="String" />
                <asp:Parameter Name="INVOICE_NUMBER" Type="String" />
                <asp:Parameter Name="RECEIPT_ID" Type="String" />
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p><br/>
    </p>







</asp:Content>
