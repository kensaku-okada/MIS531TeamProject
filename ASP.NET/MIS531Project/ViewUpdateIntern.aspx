<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateIntern.aspx.cs" Inherits="ViewUpdateIntern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Intern</font></h1>
    <font size="5"><div class="tableNameTitle">View or update data on INTERNS table.</div>
    </font>
 
     <br />

    THe format of INTERN_START_DATE and INTERN_END_DATE is DD-MMM-YYYY (e.g. 31-Dec-2017).<br />
    <br />

    <asp:GridView ID="ViewUpdateInternGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUpdateInternSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="INTERN_START_DATE" HeaderText="INTERN_START_DATE" SortExpression="INTERN_START_DATE" />
            <asp:BoundField DataField="INTERN_END_DATE" HeaderText="INTERN_END_DATE" SortExpression="INTERN_END_DATE" />
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
    <asp:SqlDataSource ID="ViewUpdateInternSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;INTERNS&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;INTERNS&quot; (&quot;EMP_ID&quot;, &quot;INTERN_START_DATE&quot;, &quot;INTERN_END_DATE&quot;) VALUES (:EMP_ID, :INTERN_START_DATE, :INTERN_END_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;INTERNS&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;INTERNS&quot; SET &quot;INTERN_START_DATE&quot; = :INTERN_START_DATE, &quot;INTERN_END_DATE&quot; = :INTERN_END_DATE WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="INTERN_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTERN_END_DATE" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="INTERN_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTERN_END_DATE" Type="DateTime" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />


</asp:Content>

