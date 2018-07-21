using HtmlAgilityPack;
using NHtmlUnit;
using NHtmlUnit.Html;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;

namespace CrawlUtils
{
    public class Program
    {       
        static void Main(string[] args)
        {
            //recommendCrawlTest();
            //recommendSelfTest();
            //recommend4NewTest();
            
            DateTime beforDT = System.DateTime.Now;

            Crawl spider = new Crawl("电脑", "utf8");
            spider.TBcrawl(1);// 爬取淘宝
            spider.JDcrawl(1);// 爬取京东
            List<Item> x = spider.get_productList();
            List<Item> y = new Sort().BubbleSort(x);
            foreach (Item i in y) { Console.WriteLine(i.title+" "+i.detailUrl); }

            DateTime afterDT = System.DateTime.Now;
            TimeSpan ts = afterDT.Subtract(beforDT);
            Console.WriteLine("DateTime总共花费{0}ms.", ts.TotalMilliseconds);
            
        }

        /* 爬虫全站点测试 */
        static void crawlAllTest()
        {
            Crawl spider = new Crawl("电脑", "utf8");

            spider.TBcrawl(1);// 爬取淘宝
            spider.JDcrawl(1);// 爬取京东

            List<Item> all = spider.get_productList();// 获取所有商品列表

            // 显示所有商品列表
            foreach (Item i in all)
            {
                Console.WriteLine("标签" + i.tag + "\n"
                                + "标题" + i.title + "\n"
                                + "价格" + i.price + "\n"
                                + "图片" + i.picUrl + "\n"
                                + "超链接" + i.detailUrl + "\n");
            }
        }

        /* 爬虫淘宝测试 */
        static void crawlTBTest()
        {
            Crawl spider = new Crawl("电脑", "utf8");

            spider.TBcrawl(1);// 爬取淘宝

            List<Item> TB = spider.get_TBproductList();// 获取淘宝商品列表

            // 显示淘宝商品列表
            foreach (Item i in TB)
            {
                Console.WriteLine("标签" + i.tag + "\n"
                                + "标题" + i.title + "\n"
                                + "价格" + i.price + "\n"
                                + "图片" + i.picUrl + "\n"
                                + "超链接" + i.detailUrl + "\n");
            }
        }

        /* 爬虫京东测试 */
        static void crawlJDTest()
        {
            Crawl spider = new Crawl("电脑", "utf8");

            spider.JDcrawl(1);// 爬取京东

            List<Item> JD = spider.get_JDproductList();// 获取京东商品列表

            // 显示京东商品列表
            foreach (Item i in JD)
            {
                Console.WriteLine("标签" + i.tag + "\n"
                                + "标题" + i.title + "\n"
                                + "价格" + i.price + "\n"
                                + "图片" + i.picUrl + "\n"
                                + "超链接" + i.detailUrl + "\n");
            }
        }

        /* 个人搜索热词统计 爬取 推荐*/
        static void recommendCrawlTest()
        {
            Recommend recotest = new Recommend("王霸天","小米手机,苹果电脑,IphoneX,NDS,U盘,华硕笔记本");//苹果手机
            //Recommend recotest = new Recommend("李狗蛋", "iPhone X,MacBook,戴尔,iPad,AirPods");//苹果笔记本电脑
            //Recommend recotest = new Recommend("王铁柱", "iPhone 6,ThinkPad,联想,三星手机,华为荣耀9");//华为手机
            //Recommend recotest = new Recommend("张二麻子", "vivo,OPPO,中兴手机,surfacebook,金士顿");//金士顿手机
            //Recommend recotest = new Recommend("李翠花", "东芝u盘,索尼移动硬盘,机械键盘,雷蛇鼠标,铁三角耳机");//东芝耳机
            //Recommend recotest = new Recommend("王霸天", "小米手机,小米笔记本电脑,华硕笔记本");//小米笔记本电脑

            string posbwd = recotest.generateKeyword();
            Console.WriteLine("recommend sys keyword:"+posbwd);
            Crawl recospider = new Crawl(posbwd, "utf8");
            recospider.TBcrawl(1);
            recospider.JDcrawl(1);
            List<Item> all = recospider.get_productList();
            foreach (Item i in all)
            {
                Console.WriteLine("标签" + i.tag + "\n"
                                + "标题" + i.title + "\n"
                                + "价格" + i.price + "\n"
                                + "图片" + i.picUrl + "\n"
                                + "超链接" + i.detailUrl + "\n");
            }
        }

        /* 个人搜索热词统计 自营 推荐 */
        static void recommendSelfTest()
        {
            Recommend recotest = new Recommend("王霸天", "小米手机,苹果电脑,IphoneX,NDS,U盘,华硕笔记本");
            string[] posbID = recotest.generateRecoSelfItem();
            foreach (string ID in posbID)
            {
                Console.WriteLine(ID);
            }
        }

        /* 个人搜索热词统计 推荐 用于初级用户（已有搜索记录） */
        static void recommend4NewTest()
        {
            Recommend[] recotest = new Recommend[6];
            recotest[0] = new Recommend("王霸天", "小米手机,苹果电脑,IphoneX,NDS,U盘,华硕笔记本");//苹果手机
            recotest[1] = new Recommend("李狗蛋", "iPhone X,MacBook,戴尔,iPad,AirPods");//苹果笔记本电脑
            recotest[2] = new Recommend("王铁柱", "iPhone 6,ThinkPad,联想,三星手机,华为荣耀9");//华为手机
            recotest[3] = new Recommend("张二麻子", "vivo,OPPO,中兴手机,surfacebook,金士顿");//金士顿手机
            recotest[4] = new Recommend("李翠花", "东芝u盘,索尼移动硬盘,机械键盘,雷蛇鼠标,铁三角耳机");//东芝耳机
            recotest[5] = new Recommend("王霸天", "小米手机,小米笔记本电脑,华硕笔记本");//小米笔记本电脑
            for (int ind = 0; ind < recotest.Length; ind++)
            {
                string posbwd = recotest[ind].generateKeyword();
                Crawl recospider = new Crawl(posbwd, "utf8");
                recospider.TBcrawl(1);
                recospider.JDcrawl(1);
                List<Item> all = recospider.get_productList();
                foreach (Item i in all)
                {
                    Console.WriteLine("标签" + i.tag + "\n"
                                    + "标题" + i.title + "\n"
                                    + "价格" + i.price + "\n"
                                    + "图片" + i.picUrl + "\n"
                                    + "超链接" + i.detailUrl + "\n");
                }
                string[] posbwds4self = recotest[ind].generateRecoSelfItem();
                foreach (string posbwd4self in posbwds4self)
                {
                    Console.WriteLine(posbwd4self);
                }
            }

        }
    }
}
