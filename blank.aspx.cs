using System;
using System.Collections.Generic;
using Aop.Api.Util;
using System;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pro_wy_blank : System.Web.UI.Page
{
    public int price;
    public int amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Dictionary<string, string> sArray = GetRequestPost();
        if (sArray.Count != 0)
        {
            bool flag = AlipaySignature.RSACheckV1(sArray, config.alipay_public_key, config.charset, config.sign_type, false);
            if (flag)
            {
                //交易状态
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //请务必判断请求时的total_amount与通知时获取的total_fee为一致的
                //如果有做过处理，不执行商户的业务程序

                //注意：
                //退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
                string trade_status = Request.Form["trade_status"];

                Response.Write("success");
            }
            else
            {
                Response.Write("fail");
            }
        }
    }

    public Dictionary<string, string> GetRequestPost()
    {
        int i = 0;
        Dictionary<string, string> sArray = new Dictionary<string, string>();
        NameValueCollection coll;
        //coll = Request.Form;
        coll = Request.Form;
        String[] requestItem = coll.AllKeys;
        for (i = 0; i < requestItem.Length; i++)
        {
            sArray.Add(requestItem[i], Request.Form[requestItem[i]]);
        }
        return sArray;

    }
}