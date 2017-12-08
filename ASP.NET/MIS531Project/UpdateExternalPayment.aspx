<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateExternalPayment.aspx.cs" Inherits="UpdateExternalPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1 class="auto-style1"><font size="7">Update External Payment</font></h1>
     <font size="5">
     <div class="tableNameTitle">&nbsp;Update data on EXTERNAL_PAYMENTS table.</div>
     </font> <br />
        
    <p>update or delete payment data to the external agencies from Elite<br/>
        PAYMENT_ID has to be generated at Create Payment Out page before inputing here. <br/>
        MONEY_RECEIVED_ID is the payment ID associated with this payment.<br/>
        EA_ID is the extrenal agency ID.          
    </p>

    <asp:DropDownList ID="UpdateExternalPaymentPaymentIDDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdateExternalPaymentPaymentIDDropDownSQL" DataTextField="PAYMENT_ID" DataValueField="PAYMENT_ID"></asp:DropDownList>
    <asp:SqlDataSource ID="UpdateExternalPaymentPaymentIDDropDownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PAYMENT_ID&quot; FROM &quot;EXTERNAL_PAYMENTS&quot; ORDER BY &quot;PAYMENT_ID&quot;"></asp:SqlDataSource>

     <br />
     <asp:DetailsView ID="UpdateExternalPaymentPaymentDetailsView" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="UpdateExternalPaymentSQL" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px">
         <AlternatingRowStyle BackColor="White" />
         <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
         <EditRowStyle BackColor="#7C6F57" />
         <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
         <Fields>
             <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
             <asp:BoundField DataField="VAT_AMOUNT" HeaderText="VAT_AMOUNT" SortExpression="VAT_AMOUNT" />
             <asp:BoundField DataField="EA_ID" HeaderText="EA_ID" SortExpression="EA_ID" />
             <asp:BoundField DataField="MONEY_RECEIVED_ID" HeaderText="MONEY_RECEIVED_ID" SortExpression="MONEY_RECEIVED_ID" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
         </Fields>
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" />
     </asp:DetailsView>
    <asp:SqlDataSource ID="UpdateExternalPaymentSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EXTERNAL_PAYMENTS&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;EXTERNAL_PAYMENTS&quot; (&quot;PAYMENT_ID&quot;, &quot;VAT_AMOUNT&quot;, &quot;EA_ID&quot;, &quot;MONEY_RECEIVED_ID&quot;) VALUES (:PAYMENT_ID, :VAT_AMOUNT, :EA_ID, :MONEY_RECEIVED_ID)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EXTERNAL_PAYMENTS&quot; WHERE (&quot;PAYMENT_ID&quot; = :PAYMENT_ID) ORDER BY &quot;PAYMENT_ID&quot; DESC" UpdateCommand="UPDATE &quot;EXTERNAL_PAYMENTS&quot; SET &quot;VAT_AMOUNT&quot; = :VAT_AMOUNT, &quot;EA_ID&quot; = :EA_ID, &quot;MONEY_RECEIVED_ID&quot; = :MONEY_RECEIVED_ID WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="PAYMENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PAYMENT_ID" Type="String" />
            <asp:Parameter Name="VAT_AMOUNT" Type="Decimal" />
            <asp:Parameter Name="EA_ID" Type="String" />
            <asp:Parameter Name="MONEY_RECEIVED_ID" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="UpdateExternalPaymentPaymentIDDropDown" Name="PAYMENT_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="VAT_AMOUNT" Type="Decimal" />
            <asp:Parameter Name="EA_ID" Type="String" />
            <asp:Parameter Name="MONEY_RECEIVED_ID" Type="String" />
            <asp:Parameter Name="PAYMENT_ID" Type="String" />
        </UpdateParameters>
     </asp:SqlDataSource>

</asp:Content>


