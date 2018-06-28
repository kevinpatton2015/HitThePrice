using Aop.Api;
using Aop.Api.Domain;
using Aop.Api.Request;
using CrawlUtils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkout : System.Web.UI.Page
{
    public string userId;
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
            Session["titleList"] = spider.get_titleList();
            Session["priceList"] = spider.get_priceList();
            Session["picUrList"] = spider.get_picUrList();
            Session["detailUrList"] = spider.get_detailUrList();
            Session["locList"] = spider.get_locList();
            Response.Redirect("product-list.aspx");
        }
    }

    protected void Pay(object sender, EventArgs e)
    {
        DefaultAopClient client = new DefaultAopClient(config.gatewayUrl, config.app_id, config.private_key, "json", "1.0", config.sign_type, config.alipay_public_key, config.charset, false);

        // 外部订单号，商户网站订单系统中唯一的订单号
        string out_trade_no = DateTime.Now.ToString("yyyyMMddHHmmss");
        // 订单名称
        string subject = "#";
        // 付款金额
        string total_amout = "0.01";
        // 商品描述
        string body = "#";

        // 组装业务参数model
        AlipayTradePagePayModel model = new AlipayTradePagePayModel();
        model.Body = body;
        model.Subject = subject;
        model.TotalAmount = total_amout;
        model.OutTradeNo = out_trade_no;
        model.ProductCode = "FAST_INSTANT_TRADE_PAY";

        AlipayTradePagePayRequest payRequest = new AlipayTradePagePayRequest();
        //payRequest.SetReturnUrl("blank.aspx");
        payRequest.SetBizModel(model);
        string form = client.pageExecute(payRequest).Body;
        Response.Write("<script> alert('Success');</script>");
        Response.Write(form);
    }
}