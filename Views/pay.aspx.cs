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
    public static int order_num = 0;
    public string total_amout = "0.01";
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
    }

    protected void Pay(object sender, EventArgs e)
    {
        DefaultAopClient client = new DefaultAopClient(config.gatewayUrl, config.app_id, config.private_key, "json", "1.0", config.sign_type, config.alipay_public_key, config.charset, false);
        string PID = HttpContext.Current.Request.QueryString["product"];
        // 外部订单号，商户网站订单系统中唯一的订单号
        string out_trade_no = DateTime.Now.ToString("yyyyMMddHHmmss");
        // 订单名称
        string subject = "#";
        // 付款金额
        string total_amout = "0.01";
        total_amout = Get_Total(PID);
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
        order_num++;
        Response.Write(form);
        Response.Redirect("order.aspx?PID=" + PID+"&order_num=" + order_num);
    }

    private string Get_Total(string PID)
    {
        string TOTAL = "0.01";
        switch (PID)
        {
            case "1":
                // 付款金额
                TOTAL = "7749.00";
                break;
            case "2":
                // 付款金额
                TOTAL = "6299.00";
                break;
            case "3":
                // 付款金额
                TOTAL = "6699.00";
                break;
            case "4":
                // 付款金额
                TOTAL = "1699.00";
                break;
            case "5":
                // 付款金额
                TOTAL = "7888.00";
                break;
            case "6":
                // 付款金额
                TOTAL = "2779.00";
                break;
            case "7":
                // 付款金额
                TOTAL = "12850.00";
                break;
            case "8":
                // 付款金额
                TOTAL = "2999.00";
                break;
            case "9":
                // 付款金额
                TOTAL = "79.00";
                break;
            case "10":
                // 付款金额
                TOTAL = "5488.00";
                break;
            case "11":
                // 付款金额
                TOTAL = "59.00";
                break;
            case "12":
                // 付款金额
                TOTAL = "3699.00";
                break;
            case "13":
                // 付款金额
                TOTAL = "138.00";
                break;
            case "14":
                // 付款金额
                TOTAL = "2279.00";
                break;
            case "15":
                // 付款金额
                TOTAL = "2488.00";
                break;
            default:
                TOTAL = "0.01";
                break;

        }
        return TOTAL;
    }
}