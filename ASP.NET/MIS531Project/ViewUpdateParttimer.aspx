<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateParttimer.aspx.cs" Inherits="ViewUpdateParttimer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View Update part-timer</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into PART_TIMERS table.</div>
    </font>
 
    <br />

    <asp:GridView ID="ViewUpdateParttimerGridView" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="ViewUpdateParttimerSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="ViewUpdateParttimerSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PART_TIMERS&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;PART_TIMERS&quot; (&quot;EMP_ID&quot;, &quot;CUMULATIVE_WORKING_HOUR&quot;) VALUES (:EMP_ID, :CUMULATIVE_WORKING_HOUR)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PART_TIMERS&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;PART_TIMERS&quot; SET &quot;CUMULATIVE_WORKING_HOUR&quot; = :CUMULATIVE_WORKING_HOUR WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="CUMULATIVE_WORKING_HOUR" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CUMULATIVE_WORKING_HOUR" Type="Decimal" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />


</asp:Content>

