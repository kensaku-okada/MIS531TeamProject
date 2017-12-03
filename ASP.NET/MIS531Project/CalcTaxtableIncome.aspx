<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalcTaxtableIncome.aspx.cs" Inherits="CalcTaxtableIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="CalcTaxtableIncomeYearTextBox" runat="server"></asp:TextBox> &nbsp;&nbsp;&nbsp;
    <asp:Button ID="CalcTaxtableIncomeButton" runat="server" Text="Calculate" OnClick="CalcTaxtableIncomeButton_Click" style="height: 29px" />



 

    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="CalcTaxtableIncomeSQL" runat="server"></asp:SqlDataSource>

 



</asp:Content>

