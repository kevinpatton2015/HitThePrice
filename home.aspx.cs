using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class home : System.Web.UI.Page
{
	public string[] pro_title = {"Macbook","Surfacebook","SurfacebookInnovation","Macbook", "Surfacebook", "SurfacebookInnovation" };
	public string[] img_src = {"images/macbookdata.jpg", "images/surfacebook.jpg","images/SurfaceBookInnovation.jpg", "images/macbookdata.jpg", "images/surfacebook.jpg", "images/SurfaceBookInnovation.jpg"};
    public string userId;
    protected void Page_Load(object sender, EventArgs e)
    {       
        if (Session["userID"] != null)
        { userId = Session["userID"].ToString(); }
       
    }
}