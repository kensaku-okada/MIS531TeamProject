<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateEmployees.aspx.cs" Inherits="UpdateEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    Employee name<br />
    <asp:DropDownList ID="EmployeesForEmployeeIDDropDown" runat="server" AutoPostBack="True" DataSourceID="EmployeesForEmployeeIDDropDownSQL" DataTextField="EMP_ID" DataValueField="EMP_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="EmployeesForEmployeeIDDropDownSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
    
    <br />
    
    <asp:DetailsView ID="UpdateEmployeesDetailedView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="UpdateEmployeesSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="MIDDLE_NAME" HeaderText="MIDDLE_NAME" SortExpression="MIDDLE_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
            <asp:BoundField DataField="FULLTIME_OR_PART_TIME" HeaderText="FULLTIME_OR_PART_TIME" SortExpression="FULLTIME_OR_PART_TIME" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>


    <asp:SqlDataSource ID="UpdateEmployeesSQL" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>"
        SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot; WHERE (&quot;EMP_ID&quot; = :EMP_ID)" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;FIRST_NAME&quot;, &quot;MIDDLE_NAME&quot;, &quot;LAST_NAME&quot;, &quot;EMAIL&quot;, &quot;PHONE_NUMBER&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;FULLTIME_OR_PART_TIME&quot;) VALUES (:EMP_ID, :FIRST_NAME, :MIDDLE_NAME, :LAST_NAME, :EMAIL, :PHONE_NUMBER, :DATE_OF_BIRTH, :FULLTIME_OR_PART_TIME)" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;MIDDLE_NAME&quot; = :MIDDLE_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;FULLTIME_OR_PART_TIME&quot; = :FULLTIME_OR_PART_TIME WHERE &quot;EMP_ID&quot; = :EMP_ID">
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
            <asp:ControlParameter ControlID="EmployeesForEmployeeIDDropDown" Name="EMP_ID" PropertyName="SelectedValue" Type="String" />
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
    <br />


</asp:Content>

