<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreatePartTimeEmployee.aspx.cs" Inherits="CreatePartTimeEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1 class="auto-style1"><font size="7" style="text-align: center">Create Part-time Employee</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into PART_TIME_EMPLOYEES table.</div>
    </font>

    Use the same Employee ID (EMP_ID) when registering each employee type. ENP_ID is shown in "View/Update Employee" page.<br />
    When inserting part-time employee on this page, the associated employee type data has to be registered on Create Employee page beforehand. <br />
    <br />
    PART_TIME_EMPLOYMENT_TYPE should be chosen from part_timer and intern<br />
    The unit of HOURLY_WAGE is New Taiwan Dollar.<br />
    &nbsp;<br />
    
    <asp:DetailsView ID="CreatePartTimeEmployeeDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="CreatePartTimeEmployeeSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="HOURLY_WAGE" HeaderText="HOURLY_WAGE" SortExpression="HOURLY_WAGE" />
            <asp:BoundField DataField="PART_TIME_EMPLOYMENT_TYPE" HeaderText="PART_TIME_EMPLOYMENT_TYPE" SortExpression="PART_TIME_EMPLOYMENT_TYPE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreatePartTimeEmployeeSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PART_TIME_EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;PART_TIME_EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;HOURLY_WAGE&quot;, &quot;PART_TIME_EMPLOYMENT_TYPE&quot;) VALUES (:EMP_ID, :HOURLY_WAGE, :PART_TIME_EMPLOYMENT_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PART_TIME_EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;PART_TIME_EMPLOYEES&quot; SET &quot;HOURLY_WAGE&quot; = :HOURLY_WAGE, &quot;PART_TIME_EMPLOYMENT_TYPE&quot; = :PART_TIME_EMPLOYMENT_TYPE WHERE &quot;EMP_ID&quot; = :EMP_ID">
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

    <div align="center">
        <table cellpadding="15" >
	    <tbody>
	        <tr>
			    <td>
                    <a href="CreateParttimer.aspx">
                        <img src="images/button_create-parttimer.png" /></a>
			    </td>
			    <td>
                    <a href="CreateIntern.aspx">
                        <img src="images/button_create-intern.png" /></a>
			    </td>

			</tr>
	    </tbody>
        </table>
    </div>








</asp:Content>

