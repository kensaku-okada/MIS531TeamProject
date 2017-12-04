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
                        <%--<a href="ViewEmployees.aspx"><img src="images/button_view-update-bonus.png" /></a>--%>
                        <a href="CalcBonus.aspx"><img src="images/button_calculate-bonus.png" /></a>
			        </td>
			        <td>
                        <a href="CalcTaxableRevenue.aspx"><img src="images/button_calculate-taxable-revenue.png" /></a>
			        </td>
			    </tr>
                <tr>
			        <td>
                        <img src="images/button_calculate-accrual-revenue.png" /><br/>
                        <span class="auto-style2">In progress...</span>
			        </td>
			        <td>
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
			        <td>
                        <a href="CreateContract.aspx"><img src="images/button_create-contracts.png" /></a>
			        </td>
			        <td>
                       <a href="UpdateContract.aspx"><img src="images/button_update-contracts.png" /></a>
			        </td>
			        <td>
                        <a href="ViewContract.aspx"><img src="images/button_view-contracts.png" /></a>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <a href="CreateContractDetails.aspx"><img src="images/button_create-contract-details.png" /></a>
			        </td>
			        <td>
                        <a href="UpdateContractDetails.aspx"><img src="images/button_update-contract-detail.png" /></a>
			        </td>
			        <td>
                        <a href="ViewContractDetails.aspx"><img src="images/button_view-contract-details.png" /></a>
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <a href="CreatePayment.aspx"><img src="images/button_create-payment.png" /><br/></a>
                        <span class="auto-style2">Register a new payment (fill in the payment data here when Elite pay or receive money)</span>
			        </td>
			        <td>
                        <a href="UpdatePayment.aspx"><img src="images/button_update-payment.png" /><br/></a>
                        <span class="auto-style2">Update a existing payment (all the payment data when Elite pay or receive money) </span>
			        </td>
			        <td>
                        <a href="ViewPayment.aspx"><img src="images/button_view-payment.png" /><br/></a>
                        <span class="auto-style2">View payment methods (all the payment data when Elite pay or receive money)</span>
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <a href="CreateClientPayment.aspx"><img src="images/button_create-client-payment.png" /></a>
                        <div style="text-align: left">
                            <span class="auto-style2">
                                &nbsp;&nbsp; fill in the money Elite receives from clitents (MONEY_RECEIVED)
                            </span>
                        </div>
			        </td>
			        <td>
                        <a href="UpdateClientPayment.aspx"><img src="images/button_update-client-payment.png" /></a><br/>
                        <div style="text-align: left">
                            <span class="auto-style2">
                                &nbsp;&nbsp; Update the money Elite receives from clitents (MONEY_RECEIVED)
                            </span>
                        </div>
			        </td>
			        <td>
                        <a href="ViewClientPayment.aspx"><img src="images/button_view-client-payment.png" /></a><br/>
                        <div style="text-align: left">
                            <span class="auto-style2">
                                &nbsp;&nbsp; View the money Elite receives from clitents (MONEY_RECEIVED)
                            </span>
                        </div>
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <a href="CreateReceipt.aspx"><img src="images/button_create-receipts.png" /></a>
			        </td>
			        <td>
                        <a href="UpdateReceipt.aspx"><img src="images/button_update-receipts.png" /></a>
			        </td>
			        <td>
                        <a href="ViewReceipt.aspx"><img src="images/button_view-receipts.png" /></a>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_create-payment-out.png" />
			        </td>
			        <td>
                        <img src="images/button_update-payment-out.png" />
			        </td>
			        <td>
                        <img src="images/button_view-payment-out.png" />
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_create-external-payment.png" />
			        </td>
			        <td>
                        <img src="images/button_update-external-payment.png" />
			        </td>
			        <td>
                        <img src="images/button_view-external-payment.png" />
			        </td>
		        </tr>



                <%------------------Master Setting start----------------------%>
		        <tr>
			        <td>
                       <font size="6"><br/><br/>Master settings</font> 
			        </td>
		        </tr>
                <%------------------Master Setting end----------------------%>


		        <tr>
			        <td>
                        <a href="RegisterClient.aspx"><img src="images/button_register-clients.png" /></a>
			        </td>
			        <td>
                        <a href="ViewUpdateClient.aspx"><img src="images/button_view-update-client.png" /></a>
			        </td>
			        <td>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_view-bonus-pay.png" />
			        </td>
			        <td>
			        </td>
			        <td>
			        </td>
		        </tr>



		        <tr>
			        <td>
                        <img src="images/button_create-service.png" />
			        </td>
			        <td>
                        <a href="ViewUpdateService.aspx"><img src="images/button_view-update-service.png" /></a>
			        </td>
			        <td>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_register-employee.png" />
			        </td>
                    <td>
                        <img src="images/button_view-update-employee.png" />
                    </td>

<%--			        <td>
                        <a href="UpdateEmployees.aspx"><img src="images/button_update-employees.png" /></a>
			        </td>
			        <td>
                        <a href="ViewEmployees.aspx"><img src="images/button_view-employees.png" /></a>
			        </td>--%>
		        </tr>
		        <tr>
			        <td>
                        <img src="images/button_create-certificates.png" />
			        </td>
			        <td>
                        <img src="images/button_view-update-certificates.png" />
			        </td>
			        <td>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_create-certificate-detail.png" />
			        </td>
			        <td>
                        <img src="images/button_update-certificate-detail.png" />
			        </td>
			        <td>
                        <img src="images/button_view-certificate-detail.png" />
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <img src="images/button_create-external-agency.png" />
			        </td>
			        <td>
                        <img src="images/button_view-update-external-agency.png" />
			        </td>
			        <td>
			        </td>
		        </tr>



	        </tbody>
        </table>
    </div>
    </form>

    <br />
    <br />

</asp:Content>

