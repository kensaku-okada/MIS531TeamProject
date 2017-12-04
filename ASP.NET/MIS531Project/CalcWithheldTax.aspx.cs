using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;


public partial class CalcWithheldTax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void WithHeldTaxIncomeGridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void WithHeldTaxIncomeStoredProcedure_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void CalcWithHeldTaxIncomeButton_Click(object sender, EventArgs e)
    {

        //make a beep sound
        //System.Media.SystemSounds.Beep.Play();
        //MessageBox.Show("the stored procedure started", "", MessageBoxButtons.OK);

        //connect the button with the data source
        //ToolboxDataAttribute: make sure if this works
        CalculateWithheldtaxStoredProcedure.Select(DataSourceSelectArguments.Empty);

        //Theme following DB connection fails...
        //string CS = ConfigurationManager.ConnectionStrings["ConnectionStringMIS531TeamProject"].ConnectionString;
        ////using (SqlConnection con = new SqlConnection(CS))
        //using (SqlConnection con = new SqlConnection(@"Data Source=orcl;Persist Security Info=True;User ID=sealions;Password=fAj5JD,q0"))
        //{
        //    SqlCommand cmd = new SqlCommand("calculate_withheld_tax", con);
        //    cmd.CommandType = System.Data.CommandType.StoredProcedure;

        //    //Add parameters to the procedure
        //    cmd.Parameters.AddWithValue("@due_date", WithHeldTaxIncomeDueDateTextBox.Text);

        //    //Open the connection
        //    con.Open();
        //    cmd.ExecuteNonQuery();

        //} 

        //Empty the input textbox empty
        WithHeldTaxIncomeDueDateTextBox.Text = string.Empty;

        //System.Media.SystemSounds.Beep.Play();
        //MessageBox.Show("the stored procedure for withheld tax income finished", "", MessageBoxButtons.OK);

    }

    protected void RefreshWidhheldTaxResult_Click(object sender, EventArgs e)
    {
        //connect the button with the data source
        calculate_withheld_tax_grid_viewSQL.Select(DataSourceSelectArguments.Empty);
        //reload the gridview
        calculate_withheld_tax_grid_viewSQL.DataBind();
    }

    protected void CalculateWithheldtaxStoredProcedure_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}