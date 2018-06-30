using System;
using System.Web;

public partial class Master_order : System.Web.UI.MasterPage
{
    public static int ORDER_NUMBER = 0;
    public static int MAX_ORDER_NUMBER = 1000;
    public Order[] order = new Order[ORDER_NUMBER];
    public string[] order_pic = new string[ORDER_NUMBER];
    public string[] order_href = new string[ORDER_NUMBER];
    public string[] order_price = new string[ORDER_NUMBER];
    public string[] order_title = new string[ORDER_NUMBER];

    protected void Page_Load(object sender, EventArgs e)
    {
       if(Request["order"] != null)
       {
            ORDER_NUMBER = int.Parse(Request.Form["order"]);
            order = new Order[ORDER_NUMBER];
       }
        ORDER_NUMBER = int.Parse(HttpContext.Current.Request.QueryString["order_num"]);
        order = new Order[ORDER_NUMBER];
        order_pic = new string[ORDER_NUMBER];
        order_href = new string[ORDER_NUMBER];
        order_price = new string[ORDER_NUMBER];
        order_title = new string[ORDER_NUMBER];

        for (int i = 0; i < ORDER_NUMBER; i++)
        {
            order_pic[i] = "https://img1.360buyimg.com/n7/jfs/t18148/200/634988197/246557/dcc015f9/5a9cb40cNefd80812.jpg";
            order_href[i] = "https://re.jd.com/cps/item/5825376.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=774b4bab757b44b5bb2f0b0a7bc88eef&abt=3";
            order_title[i] = "苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机";
            order_price[i] = "7749.00";
        }

    }
}
