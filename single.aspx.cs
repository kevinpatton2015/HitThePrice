using Aop.Api;
using Aop.Api.Domain;
using Aop.Api.Request;
using Aop.Api.Response;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 单品 : System.Web.UI.Page
{
    public string userId;
    public static int price = 20001;
    public static int amount;
    public static int flag = 0;
    public string[] pro_title =
           {
        "Macbook",
        "Surfacebook",
        "SurfacebookInnovation",
        "Macbook detail",
        "Macbook",
        "meizublue",
        "三星s9",
        "thinkpad",
        "oppo",
        "mibook",
        "meizu",
        "iphonex",
        "honor"

    };
    public string[] img_src =
        {
        "images/macbookdata.jpg",
        "images/surfacebook.jpg",
        "images/SurfaceBookInnovation.jpg",
        "images/macbookdata.jpg",
        "images/surfacebook.jpg",
        "images/shopdetail/meizublue.jpg",
        "images/shopdetail/三星s9.jpg",
        "images/shopdetail/thinkpad.jpg",
        "images/shopdetail/oppo.jpg",
        "images/shopdetail/mibook.jpg",
        "images/shopdetail/meizu.jpg",
        "images/shopdetail/iphonex.jpg",
        "images/shopdetail/honor.jpg"
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] != null)
        {
            userId = Session["userID"].ToString();
            if (flag > 0)
            {
                Session["price"] = price;
                Session["flag"] = flag;
            }
            else
            {
                Session["price"] = price;
                flag = 0;
                Session["flag"] = flag;
            }
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DefaultAopClient client = new DefaultAopClient(config.gatewayUrl, config.app_id, config.private_key, "json", "1.0", config.sign_type, config.alipay_public_key, config.charset, false);

        // 外部订单号，商户网站订单系统中唯一的订单号
        string out_trade_no = DateTime.Now.ToString("yyyyMMddHHmmss");
        // 订单名称
        string subject = "我靠";
        // 付款金额
        string total_amout = "0.01";
        // 商品描述
        string body = "12321345645";

        // 组装业务参数model
        AlipayTradePagePayModel model = new AlipayTradePagePayModel();
        model.Body = body;
        model.Subject = subject;
        model.TotalAmount = total_amout;
        model.OutTradeNo = out_trade_no;
        model.ProductCode = "FAST_INSTANT_TRADE_PAY";

        AlipayTradePagePayRequest payRequest = new AlipayTradePagePayRequest();
        payRequest.SetBizModel(model);
        string form = client.pageExecute(payRequest).Body;
        Response.Write("<script> alert('Success');</script>");
        Response.Write(form);
    }
}