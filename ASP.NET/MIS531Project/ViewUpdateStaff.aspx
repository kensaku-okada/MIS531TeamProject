<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateStaff.aspx.cs" Inherits="ViewUpdateStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Staff</font></h1>
    <font size="5"><div class="tableNameTitle">Update data on STAFFS table.</div>
    </font>

    Update or delete existing Staffs. <br />
    You can fill in any position name on JOB_TITLE, but currently there are two positions - Staff and Senior Staff.<br />

    <br />

    <asp:GridView ID="ViewUpdateStaffGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUpdateStaffSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
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
    <asp:SqlDataSource ID="ViewUpdateStaffSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;STAFFS&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;STAFFS&quot; (&quot;EMP_ID&quot;, &quot;JOB_TITLE&quot;) VALUES (:EMP_ID, :JOB_TITLE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFFS&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;STAFFS&quot; SET &quot;JOB_TITLE&quot; = :JOB_TITLE WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="JOB_TITLE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JOB_TITLE" Type="String" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <br />




</asp:Content>

