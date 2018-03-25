using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about : System.Web.UI.Page
{
    public string userId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

    }
}