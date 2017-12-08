<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateBookkeeping.aspx.cs" Inherits="CreateBookkeeping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h1 class="auto-style1"><font size="7" style="text-align: center">Create Bookkeeping</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into BOOKKEEPING table.</div>
    </font>
 
     <br />

    VAT should be chosen from Y (VAT is included) and N (VAT is not included).<br />
&nbsp;
    <asp:DetailsView ID="CreateBookkeepingDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="CreateBookkeepingSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
            <asp:BoundField DataField="VAT" HeaderText="VAT" SortExpression="VAT" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateBookkeepingSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;BOOKKEEPING&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;BOOKKEEPING&quot; (&quot;SERVICE_ID&quot;, &quot;VAT&quot;) VALUES (:SERVICE_ID, :VAT)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;BOOKKEEPING&quot;" UpdateCommand="UPDATE &quot;BOOKKEEPING&quot; SET &quot;VAT&quot; = :VAT WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
        <DeleteParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
            <asp:Parameter Name="VAT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VAT" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

