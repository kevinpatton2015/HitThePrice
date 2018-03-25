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
public partial class index : System.Web.UI.Page
{
    public string userId;

    public ArrayList titleList = new ArrayList();
    public ArrayList priceList = new ArrayList();
    public ArrayList picUrList = new ArrayList();
    public ArrayList detailUrList = new ArrayList();
    public ArrayList locList = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

    }

    protected void Search(object sender, EventArgs e)
    {
        string keyword = s.Value;
        TBcrawl(keyword, "utf8");
        Response.Write(titleList[0]);
    }

    public void TBcrawl(string keyword,string ie)
    {
        string page_num = "1";

        string title = "\"raw_title\":\"([^\"]+)\"";
        string price = "\"view_price\":\"([^\"]+)\"";
        string picUrl = "\"pic_url\":\"([^\"]+)\"";
        string detailUrl = "\"detail_url\":\"([^\"]+)\"";
        string loc = "\"item_loc\":\"([^\"]+)\"";
        Regex titleMatch = new Regex(title);
        Regex priceMatch = new Regex(price);
        Regex picUrlMatch = new Regex(picUrl);
        Regex detailUrlMatch = new Regex(detailUrl);
        Regex locMatch = new Regex(loc);

        string url = String.Format("https://s.taobao.com/search?q={0}&ie={1}&s={2}", keyword, ie, page_num);
        string TBhtml = GetHtml(url);
        //string res= "";
        foreach (Match match in Regex.Matches(TBhtml, title))
            titleList.Add(match.ToString().Remove(0, 12).Replace("\"", ""));
            //res += match.ToString().Remove(0, 12).Replace("\"", "");
        foreach (Match match in Regex.Matches(TBhtml, price))
            priceList.Add(match.ToString().Remove(0, 13).Replace("\"", ""));
            //res += match.ToString().Remove(0, 13).Replace("\"", "");
        foreach (Match match in Regex.Matches(TBhtml, picUrl))
            picUrList.Add(match.ToString().Remove(0, 10).Replace("\"", ""));
            //res += match.ToString().Remove(0, 10).Replace("\"", "");
        foreach (Match match in Regex.Matches(TBhtml, detailUrl))
            detailUrList.Add(match.ToString().Remove(0, 13).Replace("\"", "").Replace("\\u0026", "&").Replace("\\u003d", "="));
            //res += match.ToString().Remove(0, 13).Replace("\"", "").Replace("\\u0026", "&").Replace("\\u003d", "=");
        foreach (Match match in Regex.Matches(TBhtml, loc))
            locList.Add(match.ToString().Remove(0, 11).Replace("\"", ""));
            //res += match.ToString().Remove(0, 11).Replace("\"", "");

        //return res;
    }

    //获取网页源码
    public static string GetHtml(string url)
    {
        WebClient wc = new WebClient();
        wc.Encoding = Encoding.UTF8;
        string html = wc.DownloadString(url);
        return html;
    }

}