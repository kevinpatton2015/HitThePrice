using HtmlAgilityPack;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;

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
        private List<Item> TBproductList = new List<Item>();
        private List<Item> JDproductList = new List<Item>();

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

        public List<Item> get_TBproductList()
        { return TBproductList; }

        public List<Item> get_JDproductList()
        { return JDproductList; }

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
        public void TBcrawl(int ppage)
        {
            List<string> Title = new List<string>();
            List<string> Price = new List<string>();
            List<string> Img = new List<string>();
            List<string> Detail = new List<string>();

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

            for (int page = ppage+1; page <= ppage+3; page++)
            {
                string url = String.Format("https://s.taobao.com/search?q={0}&ie={1}&s={2}", keyword, ie, page.ToString());
                string TBhtml = GetHtml(url);

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
                { locList.Add(match.ToString().Remove(0, 11).Replace("\"", "")); }

                for (int num = 0; num < Title.Count; num++)
                {
                    Item item = new Item("淘宝", Title[num], Price[num], Img[num], Detail[num]);
                    productList.Add(item);
                    TBproductList.Add(item);
                }
            }
        }

        /* 获取京东商品品名、价格、图片、超链接 */
        public void JDcrawl(int ppage)
        {
            for (int page = ppage+1; page <= ppage+3; page++)
            {
                string url = String.Format("https://search.jd.com/Search?keyword={0}&enc={1}&page={2}", keyword, ie, page);

                HtmlWeb web = new HtmlWeb();
                HtmlAgilityPack.HtmlDocument doc = web.Load(url);
                String body = "\"J_goodsList\"";
                String header = @"//*[@id=" + body + "]";
                HtmlNodeCollection nodes = doc.DocumentNode.SelectNodes(header + "/ul/li");
                int i = 1;
                foreach (HtmlNode node in nodes)
                {
                    Item product = null;
                    try
                    {
                        titleList.Add(node.SelectSingleNode("./div/div[3]/a").InnerText.Trim());
                        priceList.Add(node.SelectSingleNode("./div/div[2]/strong/i").InnerText);
                        picUrList.Add(node.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("source-data-lazy-img", ""));
                        detailUrList.Add("https://item.jd.com/" + node.GetAttributeValue("data-sku", "") + ".html");

                        product = new Item("京东",
                                                node.SelectSingleNode("./div/div[3]/a").InnerText.Trim(),
                                                node.SelectSingleNode("./div/div[2]/strong/i").InnerText,
                                                node.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("source-data-lazy-img", ""),
                       "https://item.jd.com/" + node.GetAttributeValue("data-sku", "") + ".html");
                    }
                    catch (NullReferenceException)
                    {
                        titleList.Add(node.SelectSingleNode("./div/div[4]/a").InnerText.Trim());
                        priceList.Add(node.SelectSingleNode("./div/div[3]/strong/i").InnerText);
                        picUrList.Add(node.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("source-data-lazy-img", ""));
                        detailUrList.Add("https://item.jd.com/" + node.GetAttributeValue("data-sku", "") + ".html");

                        product = new Item("京东",
                                                node.SelectSingleNode("./div/div[4]/a").InnerText.Trim(),
                                                node.SelectSingleNode("./div/div[3]/strong/i").InnerText,
                                                node.SelectSingleNode("./div/div[1]/a/img").GetAttributeValue("source-data-lazy-img", ""),
                       "https://item.jd.com/" + node.GetAttributeValue("data-sku", "") + ".html");
                    }
                    finally
                    {
                        i++;
                        productList.Add(product);
                        JDproductList.Add(product);
                    }
                }
            }
        }
	
        /* 获取苏宁商品品名、图片、价格 */
        public void SNcrawl()
        {
            string url = String.Format("https://search.suning.com/{0}/",keyword);
            HtmlDocument doc = new HtmlDocument();

            foreach (HtmlNode item in doc.DocumentNode.SelectNodes("//div[@class='product-box']"))
            {
                titleList.Add(item.SelectSingleNode("./div[2]/div[2]/a").GetAttributeValue("title",""));
                detailUrList.Add(item.SelectSingleNode("./div[2]/div[2]/a").GetAttributeValue("href", ""));

                /* Price Process Begin */
                string td = item.SelectSingleNode("./div[2]/div[2]/a").GetAttributeValue("href", "");
                string ID = td.Substring(td.Length-15, 9);
                string Purl = String.Format("https://ds.suning.cn/ds/generalForTile/000000000{0}_-021--0000000000---ds.jsonp?callback=ds",ID);

                System.Net.WebRequest wReq = System.Net.WebRequest.Create(Purl);
                System.Net.WebResponse wResp = wReq.GetResponse();
                System.IO.Stream respStream = wResp.GetResponseStream();
                string data = "";
                using (System.IO.StreamReader reader = new System.IO.StreamReader(respStream, Encoding.GetEncoding("utf-8")))
                {
                    data = reader.ReadToEnd();
                }
                data = Regex.Unescape(data);
                /* Price Process End */

                priceList.Add("0");
                picUrList.Add(item.SelectSingleNode("//div[@class='res-img']/div[@class='img-block']/a/img").GetAttributeValue("src2", ""));

                Item product = new Item("苏宁",
                        item.SelectSingleNode("//div[2]/div[2]/a").GetAttributeValue("title", ""),
                        "0",
                        item.SelectSingleNode("./div[@class='res-img']/div[@class='img-block']/a/img").GetAttributeValue("src2", ""),
                        item.SelectSingleNode("//div[2]/div[2]/a").GetAttributeValue("href", ""));
                productList.Add(product);

            }
        }
        
        /* 获取网页源码 淘宝使用 */
        private string GetHtml(string url)
        {
            WebClient wc = new WebClient();
            wc.Encoding = Encoding.UTF8;
            string html = wc.DownloadString(url);
            return html;
        }

        /* 获取苏宁Json */
        public static string GetHttpResponse(string url, int Timeout)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "GET";
            request.ContentType = "text/html;charset=UTF-8";
            request.UserAgent = "Mozilla / 5.0";
            request.Host = "ds.suning.cn";
            request.Timeout = Timeout;

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream myResponseStream = response.GetResponseStream();
            StreamReader myStreamReader = new StreamReader(myResponseStream, Encoding.GetEncoding("utf-8"));
            string retString = myStreamReader.ReadToEnd();
            myStreamReader.Close();
            myResponseStream.Close();

            return retString;
        }        
    }
}