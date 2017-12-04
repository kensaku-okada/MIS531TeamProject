<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewContract.aspx.cs" Inherits="ViewContract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="auto-style1"><font size="7" style="text-align: center">View Contract</font></h1>
        <font size="5"><div class="tableNameTitle">Shows data in CONTRACTS table.</div>
        </font> 

        <p style="text-align: center">You can also delte or update the data by clicking &quot; Edit &quot; or &quot; Delete &quot; on the left side of the table. 
        </p>
        <p style="text-align: center">
            <asp:GridView ID="ViewContractGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CONTRACT_ID" DataSourceID="ViewContractSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" ReadOnly="True" SortExpression="CONTRACT_ID" />
                    <asp:BoundField DataField="APPROVED" HeaderText="APPROVED" SortExpression="APPROVED" />
                    <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
                    <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
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
            <asp:SqlDataSource ID="ViewContractSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CONTRACTS&quot; WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID" InsertCommand="INSERT INTO &quot;CONTRACTS&quot; (&quot;CONTRACT_ID&quot;, &quot;APPROVED&quot;, &quot;CLIENT_ID&quot;, &quot;DETAILS&quot;) VALUES (:CONTRACT_ID, :APPROVED, :CLIENT_ID, :DETAILS)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CONTRACTS&quot; ORDER BY &quot;CONTRACT_ID&quot;" UpdateCommand="UPDATE &quot;CONTRACTS&quot; SET &quot;APPROVED&quot; = :APPROVED, &quot;CLIENT_ID&quot; = :CLIENT_ID, &quot;DETAILS&quot; = :DETAILS WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
                    <asp:Parameter Name="APPROVED" Type="String" />
                    <asp:Parameter Name="CLIENT_ID" Type="String" />
                    <asp:Parameter Name="DETAILS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="APPROVED" Type="String" />
                    <asp:Parameter Name="CLIENT_ID" Type="String" />
                    <asp:Parameter Name="DETAILS" Type="String" />
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>




</asp:Content>

