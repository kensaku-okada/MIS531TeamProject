<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeesDetail.aspx.cs" Inherits="EmployeesDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees Detail</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="EMP_ID" DataSourceID="EmployeesDetailDataSource" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
                <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                <asp:BoundField DataField="MIDDLE_NAME" HeaderText="MIDDLE_NAME" SortExpression="MIDDLE_NAME" />
                <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
                <asp:BoundField DataField="FULLTIME_OR_PART_TIME" HeaderText="FULLTIME_OR_PART_TIME" SortExpression="FULLTIME_OR_PART_TIME" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="EmployeesDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;FIRST_NAME&quot;, &quot;MIDDLE_NAME&quot;, &quot;LAST_NAME&quot;, &quot;EMAIL&quot;, &quot;PHONE_NUMBER&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;FULLTIME_OR_PART_TIME&quot;) VALUES (:EMP_ID, :FIRST_NAME, :MIDDLE_NAME, :LAST_NAME, :EMAIL, :PHONE_NUMBER, :DATE_OF_BIRTH, :FULLTIME_OR_PART_TIME)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;MIDDLE_NAME&quot; = :MIDDLE_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;FULLTIME_OR_PART_TIME&quot; = :FULLTIME_OR_PART_TIME WHERE &quot;EMP_ID&quot; = :EMP_ID">
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
    </form>
</body>
</html>
