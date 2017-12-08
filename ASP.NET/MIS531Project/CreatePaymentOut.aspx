<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreatePaymentOut.aspx.cs" Inherits="CreatePaymentOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1 class="auto-style1"><font size="7">Create Payment Out</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into PAYMENT_OUT table.</div></font> <br />
        
    <p>Insert the new payment data (money transer to outer organizations from Elite)by clicking &quot;New&quot; under the table.<br/>
        The PAYMENT ID has to be generated at Create Payment page before registering here. <br/>
        OWN_EXPENDITURE has to be filled in by Y (yes: ) or N (no: ).
        
    </p>
    <p>
        <asp:DetailsView ID="CreatePaymentOutDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="CreatePaymentOutSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="OWN_EXPENDITURE" HeaderText="OWN_EXPENDITURE" SortExpression="OWN_EXPENDITURE" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="CreatePaymentOutSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PAYMENT_OUT&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;PAYMENT_OUT&quot; (&quot;PAYMENT_ID&quot;, &quot;OWN_EXPENDITURE&quot;) VALUES (:PAYMENT_ID, :OWN_EXPENDITURE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENT_OUT&quot; ORDER BY &quot;PAYMENT_ID&quot; DESC" UpdateCommand="UPDATE &quot;PAYMENT_OUT&quot; SET &quot;OWN_EXPENDITURE&quot; = :OWN_EXPENDITURE WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
                <asp:Parameter Name="OWN_EXPENDITURE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OWN_EXPENDITURE" Type="String" />
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>


</asp:Content>

