using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Templates_product_details : System.Web.UI.MasterPage
{
    public string title_name = "苹果Apple iPhone X - HitThePrice - 价格再低一点";
    public string breadcrumb = "手机数码";
    public string pagetitle = "手机";
    public string product_name = "iPhone X";
    public string product_fullname = "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机";
    public string[] description = { "品牌：苹果手机", "上市时间：2017年10月", "网络制式：全网通4G", "操作系统：苹果IOS", "屏幕尺寸：5.1英寸-5.9英寸", "主摄像头：1200万像素", "存储内存：64GB", "运行内存：2GB" };
    public string product_src = "../images/content/products/iphonex-1.jpg";
    public string Lprice = "7749.00";
    public string[] other_fullname = 
        { "【华东爽购】Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机",
            "Apple iPhone X 64G 深空灰 全网通4G手机",
            "Apple 苹果 手机 iPhone X 深空灰色 64G",
            "【华东爽购】Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机",
            "Apple iPhone X 64G 深空灰 全网通4G手机",
            "Apple 苹果 手机 iPhone X 深空灰色 64G",
            "【华东爽购】Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机",
            "Apple iPhone X 64G 深空灰 全网通4G手机",
            "Apple 苹果 手机 iPhone X 深空灰色 64G" };
    public string[] other_price = { "7749.00", "7888.00", "7947.00", "7749.00", "7888.00", "7947.00", "7749.00", "7888.00", "7947.00" };
    public string[] other_brand = {"京东","国美", "亚马逊", "京东", "国美", "亚马逊", "京东", "国美", "亚马逊" };

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
