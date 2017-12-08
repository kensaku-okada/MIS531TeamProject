<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateFullTypeEmployee.aspx.cs" Inherits="ViewUpdateFullTypeEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Full-time Employee</font></h1>
    <font size="5"><div class="tableNameTitle">Update data on FULL_TIME_EMPLOYEES table.</div>
    </font>

    In this page, you can update or delete existing full time employees. <br />
    When deleting full-time employees on this page, the associated employee type data has to be deleted first. <br />
    <br />
    Use the same Employee ID (EMP_ID) when registering each employee type.<br />
    FULL_TIME_EMPLOYMENT_TYPE should be chosen from partner and staff.<br />
    &nbsp;<br />

    <div align="center">
    <table cellpadding="15" >
	<tbody>
	    <tr>
			<td>
                <a href="ViewUpdatePartner.aspx">
                    <img src="images/button_view-update-partner.png" /></a>
			</td>
			<td>
                <a href="ViewUpdateStaff.aspx">
                    <img src="images/button_view-update-staff.png" /></a>
			</td>
		</tr>
	</tbody>
    </table>
    </div>

    <br />

    <asp:GridView ID="ViewUpdateFullTimeEmployeeGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUpdateFullTimeEmployeeSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="ANNUAL_SALARY" HeaderText="ANNUAL_SALARY" SortExpression="ANNUAL_SALARY" />
            <asp:BoundField DataField="FULL_TIME_EMPLOYMENT_TYPE" HeaderText="FULL_TIME_EMPLOYMENT_TYPE" SortExpression="FULL_TIME_EMPLOYMENT_TYPE" />
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
    <asp:SqlDataSource ID="ViewUpdateFullTimeEmployeeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;FULL_TIME_EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;FULL_TIME_EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;ANNUAL_SALARY&quot;, &quot;FULL_TIME_EMPLOYMENT_TYPE&quot;) VALUES (:EMP_ID, :ANNUAL_SALARY, :FULL_TIME_EMPLOYMENT_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;FULL_TIME_EMPLOYEES&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;FULL_TIME_EMPLOYEES&quot; SET &quot;ANNUAL_SALARY&quot; = :ANNUAL_SALARY, &quot;FULL_TIME_EMPLOYMENT_TYPE&quot; = :FULL_TIME_EMPLOYMENT_TYPE WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="ANNUAL_SALARY" Type="Decimal" />
            <asp:Parameter Name="FULL_TIME_EMPLOYMENT_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ANNUAL_SALARY" Type="Decimal" />
            <asp:Parameter Name="FULL_TIME_EMPLOYMENT_TYPE" Type="String" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />



</asp:Content>

