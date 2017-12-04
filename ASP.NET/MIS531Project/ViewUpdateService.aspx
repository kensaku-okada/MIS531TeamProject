<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateService.aspx.cs" Inherits="ViewUpdateService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Service</font></h1>
    <p>
        View or update the serivces
    </p>

        <asp:GridView ID="ViewUpdateServiceGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="ViewUpdateServiceSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
                <asp:BoundField DataField="SERVICE_NAME" HeaderText="SERVICE_NAME" SortExpression="SERVICE_NAME" />
                <asp:BoundField DataField="SERVICE_TYPE" HeaderText="SERVICE_TYPE" SortExpression="SERVICE_TYPE" />
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
        <asp:SqlDataSource ID="ViewUpdateServiceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;SERVICES&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;SERVICES&quot; (&quot;SERVICE_ID&quot;, &quot;SERVICE_NAME&quot;, &quot;SERVICE_TYPE&quot;) VALUES (:SERVICE_ID, :SERVICE_NAME, :SERVICE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;SERVICES&quot; ORDER BY &quot;SERVICE_ID&quot;" UpdateCommand="UPDATE &quot;SERVICES&quot; SET &quot;SERVICE_NAME&quot; = :SERVICE_NAME, &quot;SERVICE_TYPE&quot; = :SERVICE_TYPE WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
            <DeleteParameters>
                <asp:Parameter Name="SERVICE_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SERVICE_ID" Type="String" />
                <asp:Parameter Name="SERVICE_NAME" Type="String" />
                <asp:Parameter Name="SERVICE_TYPE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SERVICE_NAME" Type="String" />
                <asp:Parameter Name="SERVICE_TYPE" Type="String" />
                <asp:Parameter Name="SERVICE_ID" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>

    <br />

</asp:Content>

