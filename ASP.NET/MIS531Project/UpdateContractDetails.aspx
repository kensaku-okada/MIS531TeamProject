<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateContractDetails.aspx.cs" Inherits="UpdateContractDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="auto-style1"><font size="7" style="text-align: center">Update Contract Detail</font></h1>
        <font size="5"><div class="tableNameTitle">Update data in CONTRACT_DETAILS table.</div>
        </font> 

        <p style="text-align: center">Update the existing Contract detail data by clicking &quot; Edit &quot; or &quot; Delete &quot; under the table.</p>
        <p style="text-align: left">
            Contract ID <br/> 
            <asp:DropDownList ID="ContractIDDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdateConractDetailDropDown" DataTextField="CONTRACT_ID" DataValueField="CONTRACT_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="UpdateConractDetailDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;CONTRACT_ID&quot; FROM &quot;CONTRACT_DETAILS&quot; ORDER BY &quot;CONTRACT_ID&quot;"></asp:SqlDataSource>
            &nbsp;&nbsp; 
        </p>
        <p style="text-align: center">
            <asp:GridView ID="UpdateContractDetailGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CONTRACT_ID,SERVICE_ID" DataSourceID="UpdateContractDetailSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CONTRACT_ID" HeaderText="CONTRACT_ID" ReadOnly="True" SortExpression="CONTRACT_ID" />
                    <asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                    <asp:BoundField DataField="SERVICE_FEE" HeaderText="SERVICE_FEE" SortExpression="SERVICE_FEE" />
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
            <asp:SqlDataSource ID="UpdateContractDetailSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;CONTRACT_DETAILS&quot; WHERE (&quot;CONTRACT_ID&quot; = :CONTRACT_ID) ORDER BY &quot;CONTRACT_ID&quot;" DeleteCommand="DELETE FROM &quot;CONTRACT_DETAILS&quot; WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID AND &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;CONTRACT_DETAILS&quot; (&quot;CONTRACT_ID&quot;, &quot;SERVICE_ID&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;SERVICE_FEE&quot;) VALUES (:CONTRACT_ID, :SERVICE_ID, :START_DATE, :END_DATE, :SERVICE_FEE)" UpdateCommand="UPDATE &quot;CONTRACT_DETAILS&quot; SET &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;SERVICE_FEE&quot; = :SERVICE_FEE WHERE &quot;CONTRACT_ID&quot; = :CONTRACT_ID AND &quot;SERVICE_ID&quot; = :SERVICE_ID">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="ContractIDDropDown" Name="CONTRACT_ID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="SERVICE_FEE" Type="Decimal" />
                    <asp:Parameter Name="CONTRACT_ID" Type="String" />
                    <asp:Parameter Name="SERVICE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
&nbsp;</p>

        




</asp:Content>

