<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateContract.aspx.cs" Inherits="UpdateContract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <h1 class="auto-style1"><font size="7" style="text-align: center">Update Contract</font></h1>
        <font size="5"><div class="tableNameTitle">Update data into CONTRACTS table.</div>
        </font> 

        <p style="text-align: center">Update the existing Contract data by clicking &quot; Edit &quot; or &quot; Delete &quot; under the table. 
        </p>

        Contract ID<br />

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="UpdateContractDropdownSQL" DataTextField="CONTRACT_ID" DataValueField="CONTRACT_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UpdateContractDropdownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;CONTRACTS&quot; ORDER BY &quot;CONTRACT_ID&quot;"></asp:SqlDataSource>

        <asp:DetailsView ID="UpdateContractDetailsView" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CONTRACT_ID" DataSourceID="UpdateContractSQL" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" ReadOnly="True" SortExpression="CONTRACT_ID" />
                <asp:BoundField DataField="APPROVED" HeaderText="APPROVED" SortExpression="APPROVED" />
                <asp:BoundField DataField="CLIENT_ID" HeaderText="CLIENT_ID" SortExpression="CLIENT_ID" />
                <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="UpdateContractSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CONTRACTS&quot; WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID" InsertCommand="INSERT INTO &quot;CONTRACTS&quot; (&quot;CONTRACT_ID&quot;, &quot;APPROVED&quot;, &quot;CLIENT_ID&quot;, &quot;DETAILS&quot;) VALUES (:CONTRACT_ID, :APPROVED, :CLIENT_ID, :DETAILS)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CONTRACTS&quot; WHERE (&quot;CONTRACT_ID&quot; = :CONTRACT_ID) ORDER BY &quot;CONTRACT_ID&quot; DESC" UpdateCommand="UPDATE &quot;CONTRACTS&quot; SET &quot;APPROVED&quot; = :APPROVED, &quot;CLIENT_ID&quot; = :CLIENT_ID, &quot;DETAILS&quot; = :DETAILS WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID">
            <DeleteParameters>
                <asp:Parameter Name="CONTRACT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CONTRACT_ID" Type="String" />
                <asp:Parameter Name="APPROVED" Type="String" />
                <asp:Parameter Name="CLIENT_ID" Type="String" />
                <asp:Parameter Name="DETAILS" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CONTRACT_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="APPROVED" Type="String" />
                <asp:Parameter Name="CLIENT_ID" Type="String" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="CONTRACT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        

</asp:Content>

