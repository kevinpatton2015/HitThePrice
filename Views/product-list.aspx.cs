using CrawlUtils;
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

public partial class product_list : System.Web.UI.Page
{
    public string userId;
    public string keyword;
    public ArrayList tagList;
    public ArrayList titleList;
    public ArrayList priceList;
    public ArrayList picUrList;
    public ArrayList detailUrList;
    public ArrayList locList;
    public List<Item> itemList;
    public List<Item> sortedList;
    
    public int page = 1;
    public string currentPage = "1";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        if (Session["logoutFlag"] != null)
        {
            Session["UserId"] = null;
            Session.Remove("UserId");
        }
        if (Request["s"] != null)
        {
            string keyword = Request.Form["s"];
            Crawl spider = new Crawl(keyword, "utf8");
            spider.TBcrawl();
            spider.JDcrawl();
            Session["keyword"] = keyword;
            Session["productList"] = spider.get_productList();
            Session["titleList"] = spider.get_titleList();
            Session["priceList"] = spider.get_priceList();
            Session["picUrList"] = spider.get_picUrList();
            Session["detailUrList"] = spider.get_detailUrList();
            Session["locList"] = spider.get_locList();
            Response.Redirect("product-list.aspx");
        }
		if(HttpContext.Current.Request.QueryString["page"]!=null)
		{
			page = int.Parse(HttpContext.Current.Request.QueryString["page"]);	
			currentPage = page.ToString();
		}
        try
        {
            keyword = Session["keyword"].ToString();
            pagetitle.InnerText = keyword + "信息";
            proList.InnerText = keyword;

            tagList = (ArrayList)Session["tagList"];
            titleList = (ArrayList)Session["titleList"];
            priceList = (ArrayList)Session["priceList"];
            picUrList = (ArrayList)Session["picUrList"];
            detailUrList = (ArrayList)Session["detailUrList"];
            locList = (ArrayList)Session["locList"];
            itemList = (List<Item>)Session["productList"];
           
            sortedList = new Sort().BubbleSort(itemList);

            //string tag = "华硕电脑,华硕笔记本,宏基笔记本,苹果笔记本,华硕显卡,华硕FX50J";
            string tag = "苹果电脑,神舟笔记本,西门子冰箱,三星笔记本,英伟达GPU";
            //string tag = "苹果电脑";
            if (userId != null)
            {
                Recommend reco = new Recommend(userId, tag);
                string recoKeyword = reco.generateKeyword();
                Crawl recoSpider = new Crawl(recoKeyword, "utf8");
                recoSpider.TBcrawl();
                recoSpider.JDcrawl();
            }
        }
        catch(Exception)
        {
            if (userId != null)
            {
                string tag = "华硕电脑,华硕笔记本,宏基笔记本,苹果笔记本,华硕显卡,华硕FX50J";
                Recommend reco = new Recommend(userId, tag);
            }
            // reco.User_Item_Reco(Session["UserId"].ToString());
            //ScriptEngine engine = Python.CreateEngine();
            //ScriptScope scope = engine.CreateScope();
            //scope.SetVariable("user_id", Session["user_id"].ToString());
            //scope.SetVariable("user_type", usertype);
            //ScriptSource script = engine.CreateScriptSourceFromFile(@"../App_Code/RecoEngine.py");
            //var result = script.Execute(scope);
        }
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