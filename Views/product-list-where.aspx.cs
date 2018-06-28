using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_list_where :  System.Web.UI.Page
{
    public string userId;
    public string where;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        if (Request["s"] != null)
        { string keyword = Request.Form["s"]; }

        where = HttpContext.Current.Request.QueryString["where"];
        Product_Load(where);
    }

    private void Product_Load(string where)
    {
        
    }

}