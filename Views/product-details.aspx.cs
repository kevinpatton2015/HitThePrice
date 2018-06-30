using CrawlUtils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_details : System.Web.UI.Page
{
    public string userId;
    public int which;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        if (Request["s"] != null)
        {
            string keyword = Request.Form["s"];
            Crawl spider = new Crawl(keyword, "utf8");
            spider.TBcrawl();
            Session["keyword"] = keyword;
            Session["productList"] = spider.get_productList();
            Session["titleList"] = spider.get_titleList();
            Session["priceList"] = spider.get_priceList();
            Session["picUrList"] = spider.get_picUrList();
            Session["detailUrList"] = spider.get_detailUrList();
            Session["locList"] = spider.get_locList();
            Response.Redirect("product-list.aspx");
        }
        which = int.Parse(HttpContext.Current.Request.QueryString["product"]);
        Details_Load(which);
    }

    private void Details_Load(int which)
    {
        switch (which)
        {
            case 1:
                break;
            case 2:
                ((Templates_product_details)Master).title_name = "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑";
                ((Templates_product_details)Master).breadcrumb = "电脑、配件";
                ((Templates_product_details)Master).pagetitle = "笔记本电脑";
                ((Templates_product_details)Master).product_name = "华硕飞行堡垒FX63学生吃鸡游戏本";
                ((Templates_product_details)Master).product_fullname = "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-9.jpg";
                ((Templates_product_details)Master).Lprice = "6299.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "华硕飞行堡垒FX63学生吃鸡游戏本";
                        ((Templates_product_details)Master).other_price[i] = "6299.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑";
                        ((Templates_product_details)Master).other_price[i] = "6299.00";
                    }
                }
                break;
            case 3:
                ((Templates_product_details)Master).title_name = "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "手机";
                ((Templates_product_details)Master).product_name = "Samsung/三星 Galaxy S9+手机";
                ((Templates_product_details)Master).product_fullname = "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-2.jpg";
                ((Templates_product_details)Master).Lprice = "6699.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "Samsung/三星 Galaxy S9+手机";
                        ((Templates_product_details)Master).other_price[i] = "6699.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机";
                        ((Templates_product_details)Master).other_price[i] = "6699.00";
                    }
                }
                break;
            case 4:
                ((Templates_product_details)Master).title_name = "Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游";
                ((Templates_product_details)Master).breadcrumb = "摄影、摄像";
                ((Templates_product_details)Master).pagetitle = "单反相机";
                ((Templates_product_details)Master).product_name = "Sony/索尼 DSC-H400 佳能 单反相机";
                ((Templates_product_details)Master).product_fullname = "Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-17.jpg";
                ((Templates_product_details)Master).Lprice = "1699.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游";
                        ((Templates_product_details)Master).other_price[i] = "1699.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "Sony/索尼 DSC-H400 佳能 单反相机";
                        ((Templates_product_details)Master).other_price[i] = "1699.00";
                    }
                }
                break;
            case 5:
                ((Templates_product_details)Master).title_name = "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";
                ((Templates_product_details)Master).breadcrumb = "电脑、配件";
                ((Templates_product_details)Master).pagetitle = "笔记本电脑";
                ((Templates_product_details)Master).product_name = " MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";
                ((Templates_product_details)Master).product_fullname = "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-10.jpg";
                ((Templates_product_details)Master).Lprice = "7888.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";
                        ((Templates_product_details)Master).other_price[i] = "7888.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2";
                        ((Templates_product_details)Master).other_price[i] = "7888.00";
                    }
                }
                break;
            case 6:
                ((Templates_product_details)Master).title_name = "当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "手机";
                ((Templates_product_details)Master).product_name = "华为 P20 pro 手机";
                ((Templates_product_details)Master).product_fullname = "当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-3.jpg";
                ((Templates_product_details)Master).Lprice = "5488.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "华为 P20 pro 手机正品官方旗舰店p20plus";
                        ((Templates_product_details)Master).other_price[i] = "5488.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus";
                        ((Templates_product_details)Master).other_price[i] = "5488.00";
                    }
                }
                break;
            case 7:
                ((Templates_product_details)Master).title_name = "佳能 EOS100D 18-55 入门级白色单反相机kissX7 高清数码旅游";
                ((Templates_product_details)Master).breadcrumb = "摄影摄像";
                ((Templates_product_details)Master).pagetitle = "单反相机";
                ((Templates_product_details)Master).product_name = "佳能 EOS100D 18-55 入门级白色单反相机";
                ((Templates_product_details)Master).product_fullname = "佳能 EOS100D 18-55 入门级白色单反相机kissX7 高清数码旅游";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-18.jpg";
                ((Templates_product_details)Master).Lprice = "2779.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "佳能 EOS100D 18-55 入门级白色单反相机kissX7 高清数码旅游";
                        ((Templates_product_details)Master).other_price[i] = "2779.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "佳能 EOS100D 18-55 入门级白色单反相机";
                        ((Templates_product_details)Master).other_price[i] = "2779.00";
                    }
                }
                break;
            case 8:
                ((Templates_product_details)Master).title_name = "2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15";
                ((Templates_product_details)Master).breadcrumb = "电脑、配件";
                ((Templates_product_details)Master).pagetitle = "笔记本电脑";
                ((Templates_product_details)Master).product_name = "2017新款Apple/苹果 MacBook Pro 国行笔记本电脑13寸15";
                ((Templates_product_details)Master).product_fullname = "2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-11.jpg";
                ((Templates_product_details)Master).Lprice = "12850.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15";
                        ((Templates_product_details)Master).other_price[i] = "12850.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "苹果 MacBook Pro 国行笔记本电脑13寸15";
                        ((Templates_product_details)Master).other_price[i] = "12850.00";
                    }
                }
                break;
            case 9:
                ((Templates_product_details)Master).title_name = "OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "手机";
                ((Templates_product_details)Master).product_name = "OPPO R15 oppor15手机";
                ((Templates_product_details)Master).product_fullname = "OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-4.jpg";
                ((Templates_product_details)Master).Lprice = "2999.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "Samsung/三星 Galaxy S9+手机";
                        ((Templates_product_details)Master).other_price[i] = "2999.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机";
                        ((Templates_product_details)Master).other_price[i] = "2999.00";
                    }
                }
                break;
            case 10:
                ((Templates_product_details)Master).title_name = "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "移动电源";
                ((Templates_product_details)Master).product_name = "罗马仕 sense4 正品10000+毫安移动电源";
                ((Templates_product_details)Master).product_fullname = "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-5.jpg";
                ((Templates_product_details)Master).Lprice = "79.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源";
                        ((Templates_product_details)Master).other_price[i] = "79.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源";
                        ((Templates_product_details)Master).other_price[i] = "79.00";
                    }
                }
                break;
            case 11:
                ((Templates_product_details)Master).title_name = "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10";
                ((Templates_product_details)Master).breadcrumb = "电脑、配件";
                ((Templates_product_details)Master).pagetitle = "平板电脑";
                ((Templates_product_details)Master).product_name = "2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10";
                ((Templates_product_details)Master).product_fullname = "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-12.jpg";
                ((Templates_product_details)Master).Lprice = "2488.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10";
                        ((Templates_product_details)Master).other_price[i] = "2488.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "苹果 9.7英寸ipad智能平板电脑A10";
                        ((Templates_product_details)Master).other_price[i] = "2488.00";
                    }
                }
                break;
            case 12:
                ((Templates_product_details)Master).title_name = "ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "移动电源";
                ((Templates_product_details)Master).product_name = "罗马仕 sense4 正品10000+毫安移动电源";
                ((Templates_product_details)Master).product_fullname = "ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-6.jpg";
                ((Templates_product_details)Master).Lprice = "59.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "罗马仕 sense4 正品10000+毫安移动电源";
                        ((Templates_product_details)Master).other_price[i] = "59.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝";
                        ((Templates_product_details)Master).other_price[i] = "59.00";
                    }
                }
                break;
            case 13:
                ((Templates_product_details)Master).title_name = "照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS";
                ((Templates_product_details)Master).breadcrumb = "摄影、摄像";
                ((Templates_product_details)Master).pagetitle = "数码相机";
                ((Templates_product_details)Master).product_name = "迷你卡片机Canon/佳能 PowerShot SX730 HS";
                ((Templates_product_details)Master).product_fullname = "照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-19.jpg";
                ((Templates_product_details)Master).Lprice = "2279.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS";
                        ((Templates_product_details)Master).other_price[i] = "2279.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "迷你卡片机Canon/佳能 PowerShot SX730 HS";
                        ((Templates_product_details)Master).other_price[i] = "2279.00";
                    }
                }
                break;
            case 14:
                ((Templates_product_details)Master).title_name = "酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏";
                ((Templates_product_details)Master).breadcrumb = "电脑、配件";
                ((Templates_product_details)Master).pagetitle = "笔记本电脑";
                ((Templates_product_details)Master).product_name = "酷睿i5四核GTX1060独显台式机组装电脑主机整机";
                ((Templates_product_details)Master).product_fullname = "酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-13.jpg";
                ((Templates_product_details)Master).Lprice = "3699.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "酷睿i5四核GTX1060独显台式机组装电脑主机整机";
                        ((Templates_product_details)Master).other_price[i] = "3699.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏";
                        ((Templates_product_details)Master).other_price[i] = "3699.00";
                    }
                }
                break;
            case 15:
                ((Templates_product_details)Master).title_name = "卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源";
                ((Templates_product_details)Master).breadcrumb = "手机数码";
                ((Templates_product_details)Master).pagetitle = "移动电源";
                ((Templates_product_details)Master).product_name = "华硕飞行堡垒FX63学生吃鸡游戏本";
                ((Templates_product_details)Master).product_fullname = "卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源";

                ((Templates_product_details)Master).product_src = "../images/content/products/p-7.jpg";
                ((Templates_product_details)Master).Lprice = "138.00";
                for (int i = 0; i < 9; i++)
                {
                    if ((i + which) % 2 == 0)
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源";
                        ((Templates_product_details)Master).other_price[i] = "138.00";
                    }
                    else
                    {
                        ((Templates_product_details)Master).other_fullname[i] = "卡片式充电宝苹果通用个性创意定制便携";
                        ((Templates_product_details)Master).other_price[i] = "138.00";
                    }
                }
                break;
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