using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Survey_Summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FirstnameResult.Text = (String)Session["FirstName"];
        LastnameResult.Text = (String)Session["LastName"];
        addressResult.Text = (String)Session["Address"];
        cityResult.Text = (String)Session["City"];
        stateResult.Text = (String)Session["State"];
    }
}