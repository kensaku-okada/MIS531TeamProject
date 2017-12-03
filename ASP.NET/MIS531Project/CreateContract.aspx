<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateContract.aspx.cs" Inherits="CreateContract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="auto-style1"><font size="7" style="text-align: center">Create Contract</font></h1>
        <font size="5"><div class="tableNameTitle">Insert data into CONTRACTS table.</div>
        </font> <br />
        
        <p style="text-align: center">Inser the new invoice data by clicking &quot;New&quot; under the table. 
        </p>

    <p>
        <asp:DetailsView ID="CreateContractDetailedView" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CONTRACT_ID" DataSourceID="CreateConstractSQL" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <%--<asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" ReadOnly="True" SortExpression="CONTRACT_ID" />--%>
                <asp:BoundField DataField="APPROVED" HeaderText="APPROVED" SortExpression="APPROVED" />
                <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
                <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="CreateConstractSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CONTRACTS&quot; WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID" InsertCommand="INSERT INTO &quot;CONTRACTS&quot; (&quot;CONTRACT_ID&quot;, &quot;APPROVED&quot;, &quot;CLIENT_ID&quot;, &quot;DETAILS&quot;) VALUES (:CONTRACT_ID, :APPROVED, :CLIENT_ID, :DETAILS)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CONTRACTS&quot; ORDER BY &quot;CONTRACT_ID&quot; DESC" UpdateCommand="UPDATE &quot;CONTRACTS&quot; SET &quot;APPROVED&quot; = :APPROVED, &quot;CLIENT_ID&quot; = :CLIENT_ID, &quot;DETAILS&quot; = :DETAILS WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID">
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
        &nbsp;</p>
</asp:Content>

