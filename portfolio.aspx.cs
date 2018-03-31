﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 自营商城 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["s"] != null)
        {
            string keyword = Request.Form["s"];
            Crawl spider = new Crawl(keyword, "utf8");
            spider.TBcrawl();
            Session["keyword"] = keyword;
            Session["titleList"] = spider.get_titleList();
            Session["priceList"] = spider.get_priceList();
            Session["picUrList"] = spider.get_picUrList();
            Session["detailUrList"] = spider.get_detailUrList();
            Session["locList"] = spider.get_locList();
            Response.Redirect("product-list.aspx");
        }
    }
}