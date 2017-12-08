<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateService.aspx.cs" Inherits="CreateService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1 class="auto-style1"><font size="7" style="text-align: center">Create service</font></h1>
    <font size="5"><div class="tableNameTitle">Insert data into SERVICES table.</div></font> <br />
 
    In this page, you can create new services. This is the step.
    <ol>
        <li>create a new data on this page.</li>
        <li>create a new data on each service type page. The link to each service type is shown below this page.</li>
    </ol>
    SERVICE_TYPE should be chosen from bookkeeping, assurance, business registration, and disbursement.<br />
    Use the same Service ID when registering each service type. Service ID shows in "View/Update Service" page.<br />
    
     <br />

     <br />

    <asp:DetailsView ID="CreateServiceDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="SERVICE_ID" DataSourceID="CreateServiceSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <%--<asp:BoundField DataField="SERVICE_ID" HeaderText="SERVICE_ID" ReadOnly="True" SortExpression="SERVICE_ID" />--%>
            <asp:BoundField DataField="SERVICE_NAME" HeaderText="SERVICE_NAME" SortExpression="SERVICE_NAME" />
            <asp:BoundField DataField="SERVICE_TYPE" HeaderText="SERVICE_TYPE" SortExpression="SERVICE_TYPE" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
     </asp:DetailsView>
    <asp:SqlDataSource ID="CreateServiceSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;SERVICES&quot; WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID" InsertCommand="INSERT INTO &quot;SERVICES&quot; (&quot;SERVICE_ID&quot;, &quot;SERVICE_NAME&quot;, &quot;SERVICE_TYPE&quot;) VALUES (:SERVICE_ID, :SERVICE_NAME, :SERVICE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;SERVICES&quot;" UpdateCommand="UPDATE &quot;SERVICES&quot; SET &quot;SERVICE_NAME&quot; = :SERVICE_NAME, &quot;SERVICE_TYPE&quot; = :SERVICE_TYPE WHERE &quot;SERVICE_ID&quot; = :SERVICE_ID">
        <DeleteParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SERVICE_ID" Type="String" />
            <asp:Parameter Name="SERVICE_NAME" Type="String" />
            <asp:Parameter Name="SERVICE_TYPE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SERVICE_NAME" Type="String" />
            <asp:Parameter Name="SERVICE_TYPE" Type="String" />
            <asp:Parameter Name="SERVICE_ID" Type="String" />
        </UpdateParameters>
     </asp:SqlDataSource>

     <br />

    <br/>

    <div align="center">
        <table cellpadding="15" >
	    <tbody>
	        <tr>
			    <td>
                    <a href="CreateAssurance.aspx">
                        <img src="images/button_create-assurance.png" /></a>
			    </td>
			    <td>
                    <a href="CreateBookkeeping.aspx">
                        <img src="images/button_create-bookkeeping.png" /></a>
			    </td>
			    <td>
                    <a href="CreateBusinessRegistration.aspx">
                        <img src="images/button_create-business-registration.png" /></a>
			    </td>
			    <td>
                    <a href="CreateDisbursement.aspx">
                        <img src="images/button_create-disbursement.png" /></a>
			    </td>

			</tr>
	    </tbody>
        </table>
    </div>


     <p>&nbsp;</p>





</asp:Content>

