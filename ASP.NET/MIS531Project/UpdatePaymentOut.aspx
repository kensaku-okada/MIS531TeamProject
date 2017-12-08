<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePaymentOut.aspx.cs" Inherits="UpdatePaymentOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 class="auto-style1"><font size="7">Update Payment Out</font></h1>
    <p>
        <font size="5">Update/Delete data into PAYMENT_OUT table.</font></p>
    <p>
        Update or delete the infromation of the any payemnt which Elite pays. <br/>
        The PAYMENT ID has to be generated at Create Payment page before registering here. <br/> 
    </p>

    <p>
        <asp:DropDownList ID="UpdatePaymentOutDropDown" runat="server" AutoPostBack="True" DataSourceID="UpdatePaymentOutDropOwnSQL" DataTextField="PAYMENT_ID" DataValueField="PAYMENT_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="UpdatePaymentOutDropOwnSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT &quot;PAYMENT_ID&quot; FROM &quot;PAYMENT_OUT&quot; ORDER BY &quot;PAYMENT_ID&quot;"></asp:SqlDataSource>    
    </p>
    <p>
        <asp:DetailsView ID="UpdatePaymentOutDetailsView" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PAYMENT_ID" DataSourceID="UpdatePaymentOutSQL" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="OWN_EXPENDITURE" HeaderText="OWN_EXPENDITURE" SortExpression="OWN_EXPENDITURE" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="UpdatePaymentOutSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject %>" DeleteCommand="DELETE FROM &quot;PAYMENT_OUT&quot; WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID" InsertCommand="INSERT INTO &quot;PAYMENT_OUT&quot; (&quot;PAYMENT_ID&quot;, &quot;OWN_EXPENDITURE&quot;) VALUES (:PAYMENT_ID, :OWN_EXPENDITURE)" ProviderName="<%$ ConnectionStrings:ConnectionStringMIS531TeamProject.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENT_OUT&quot; WHERE (&quot;PAYMENT_ID&quot; = :PAYMENT_ID) ORDER BY &quot;PAYMENT_ID&quot; DESC" UpdateCommand="UPDATE &quot;PAYMENT_OUT&quot; SET &quot;OWN_EXPENDITURE&quot; = :OWN_EXPENDITURE WHERE &quot;PAYMENT_ID&quot; = :PAYMENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
                <asp:Parameter Name="OWN_EXPENDITURE" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UpdatePaymentOutDropDown" Name="PAYMENT_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="OWN_EXPENDITURE" Type="String" />
                <asp:Parameter Name="PAYMENT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>


</asp:Content>

