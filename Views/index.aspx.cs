using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrawlUtils;

public partial class index : System.Web.UI.Page
{
    public string userId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        if (Session["logoutFlag"] != null)
        {
            Session["UserId"] = null;
            Session.Remove("UserId");
        }
    }

    protected void Search(object sender, EventArgs e)
    {
        string keyword = s.Value;
        Crawl spider = new Crawl(keyword, "utf8");
        spider.TBcrawl();
        spider.JDcrawl();
        Session["keyword"] = keyword;
        Session["titleList"] = spider.get_titleList();
        Session["priceList"] = spider.get_priceList();
        Session["picUrList"] = spider.get_picUrList();
        Session["detailUrList"] = spider.get_detailUrList();
        Session["locList"] = spider.get_locList();
        Response.Redirect("product-list.aspx");
    }

    protected void Logout(object sender, EventArgs e)
    {
        Session["logoutFlag"] = "true";

        try
        {
            Session["UserId"] = null;
            Session.Remove("UserId");
        }
        catch { }

        Response.Redirect("index.aspx");
    }

}