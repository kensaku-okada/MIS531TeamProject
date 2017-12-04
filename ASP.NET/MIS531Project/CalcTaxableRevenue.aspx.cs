using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;



public partial class CalcTaxtableIncome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalcTaxtableIncomeButton_Click(object sender, EventArgs e)
    {
        //connect the button with the data source
        calculateAnnualTaxableRevenueProcedure.Select(DataSourceSelectArguments.Empty);

        //Empty the input textboxes empty
        //CalcTaxtableRevenueYearTextBox.Text = string.Empty;

        //System.Media.SystemSounds.Beep.Play();
        //MessageBox.Show("the stored procedure for annutal taxable revenue finished", "", MessageBoxButtons.OK);

    }
}