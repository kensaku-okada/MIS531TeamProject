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
                        <span class="auto-style2">Register a new payment (fill in the payment data here <br/> when Elite pay or receive money)</span>
			        </td>
			        <td>
                        <a href="UpdatePayment.aspx"><img src="images/button_update-payment.png" /><br/></a>
                        <span class="auto-style2">Update a existing payment (all the payment data when <br/> Elite pay or receive money) </span>
			        </td>
			        <td>
                        <a href="ViewPayment.aspx"><img src="images/button_view-payment.png" /><br/></a>
                        <span class="auto-style2">View payment methods (all the payment data when Elite pay <br/> or receive money)</span>
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
                        <a href="CreatePaymentOut.aspx"><img src="images/button_create-payment-out.png" /></a>
			        </td>
			        <td>
                        <a href="UpdatePaymentOut.aspx"><img src="images/button_update-payment-out.png" /></a>
			        </td>
			        <td>
                        <a href="ViewPaymentOut.aspx"><img src="images/button_view-payment-out.png" /></a>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <a href="CreateExternalPayment.aspx"><img src="images/button_create-external-payment.png" /></a>
			        </td>
			        <td>
                        <a href="UpdateExternalPayment.aspx"><img src="images/button_update-external-payment.png" /></a>
			        </td>
			        <td>
                        <a href="ViewExternalPayment.aspx"><img src="images/button_view-external-payment.png" /></a>
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
                        <a href="ViewUpdateBonusPay.aspx"><img src="images/button_view-bonus-pay.png" /></a>
			        </td>
			        <td>
			        </td>
			        <td>
			        </td>
		        </tr>

		        <tr>
			        <td>
                        <a href="CreateService.aspx"><img src="images/button_create-service.png" /></a>
			        </td>
			        <td>
                        <a href="ViewUpdateService.aspx"><img src="images/button_view-update-service.png" /></a>
			        </td>
			        <td>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <a href="CreateEmployee.aspx"><img src="images/button_register-employee.png" /></a>
			        </td>
                    <td>
                        <a href="ViewUpdateEmployee.aspx"><img src="images/button_view-update-employee.png" /></a>
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
                        <img src="images/button_create-certificates.png" /> <br/> In progress...
			        </td>
			        <td>
                        <img src="images/button_view-update-certificates.png" /> <br/> In progress...
			        </td>
			        <td>
			        </td>
		        </tr>
                <tr>
			        <td>
                        <img src="images/button_create-certificate-detail.png" /> <br/> In progress...
			        </td>
			        <td>
                        <img src="images/button_update-certificate-detail.png" /> <br/> In progress...
			        </td>
			        <td>
                        <img src="images/button_view-certificate-detail.png" /> <br/> In progress...
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <a href="CreateExternalAgency.aspx"><img src="images/button_create-external-agency.png" /> </a>
			        </td>
			        <td>
                        <a href="ViewUpdateExternalAgency.aspx"><img src="images/button_view-update-external-agency.png" /></a>
			        </td>
			        <td>
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <img src="images/button_create-training-program.png" /> <br/>In progress...
			        </td>
			        <td>
                        <img src="images/button_view-training-program.png" /> <br/>In progress...
			        </td>
			        <td>
			        </td>
		        </tr>
		        <tr>
			        <td>
                        <img src="images/button_create-feedback.png" /> <br/>In progress...
			        </td>
			        <td>
                        <img src="images/button_view-update-feedback.png" /> <br/>In progress...
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

