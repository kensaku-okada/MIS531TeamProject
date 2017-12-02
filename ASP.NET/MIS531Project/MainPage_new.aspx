<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage_new.aspx.cs" Inherits="MainPage_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: small;
        }
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/customizedCSS.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1 class="auto-style1">Elite CPA Invoice Management System</h1>
    <div class="MainPageIntroduction">
    Elite Certified Public Accountants (Elite CPA) Homepage http://www.elite-cpas.com/index.html <br> 
    </div>

    <br />

    <form id="form1">
    <div align="center">
            <!-- the source of fee images: https://dabuttonfactory.com/ -->
        <table cellpadding="15" >
	        <tbody>

	        	<tr>
			        <td>
                        <a href="CalcWithheldTax.aspx"><img src="images/button_calculate-withheld-tax.png" /></a>
			        </td>
			        <td>
			        	<img src="images/button_calculate-accrual-revenue.png" />
			        </td>
			        <td>

			        </td>
			    </tr>
		        <tr>
			        <td>
                        <a href="CreateInvoice.aspx"><img src="images/button_create-invoice.png" /></a>
			        </td>
			        <td>
                        <a href="UpdateInvoice.aspx"><img src="images/button_update-invoice.png" /></a>
			        </td>
			        <td>
                        <a href="ViewInvoice.aspx"><img src="images/button_view-invoice.png" /></a>
			        </td>
		        </tr>
		        <tr>
			        <td><img src="images/button_calculate-client-payment.png" /></td>
			        <td>
                        <img src="images/button_view-update-client-payment.png" /><br/>
                        <span class="auto-style2">View or update the money Elite received from clitents</span>
			        </td>
			        <td>

			        </td>

		        </tr>
		        <tr>
			        <td>
			        </td>
			        <td>
			        </td>
			        <td>
			        </td>

		        </tr>
		        <tr>
			        <td>
			        </td>
			        <td>
			        </td>
			        <td>
			        </td>

		        </tr>
		        <tr>
			        <td><img src="images/button_calculate-bonus.png" /></td>
			        <td>
                        <a href="ViewEmployees.aspx"><img src="images/button_view-update-bonus.png" /></a>
                    </td>
			        <td>

			        </td>

		        </tr>
		        <tr>
			        <td>
                        <img src="images/button_register-employees.png" />

			        </td>
			        <td>
                        <a href="UpdateEmployees.aspx"><img src="images/button_update-employees.png" /></a>
			        </td>
			        <td>
                        <a href="ViewEmployees.aspx"><img src="images/button_view-employees.png" /></a>
			        </td>

		        </tr>
	        </tbody>
        </table>
    </div>
    </form>

    <br />
    <br />

</asp:Content>

