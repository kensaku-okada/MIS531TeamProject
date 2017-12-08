<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateEmployee.aspx.cs" Inherits="ViewUpdateEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">View/Update Employee</font></h1>
    <font size="5"><div class="tableNameTitle">Update data on EMPLOYEES table.</div>
    </font>
 
        In this page, you can update or delete existing employees. <br />
        When deleting employees on this page, the associated employee type data has to be deleted first. <br />
        For example, if you want to delete the employee with 00000001 and you created the partner with this EMP_ID,<br/>
        you need to delete the partner record in View/Update Partners page (PARTNERS table) first, delete that of View/Update <br/>
        Ful-time employees page (FULL_TIME_EMPLOYEES table) second, and then delte the S000001 record here.<br />
        <br />
        FULLTIME_OR_PART_TIME should be chosen from full and part.<br />

        Use the same Employee ID (EMP_ID) when registering each employee type.<br />

     <br />

    <div align="center">
    <table cellpadding="15" >
	<tbody>
	    <tr>
			<td>
                <a href="ViewUpdateFullTypeEmployee.aspx">
                    <img src="images/button_view-update-full-time-employee.png" /></a>
			</td>
			<td>
                <a href="ViewUpdatePartTimeEmployee.aspx">
                    <img src="images/button_view-update-part-time-employee.png" /></a>
			</td>
		</tr>
	</tbody>
    </table>
    </div>




    FIter Full-time or Part-time employees<br />




    <asp:DropDownList ID="ViewUpdateEmployeeEmpTypeDropDown" runat="server" AutoPostBack="True" DataSourceID="ViewUpdateEmployeeEmpTypeSQL" DataTextField="FULLTIME_OR_PART_TIME" DataValueField="FULLTIME_OR_PART_TIME"></asp:DropDownList>
    <asp:SqlDataSource ID="ViewUpdateEmployeeEmpTypeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;FULLTIME_OR_PART_TIME&quot; FROM &quot;EMPLOYEES&quot; ORDER BY &quot;FULLTIME_OR_PART_TIME&quot;"></asp:SqlDataSource>

    <br />

    <asp:GridView ID="ViewUpdateEmployeeGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewUpdateEmployeeSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="MIDDLE_NAME" HeaderText="MIDDLE_NAME" SortExpression="MIDDLE_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
            <asp:BoundField DataField="FULLTIME_OR_PART_TIME" HeaderText="FULLTIME_OR_PART_TIME" SortExpression="FULLTIME_OR_PART_TIME" />
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
    <asp:SqlDataSource ID="ViewUpdateEmployeeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;FIRST_NAME&quot;, &quot;MIDDLE_NAME&quot;, &quot;LAST_NAME&quot;, &quot;EMAIL&quot;, &quot;PHONE_NUMBER&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;FULLTIME_OR_PART_TIME&quot;) VALUES (:EMP_ID, :FIRST_NAME, :MIDDLE_NAME, :LAST_NAME, :EMAIL, :PHONE_NUMBER, :DATE_OF_BIRTH, :FULLTIME_OR_PART_TIME)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot; WHERE (&quot;FULLTIME_OR_PART_TIME&quot; = :FULLTIME_OR_PART_TIME) ORDER BY &quot;EMP_ID&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;MIDDLE_NAME&quot; = :MIDDLE_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;FULLTIME_OR_PART_TIME&quot; = :FULLTIME_OR_PART_TIME WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="FULLTIME_OR_PART_TIME" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ViewUpdateEmployeeEmpTypeDropDown" Name="FULLTIME_OR_PART_TIME" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FIRST_NAME" Type="String" />
            <asp:Parameter Name="MIDDLE_NAME" Type="String" />
            <asp:Parameter Name="LAST_NAME" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="FULLTIME_OR_PART_TIME" Type="String" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
s
    <br />


</asp:Content>

