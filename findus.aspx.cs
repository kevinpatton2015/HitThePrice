using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wy_findus : System.Web.UI.Page
{
    public string userId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] != null)
        { userId = Session["userID"].ToString(); }
    }
}