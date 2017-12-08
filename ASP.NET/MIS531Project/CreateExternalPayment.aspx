<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateExternalPayment.aspx.cs" Inherits="CreateExternalPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <h1 class="auto-style1"><font size="7">Create External Payment</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into EXTERNAL_PAYMENTS table.</div></font> <br />
        
    <p>Insert the new payment data to the external agencies from Elite by clicking &quot;New&quot; under the table.<br/>
        The PAYMENT_ID has to be generated at Create Payment Out page before inputing here. <br/>
        The MONEY_RECEIVED_ID is the payment ID associated with this payment.<br/>
        EA_ID is the extrenal agency ID.          

    </p>
         <p>
             <asp:DetailsView ID="CreateExternalPaymentDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="CreateExternalPaymentSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                 <AlternatingRowStyle BackColor="White" />
                 <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                 <EditRowStyle BackColor="#7C6F57" />
                 <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                 <Fields>
                     <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                     <asp:BoundField DataField="VAT_AMOUNT" HeaderText="VAT_AMOUNT" SortExpression="VAT_AMOUNT" />
                     <asp:BoundField DataField="EA_ID" HeaderText="EA_ID" SortExpression="EA_ID" />
                     <asp:BoundField DataField="MONEY_RECEIVED_ID" HeaderText="MONEY_RECEIVED_ID" SortExpression="MONEY_RECEIVED_ID" />
                     <asp:CommandField ShowInsertButton="True" />
                 </Fields>
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
             </asp:DetailsView>
             <asp:SqlDataSource ID="CreateExternalPaymentSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EXTERNAL_PAYMENTS&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;EXTERNAL_PAYMENTS&quot; (&quot;PAYMENT_ID&quot;, &quot;VAT_AMOUNT&quot;, &quot;EA_ID&quot;, &quot;MONEY_RECEIVED_ID&quot;) VALUES (:PAYMENT_ID, :VAT_AMOUNT, :EA_ID, :MONEY_RECEIVED_ID)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EXTERNAL_PAYMENTS&quot; ORDER BY &quot;PAYMENT_ID&quot; DESC" UpdateCommand="UPDATE &quot;EXTERNAL_PAYMENTS&quot; SET &quot;VAT_AMOUNT&quot; = :VAT_AMOUNT, &quot;EA_ID&quot; = :EA_ID, &quot;MONEY_RECEIVED_ID&quot; = :MONEY_RECEIVED_ID WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
                 <DeleteParameters>
                     <asp:Parameter Name="PAYMENT_ID" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="PAYMENT_ID" Type="String" />
                     <asp:Parameter Name="VAT_AMOUNT" Type="Decimal" />
                     <asp:Parameter Name="EA_ID" Type="String" />
                     <asp:Parameter Name="MONEY_RECEIVED_ID" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="VAT_AMOUNT" Type="Decimal" />
                     <asp:Parameter Name="EA_ID" Type="String" />
                     <asp:Parameter Name="MONEY_RECEIVED_ID" Type="String" />
                     <asp:Parameter Name="PAYMENT_ID" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>

         </p>

</asp:Content>

