<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateIntern.aspx.cs" Inherits="CreateIntern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7" style="text-align: center">Create Intern</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into INTERNS table.</div>
    </font>
 
     <br />

    THe format of INTERN_START_DATE and INTERN_END_DATE is DD-MMM-YYYY (e.g. 31-Dec-2017).<br />
    <br />

    <asp:DetailsView ID="CreateInternDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMP_ID" DataSourceID="CreateInternSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
            <asp:BoundField DataField="INTERN_START_DATE" HeaderText="INTERN_START_DATE" SortExpression="INTERN_START_DATE" />
            <asp:BoundField DataField="INTERN_END_DATE" HeaderText="INTERN_END_DATE" SortExpression="INTERN_END_DATE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="CreateInternSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;INTERNS&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;INTERNS&quot; (&quot;EMP_ID&quot;, &quot;INTERN_START_DATE&quot;, &quot;INTERN_END_DATE&quot;) VALUES (:EMP_ID, :INTERN_START_DATE, :INTERN_END_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;INTERNS&quot;" UpdateCommand="UPDATE &quot;INTERNS&quot; SET &quot;INTERN_START_DATE&quot; = :INTERN_START_DATE, &quot;INTERN_END_DATE&quot; = :INTERN_END_DATE WHERE &quot;EMP_ID&quot; = :EMP_ID">
        <DeleteParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
            <asp:Parameter Name="INTERN_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTERN_END_DATE" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="INTERN_START_DATE" Type="DateTime" />
            <asp:Parameter Name="INTERN_END_DATE" Type="DateTime" />
            <asp:Parameter Name="EMP_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>





</asp:Content>

