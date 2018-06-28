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
    public ArrayList titleList;
    public ArrayList priceList;
    public ArrayList picUrList;
    public ArrayList detailUrList;
    public ArrayList locList;
    public List<Item> itemList;
    public List<Item> sortedList;
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
            Session["titleList"] = spider.get_titleList();
            Session["priceList"] = spider.get_priceList();
            Session["picUrList"] = spider.get_picUrList();
            Session["detailUrList"] = spider.get_detailUrList();
            Session["locList"] = spider.get_locList();
            Response.Redirect("product-list.aspx");
        }
        try
        {
            keyword = Session["keyword"].ToString();
            pagetitle.InnerText = keyword + "信息";
            proList.InnerText = keyword;
            
            titleList = (ArrayList)Session["titleList"];
            priceList = (ArrayList)Session["priceList"];
            picUrList = (ArrayList)Session["picUrList"];
            detailUrList = (ArrayList)Session["detailUrList"];
            locList = (ArrayList)Session["locList"];

            itemList = new List<Item>();
            for(int i = 0; i < titleList.Count; i++)
            {itemList.Add(new Item("", titleList[i].ToString(), priceList[i].ToString(), picUrList[i].ToString(), detailUrList[i].ToString()));}
           
            sortedList = new Sort().BubbleSort(itemList);
            string tag = "华硕电脑,华硕笔记本,宏基笔记本,苹果笔记本,华硕显卡,华硕FX50J";
            Recommend reco = new Recommend(tag);
            string recoKeyword = reco.generateKeyword();
            Crawl recoSpider = new Crawl(recoKeyword, "utf8");
            recoSpider.TBcrawl();
            recoSpider.JDcrawl();

            recommendtitle1.InnerText = titleList[6].ToString();
            recommendtitle2.InnerText = titleList[9].ToString();

            recommendtitle1.InnerText = recoSpider.get_titleList().ToArray()[0].ToString();
            recommendtitle2.InnerText = recoSpider.get_titleList().ToArray()[1].ToString();

            recommendprice1.InnerText = priceList[6].ToString();
            recommendprice2.InnerText = priceList[9].ToString();

            recommendprice1.InnerText = recoSpider.get_priceList().ToArray()[0].ToString();
            recommendprice2.InnerText = recoSpider.get_priceList().ToArray()[1].ToString();

            recommendimg1.Src = picUrList[6].ToString();
            recommendimg2.Src = picUrList[9].ToString();

            recommendimg1.Src = recoSpider.get_picUrList().ToArray()[0].ToString();
            recommendimg2.Src = recoSpider.get_picUrList().ToArray()[1].ToString();
        }
        catch(Exception)
        {

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