<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateFullTimeEmployee.aspx.cs" Inherits="CreateFullTimeEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Create Full-time Employee</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into FULL_TIME_EMPLOYEES table.</div>
    </font>

    Use the same Employee ID (EMP_ID) when registering each employee type. ENP_ID is shown in "View/Update Employee" page.<br />

    When inserting full-time employees on this page, the associated employee type data has to be registered on Create Employee page beforehand. <br />
    <br />
    FULL_TIME_EMPLOYMENT_TYPE should be chosen from partner and staff.<br />
    &nbsp;<br />
    
    <asp:DetailsView ID="CreateFullTimeEmployeeDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="CreateFullTimeEmployeeSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="ANNUAL_SALARY" HeaderText="ANNUAL_SALARY" SortExpression="ANNUAL_SALARY" />
            <asp:BoundField DataField="FULL_TIME_EMPLOYMENT_TYPE" HeaderText="FULL_TIME_EMPLOYMENT_TYPE" SortExpression="FULL_TIME_EMPLOYMENT_TYPE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateFullTimeEmployeeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;FULL_TIME_EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;FULL_TIME_EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;ANNUAL_SALARY&quot;, &quot;FULL_TIME_EMPLOYMENT_TYPE&quot;) VALUES (:EMP_ID, :ANNUAL_SALARY, :FULL_TIME_EMPLOYMENT_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;FULL_TIME_EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;FULL_TIME_EMPLOYEES&quot; SET &quot;ANNUAL_SALARY&quot; = :ANNUAL_SALARY, &quot;FULL_TIME_EMPLOYMENT_TYPE&quot; = :FULL_TIME_EMPLOYMENT_TYPE WHERE &quot;EMP_ID&quot; = :EMP_ID">
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

    <div align="center">
        <table cellpadding="15" >
	    <tbody>
	        <tr>
			    <td>
                    <a href="CreatePartner.aspx">
                        <img src="images/button_create-partner.png" /></a>
			    </td>
			    <td>
                    <a href="CreateStaff.aspx">
                        <img src="images/button_create-staff.png" /></a>
			    </td>
			</tr>
	    </tbody>
        </table>
    </div>
    



</asp:Content>

