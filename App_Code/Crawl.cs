using HtmlAgilityPack;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
/// Crawl 的摘要说明
/// </summary>
/// 
namespace CrawlUtils
{ 
    public class Crawl
    {
        private string keyword;// 关键字
        private string ie;// 编码格式

        private List<Item> productList = new List<Item>();
        private ArrayList titleList = new ArrayList();
        private ArrayList priceList = new ArrayList();
        private ArrayList picUrList = new ArrayList();
        private ArrayList detailUrList = new ArrayList();
        private ArrayList locList = new ArrayList();

        public Crawl(string keyword, string ie)
        {
            this.keyword = keyword;
            this.ie = ie;
        }

        public List<Item> get_productList()
        { return productList; }

        public ArrayList get_titleList()
        { return titleList; }

        public ArrayList get_priceList()
        { return priceList; }

        public ArrayList get_picUrList()
        { return picUrList; }

        public ArrayList get_detailUrList()
        { return detailUrList; }

        public ArrayList get_locList()
        { return locList; }

        /* 获取淘宝商品品名、价格、图片、超链接、地区 */
        public void TBcrawl()
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
            List<string> Title = new List<string>();
            List<string> Price = new List<string>();
            List<string> Img = new List<string>();
            List<string> Detail = new List<string>();
            foreach (Match match in Regex.Matches(TBhtml, title))
            {
                titleList.Add(match.ToString().Remove(0, 12).Replace("\"", ""));
                Title.Add(match.ToString().Remove(0, 12).Replace("\"", ""));

            }
            foreach (Match match in Regex.Matches(TBhtml, price))
            {
                priceList.Add(match.ToString().Remove(0, 13).Replace("\"", ""));
                Price.Add(match.ToString().Remove(0, 13).Replace("\"", ""));
            }

            foreach (Match match in Regex.Matches(TBhtml, picUrl))
            {
                picUrList.Add(match.ToString().Remove(0, 10).Replace("\"", ""));
                Img.Add(match.ToString().Remove(0, 10).Replace("\"", ""));
            }
            foreach (Match match in Regex.Matches(TBhtml, detailUrl))
            {
                detailUrList.Add(match.ToString().Remove(0, 13).Replace("\"", "").Replace("\\u0026", "&").Replace("\\u003d", "="));
                Detail.Add(match.ToString().Remove(0, 13).Replace("\"", "").Replace("\\u0026", "&").Replace("\\u003d", "="));
            }

            foreach (Match match in Regex.Matches(TBhtml, loc))
                locList.Add(match.ToString().Remove(0, 11).Replace("\"", ""));

            for(int num = 0; num < Title.Count; num++) { productList.Add(new Item("淘宝",Title[num],Price[num],Img[num],Detail[num])); }

        }

        /* 获取京东商品品名、价格、图片、超链接 */
        public void JDcrawl()
        {
            string url = String.Format("https://search.jd.com/Search?keyword={0}&enc={1}", keyword, ie);

            HtmlWeb web = new HtmlWeb();
            HtmlDocument doc = web.Load(url);
 
            foreach (HtmlNode item in doc.DocumentNode.SelectNodes("//li[@class='gl-item']"))
            {
                titleList.Add(item.SelectSingleNode("./div/div[3]/a/em/text()").InnerText);
                priceList.Add(item.SelectSingleNode("./div/div[2]/strong/i").InnerText);
                picUrList.Add(item.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("src", ""));
                detailUrList.Add(item.SelectSingleNode("./div/div[1]/a").GetAttributeValue("href",""));

                Item product = new Item("京东",
                                        item.SelectSingleNode("./div/div[3]/a/em/text()").InnerText, 
                                        item.SelectSingleNode("./div/div[2]/strong/i").InnerText,
                                        item.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("src", ""),
                                        item.SelectSingleNode("./div/div[1]/a").GetAttributeValue("href", ""));
                productList.Add(product);
                //item.SelectSingleNode("./div/@data-sku").InnerText;
                //HtmlNode shopname = item.SelectSingleNode("./div/div[@class='p-shop']/@data-shop_name");
            }
        }
	
        /* 获取苏宁商品品名、图片、价格 */
        public void SNcrawl()
        {
            string url = String.Format("https://search.suning.com//{0}//",keyword);

            HtmlWeb web = new HtmlWeb();
            HtmlDocument doc = web.Load(url);

            foreach (HtmlNode item in doc.DocumentNode.SelectNodes("//*[@class='product-box']"))
            {
                titleList.Add(item.SelectSingleNode("./div[@class='res-info']/div[@class='title-selling-point']/a").GetAttributeValue("title",""));
                detailUrList.Add(item.SelectSingleNode("./div[@class='res-info']/div[@class='title-selling-point']/a").GetAttributeValue("href", ""));
                priceList.Add(item.SelectSingleNode("./div[@class='res-info']/div[@class='price box']/span/i/text()"));
                picUrList.Add(item.SelectSingleNode("./div[@class='res-img']/div[@class='img-block']/a/img").GetAttributeValue("src2", ""));

            }
        }

        /* 获取网页源码 淘宝使用 */
        public  string GetHtml(string url)
        {
            WebClient wc = new WebClient();
            wc.Encoding = Encoding.UTF8;
            string html = wc.DownloadString(url);
            return html;
        }

    }
}