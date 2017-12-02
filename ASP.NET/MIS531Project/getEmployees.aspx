<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getEmployees.aspx.cs" Inherits="getEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>get employees list</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Full time or Part time<br />
            <asp:DropDownList ID="DropDownFullOrPart" runat="server" DataSourceID="SqlDataSource1test" DataTextField="FULLTIME_OR_PART_TIME" DataValueField="FULLTIME_OR_PART_TIME" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            emp_id<br />
            <asp:DropDownList ID="DropDownEmpID" runat="server" DataSourceID="SqlDataSource1test" DataTextField="EMP_ID" DataValueField="EMP_ID">
            </asp:DropDownList>
            <br />
            <br />
            emp first name<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1test" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMP_ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" ReadOnly="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1test" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;">
        </asp:SqlDataSource>
    </form>
</body>
</html>
