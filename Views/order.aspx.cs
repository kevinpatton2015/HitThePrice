using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_order : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string PID = HttpContext.Current.Request.QueryString["product"];
        int ORDER_NUMBER = int.Parse(HttpContext.Current.Request.QueryString["order_num"]);
        ((Master_order)Master).order = new Order[ORDER_NUMBER];
        ((Master_order)Master).order_pic = new string[ORDER_NUMBER];
        ((Master_order)Master).order_href = new string[ORDER_NUMBER];
        ((Master_order)Master).order_price = new string[ORDER_NUMBER];
        ((Master_order)Master).order_title = new string[ORDER_NUMBER];
        for (int i = 0; i < ORDER_NUMBER; i++)
        {
            ((Master_order)Master).order[i] = Get_Order(PID);
            ((Master_order)Master).order_pic[i] = "https://img1.360buyimg.com/n7/jfs/t18148/200/634988197/246557/dcc015f9/5a9cb40cNefd80812.jpg";
            ((Master_order)Master).order_href[i] = "https://re.jd.com/cps/item/5825376.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=774b4bab757b44b5bb2f0b0a7bc88eef&abt=3";
            ((Master_order)Master).order_price[i] = "7749.00";
            ((Master_order)Master).order_title[i] = "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机";
        }
    }

    private Order Get_Order(string PID)
    {
        Order data;
        switch (PID)
        {
            case "1":
                data = new Order(1, "https://img1.360buyimg.com/n7/jfs/t18148/200/634988197/246557/dcc015f9/5a9cb40cNefd80812.jpg", "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机", "1", "包邮", "7749.00");
                break;
            case "2":
                data = new Order(2, "../images/content/products/p-9.jpg", "【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑", "1", "包邮", "6299.00");
                break;
            case "3":
                data = new Order(3, "../images/content/products/p-2.jpg", "12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机", "1", "包邮", "6699.00");
                break;
            case "4":
				data = new Order(4, "../images/content/products/p-17.jpg", "Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游", "1", "包邮", "1699.00");
                break;
            case "5":
				data = new Order(5, "../images/content/products/p-10.jpg", "Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2", "1", "包邮", "7888.00");
                break;
            case "6":
				data = new Order(6, "../images/content/products/p-3.jpg", "当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus", "1", "包邮", "5488.00");
                break;
            case "7":
				data = new Order(7, "../images/content/products/p-18.jpg", "佳能 EOS100D 18-55 入门级白色单反相机kissX7 高清数码旅游", "1", "包邮", "2779.00");
                break;
            case "8":
				data = new Order(8, "../images/content/products/p-11.jpg", "2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15", "1", "包邮", "12850.00");
                break;
            case "9":
				data = new Order(9, "../images/content/products/p-4.jpg", "OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus", "1", "包邮", "2999.00");
                break;
            case "10":
				data = new Order(10, "../images/content/products/p-5.jpg", "【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源", "1", "包邮", "79.00");
                break;
            case "11":
				data = new Order(11, "../images/content/products/p-12.jpg", "【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10", "1", "包邮", "2488.00");
                break;
            case "12":
				data = new Order(12, "../images/content/products/p-6.jpg", "ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝", "1", "包邮", "59.00");
                break;
            case "13":
				data = new Order(13, "../images/content/products/p-19.jpg", "照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS", "1", "包邮", "2279.00");
                break;
            case "14":
				data = new Order(14, "../images/content/products/p-13.jpg", "酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏", "1", "包邮", "3699.00");
                break;
            case "15":
				data = new Order(15, "../images/content/products/p-7.jpg", "卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源", "1", "包邮", "138.00");
                break;
            default:
				data = new Order(-1, "https://img1.360buyimg.com/n7/jfs/t18148/200/634988197/246557/dcc015f9/5a9cb40cNefd80812.jpg", "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机", "1", "包邮", "7749.00");
                break;

        }
        return data;
    }
}