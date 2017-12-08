<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewEmployees.aspx.cs" Inherits="ViewEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="ViewEmployeesGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="ViewEmployeesSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="50">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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

        <asp:SqlDataSource ID="ViewEmployeesSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPLOYEEID&quot;, &quot;LASTNAME&quot;, &quot;FIRSTNAME&quot;, &quot;TITLE&quot;, &quot;TITLEOFCOURTESY&quot;, &quot;BIRTHDATE&quot;, &quot;HIREDATE&quot;, &quot;ADDRESS&quot;, &quot;CITY&quot;, &quot;REGION&quot;, &quot;POSTALCODE&quot;, &quot;COUNTRY&quot;, &quot;HOMEPHONE&quot;, &quot;EXTENSION&quot;, &quot;REPORTSTO&quot;) VALUES (:EMPLOYEEID, :LASTNAME, :FIRSTNAME, :TITLE, :TITLEOFCOURTESY, :BIRTHDATE, :HIREDATE, :ADDRESS, :CITY, :REGION, :POSTALCODE, :COUNTRY, :HOMEPHONE, :EXTENSION, :REPORTSTO)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;LASTNAME&quot; = :LASTNAME, &quot;FIRSTNAME&quot; = :FIRSTNAME, &quot;TITLE&quot; = :TITLE, &quot;TITLEOFCOURTESY&quot; = :TITLEOFCOURTESY, &quot;BIRTHDATE&quot; = :BIRTHDATE, &quot;HIREDATE&quot; = :HIREDATE, &quot;ADDRESS&quot; = :ADDRESS, &quot;CITY&quot; = :CITY, &quot;REGION&quot; = :REGION, &quot;POSTALCODE&quot; = :POSTALCODE, &quot;COUNTRY&quot; = :COUNTRY, &quot;HOMEPHONE&quot; = :HOMEPHONE, &quot;EXTENSION&quot; = :EXTENSION, &quot;REPORTSTO&quot; = :REPORTSTO WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
            <DeleteParameters>
                <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="TITLE" Type="String" />
                <asp:Parameter Name="TITLEOFCOURTESY" Type="String" />
                <asp:Parameter Name="BIRTHDATE" Type="DateTime" />
                <asp:Parameter Name="HIREDATE" Type="DateTime" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="REGION" Type="String" />
                <asp:Parameter Name="POSTALCODE" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="HOMEPHONE" Type="String" />
                <asp:Parameter Name="EXTENSION" Type="String" />
                <asp:Parameter Name="REPORTSTO" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="TITLE" Type="String" />
                <asp:Parameter Name="TITLEOFCOURTESY" Type="String" />
                <asp:Parameter Name="BIRTHDATE" Type="DateTime" />
                <asp:Parameter Name="HIREDATE" Type="DateTime" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="REGION" Type="String" />
                <asp:Parameter Name="POSTALCODE" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="HOMEPHONE" Type="String" />
                <asp:Parameter Name="EXTENSION" Type="String" />
                <asp:Parameter Name="REPORTSTO" Type="Decimal" />
                <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
    <br />
</asp:Content>

