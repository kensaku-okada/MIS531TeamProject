<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPaymentOut.aspx.cs" Inherits="ViewPaymentOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1 class="auto-style1"><font size="7">View Payment Out</font></h1>
    <font size="5"><div class="tableNameTitle">View data on PAYMENT_OUT table.</div></font> <br />
        
    <p>
        <asp:GridView ID="ViewPaymentOutGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="ViewPaymentOutSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="OWN_EXPENDITURE" HeaderText="OWN_EXPENDITURE" SortExpression="OWN_EXPENDITURE" />
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
        <asp:SqlDataSource ID="ViewPaymentOutSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PAYMENT_OUT&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;PAYMENT_OUT&quot; (&quot;PAYMENT_ID&quot;, &quot;OWN_EXPENDITURE&quot;) VALUES (:PAYMENT_ID, :OWN_EXPENDITURE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENT_OUT&quot; ORDER BY &quot;PAYMENT_ID&quot;" UpdateCommand="UPDATE &quot;PAYMENT_OUT&quot; SET &quot;OWN_EXPENDITURE&quot; = :OWN_EXPENDITURE WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
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

