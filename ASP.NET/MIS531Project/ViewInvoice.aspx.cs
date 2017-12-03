using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//packages necessary to connect the database for searching
using System.Data;
using System.Data.SqlClient;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;



public partial class ViewInvoice : System.Web.UI.Page
{
    //Connect to the DB for searching
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SearchConnectionString"].ConnectionString);
    //I tried both below but both failed with different errors...
    //The following connection string info is found at Server Explore -> Properties
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=orcl;Persist Security Info=True;User ID=sealions;Password=fAj5JD,q0; Unicode=True"].ConnectionString);
    //Instead of System.Data.SqlClient.SqlConnection,  Use System.Data.OracleClient.OracleConnection
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMIS531TeamProject"].ConnectionString);

    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMIS531TeamProject"].ConnectionString);

    //userful source: http://hensa40.cutegirl.jp/archives/838


    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;

        //Initially, we do Not want to show the calendars
        if (!IsPostBack)
        {
            CalendarStartDate.Visible = false;
            CalendarEndDate.Visible = false;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;


    }

    protected void PaidOrNotPaid_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void InvoiceViewFiltered_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InvoiceViewNoFilter_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBoxIssueDateStartIcon_Click(object sender, ImageClickEventArgs e)
    {
        //if the calendar box is already visible, we hide it by clickign the calendar icon
        if (CalendarStartDate.Visible)
        {
            CalendarStartDate.Visible = false;
        }
        else
        {
            CalendarStartDate.Visible = true;
            CalendarEndDate.Visible = false;
        }
    }

    protected void CalendarStartDate_SelectionChanged(object sender, EventArgs e)
    {
        //if we choose a date in the calendar, we want to show the date on the textbox
        TextBoxIssueDateStart.Text = CalendarStartDate.SelectedDate.ToString("dd-MMM-yyyy");
        //hide the calender 
        CalendarStartDate.Visible = false;

    }

    protected void TextBoxIssueDateEndIcon_Click(object sender, ImageClickEventArgs e)
    {

        //if the calendar box is already visible, we hide it by clickign the calendar icon
        if (CalendarEndDate.Visible)
        {
            CalendarEndDate.Visible = false;
        }
        else
        {
            CalendarEndDate.Visible = true;
            CalendarStartDate.Visible = false;
        }
    }

    protected void TextBoxIssueDateStart_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CalendarEndDate_SelectionChanged(object sender, EventArgs e)
    {
        //if we choose a date in the calendar, we want to show the date on the textbox
        TextBoxIssueDateEnd.Text = CalendarEndDate.SelectedDate.ToString("dd-MMM-yyyy");
        //hide the calender 
        CalendarEndDate.Visible = false;

    }

    protected void ButtonSearchByIssueDate_Click(object sender, EventArgs e)
    {
        //seach tables by clicking the button
        string find =
            @"SELECT
            I.INVOICE_NUMBER
	        , ISSUE_DATE
	        , PAYMENT_DATE
	        , COALESCE(com.government_id, ind.ssn) AS & quot; Public ID&quot;
	        , C.CLIENT_ID
	        , CLIENT_NAME
	        , BILL_AMOUNT
	        , DISBURSEMENT_AMOUNT
	        , TYPING_FEE
	        , WITHHELD_INCOME_TAX
	        , TOTAL_AMOUNT
	        , paid_or_not, e.emp_id, first_name || last_name as & quot; Employee & quot;
        FROM
            INVOICES I LEFT OUTER JOIN MONEY_RECEIVED M ON(I.INVOICE_NUMBER = M.INVOICE_NUMBER)

                LEFT OUTER JOIN PAYMENTS P ON (P.PAYMENT_ID = M.PAYMENT_ID)

                LEFT OUTER JOIN CLIENTS C ON(I.CLIENT_ID = C.CLIENT_ID)

                LEFT OUTER JOIN COMPANIES COM ON(C.CLIENT_ID = COM.CLIENT_ID)

                LEFT OUTER JOIN INDIVIDUALS IND ON(C.CLIENT_ID = IND.CLIENT_ID)

                LEFT OUTER JOIN EMPLOYEES E ON(I.EMP_ID = E.EMP_ID)

            WHERE(&quot; PAID_OR_NOT & quot; = :PAID_OR_NOT)

            and ISSUE_DATE between @TextBoxIssueDateStart AND @TextBoxIssueDateEnd

            ORDER BY INVOICE_NUMBER
            "
            ;



        //commented out just for presentation.This part includes bugs.
        //SqlCommand comm = new SqlCommand(find, con);
        OracleCommand comm = new OracleCommand(find, con);

        //this may be correct
        //comm.Parameters.Add("@TextBoxIssueDateStart", SqlDbType.NVarChar).Value = TextBoxIssueDateStart.Text;
        //comm.Parameters.Add("@TextBoxIssueDateEnd", SqlDbType.NVarChar).Value = TextBoxIssueDateEnd.Text;
        //There is unsolved bug here ...
        comm.Parameters.Add("@TextBoxIssueDateStart", SqlDbType.Date).Value = TextBoxIssueDateStart.Text.ToString();
        comm.Parameters.Add("@TextBoxIssueDateEnd", SqlDbType.Date).Value = TextBoxIssueDateEnd.Text;

        //Open up the connection
        con.Open();
        comm.ExecuteNonQuery();
        //establish the adapter, establishing the connection to the gridview in the front end page
        //SqlDataAdapter da = new SqlDataAdapter();
        OracleDataAdapter da = new OracleDataAdapter();

        da.SelectCommand = comm;


        DataSet ds = new DataSet();
        //The column name to filter
        da.Fill(ds, "ISSUE_DATE");

        //link it to the grid
        InvoiceViewFiltered.DataSource = ds;
        //Bind the data to the grid view
        InvoiceViewFiltered.DataBind();

        //close the connection
        con.Close();



    }
}