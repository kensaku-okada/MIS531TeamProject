<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdatePartTimeEmployee.aspx.cs" Inherits="ViewUpdatePartTimeEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Part-time Employee</font></h1>
    <font size="5"><div class="tableNameTitle">View or update data on PART_TIME_EMPLOYEES table.</div>
    </font>

    In this page, you can update or delete existing part-time employees. <br />
    When deleting part-time employees on this page, the associated employee type data has to be deleted first. <br />
    <br />
    Use the same Employee ID (EMP_ID) when registering each employee type.<br />
    PART_TIME_EMPLOYMENT_TYPE should be chosen from part_time and intern.<br />

&nbsp;<br />

        <div align="center">
    <table cellpadding="15" >
	<tbody>
	    <tr>
			<td>
                <a href="ViewUpdateParttimer.aspx">
                    <img src="images/button_view-update-parttimer.png" /></a>
			</td>
			<td>
                <a href="ViewUpdateIntern.aspx">
                    <img src="images/button_view-update-intern.png" /></a>
			</td>
		</tr>
	</tbody>
    </table>
    </div>

    <br />

    <asp:GridView ID="ViewUPdagteParttimeEmployeeGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUPdagteParttimeEmployeeSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="HOURLY_WAGE" HeaderText="HOURLY_WAGE" SortExpression="HOURLY_WAGE" />
            <asp:BoundField DataField="PART_TIME_EMPLOYMENT_TYPE" HeaderText="PART_TIME_EMPLOYMENT_TYPE" SortExpression="PART_TIME_EMPLOYMENT_TYPE" />
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
    <asp:SqlDataSource ID="ViewUPdagteParttimeEmployeeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PART_TIME_EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;PART_TIME_EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;HOURLY_WAGE&quot;, &quot;PART_TIME_EMPLOYMENT_TYPE&quot;) VALUES (:EMP_ID, :HOURLY_WAGE, :PART_TIME_EMPLOYMENT_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PART_TIME_EMPLOYEES&quot; ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;PART_TIME_EMPLOYEES&quot; SET &quot;HOURLY_WAGE&quot; = :HOURLY_WAGE, &quot;PART_TIME_EMPLOYMENT_TYPE&quot; = :PART_TIME_EMPLOYMENT_TYPE WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="HOURLY_WAGE" Type="Decimal" />
            <asp:Parameter Name="PART_TIME_EMPLOYMENT_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HOURLY_WAGE" Type="Decimal" />
            <asp:Parameter Name="PART_TIME_EMPLOYMENT_TYPE" Type="String" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

