using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


public partial class CalcBonus_aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalcQuarterlyBonusButton_Click(object sender, EventArgs e)
    {
        //connect the button with the data source
        //ToolboxDataAttribute: make sure if this works
        calculate_quarter_bonus_procedure.Select(DataSourceSelectArguments.Empty);

        //Empty the input textboxes empty
        YearTextBox.Text = string.Empty;
        QuarterTextBox.Text = string.Empty;

        //System.Media.SystemSounds.Beep.Play();
        //MessageBox.Show("the stored procedure for Bonus finished", "", MessageBoxButtons.OK);

    }
}