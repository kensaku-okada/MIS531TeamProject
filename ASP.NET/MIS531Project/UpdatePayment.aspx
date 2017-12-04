<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePayment.aspx.cs" Inherits="UpdatePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">Update Payment</font></h1>
    <p>
        <font size="5">Update/Delete data into PAYMENT table.</font></p>
    <p>
        Update or delete the infromation of the any payemnt which Elite receive or pay 
    </p>
    <p>
        Payment ID<br/>
        <asp:DropDownList ID="UpdatePaymentDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdatePaymentDropdownSQL" DataTextField="PAYMENT_ID" DataValueField="PAYMENT_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="UpdatePaymentDropdownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;PAYMENTS&quot; ORDER BY &quot;PAYMENT_ID&quot;"></asp:SqlDataSource>
        </br>
    </p>
    <p>
    
        <asp:DetailsView ID="UpdatePaymentDetailsView" runat="server" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PAYMENT_ID" DataSourceID="UpdatePaymentSQL" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                <asp:BoundField DataField="PAYMENT_AMOUNT" HeaderText="PAYMENT_AMOUNT" SortExpression="PAYMENT_AMOUNT" />
                <asp:BoundField DataField="PAYMENT_DESCRIPTION" HeaderText="PAYMENT_DESCRIPTION" SortExpression="PAYMENT_DESCRIPTION" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="UpdatePaymentSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PAYMENTS&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;PAYMENTS&quot; (&quot;PAYMENT_ID&quot;, &quot;PAYMENT_DATE&quot;, &quot;PAYMENT_AMOUNT&quot;, &quot;PAYMENT_DESCRIPTION&quot;) VALUES (:PAYMENT_ID, :PAYMENT_DATE, :PAYMENT_AMOUNT, :PAYMENT_DESCRIPTION)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENTS&quot; WHERE (&quot;PAYMENT_ID&quot; = :PAYMENT_ID) ORDER BY &quot;PAYMENT_ID&quot;" UpdateCommand="UPDATE &quot;PAYMENTS&quot; SET &quot;PAYMENT_DATE&quot; = :PAYMENT_DATE, &quot;PAYMENT_AMOUNT&quot; = :PAYMENT_AMOUNT, &quot;PAYMENT_DESCRIPTION&quot; = :PAYMENT_DESCRIPTION WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
                <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="PAYMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="PAYMENT_DESCRIPTION" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UpdatePaymentDropDown" Name="PAYMENT_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="PAYMENT_AMOUNT" Type="Decimal" />
                <asp:Parameter Name="PAYMENT_DESCRIPTION" Type="String" />
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>





</asp:Content>

