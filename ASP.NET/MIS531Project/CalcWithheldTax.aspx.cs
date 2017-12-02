using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        //connect the button with the data source
        WithHeldTaxIncomeStoredProcedure.Select(DataSourceSelectArguments.Empty); 
        //Empty the input textbox empty

    }
}