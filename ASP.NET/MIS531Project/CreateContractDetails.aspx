<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateContractDetails.aspx.cs" Inherits="CreateContractDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="auto-style1"><font size="7" style="text-align: center">Create Contract Detail</font></h1>
        <font size="5"><div class="tableNameTitle">Insert data into CONTRACT_DETAILS table.</div>
        </font> 
        
        <p>Insert the new contract detail data (the service information to a contract) by clicking &quot; New &quot; under the table. <br/>
            The format of START_DATE and END_DATE is DD-MMM-YYYY (e.g. 31-Dec-2017). <br/>
            The unit of SERVICE_FEE is New Taiwan Dollar.  
        </p>


        <asp:DetailsView ID="CreateContractDetailDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CONTRACT_ID,SERVICE_ID" DataSourceID="CreateContractDetailSQL" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="125px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" ReadOnly="True" SortExpression="CONTRACT_ID" />
                <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
                <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                <asp:BoundField DataField="SERVICE_FEE" HeaderText="SERVICE_FEE" SortExpression="SERVICE_FEE" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>


    <asp:SqlDataSource ID="CreateContractDetailSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;CONTRACT_DETAILS&quot; WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID AND &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;CONTRACT_DETAILS&quot; (&quot;CONTRACT_ID&quot;, &quot;SERVICE_ID&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;SERVICE_FEE&quot;) VALUES (:CONTRACT_ID, :SERVICE_ID, :START_DATE, :END_DATE, :SERVICE_FEE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CONTRACT_DETAILS&quot;" UpdateCommand="UPDATE &quot;CONTRACT_DETAILS&quot; SET &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;SERVICE_FEE&quot; = :SERVICE_FEE WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID AND &quot;SERVICE_ID&quot; = :SERVICE_ID">
        <DeleteParameters>
            <asp:Parameter Name="CONTRACT_ID" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CONTRACT_ID" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
            <asp:Parameter Name="SERVICE_FEE" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
            <asp:Parameter Name="SERVICE_FEE" Type="Decimal" />
            <asp:Parameter Name="CONTRACT_ID" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        

        <br />
        

</asp:Content>

