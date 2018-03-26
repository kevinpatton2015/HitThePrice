using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_list : System.Web.UI.Page
{
    public string userId;
    public string keyword;

    public ArrayList titleList = new ArrayList();
    public ArrayList priceList = new ArrayList();
    public ArrayList picUrList = new ArrayList();
    public ArrayList detailUrList = new ArrayList();
    public ArrayList locList = new ArrayList();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        { userId = Session["UserId"].ToString(); }

        try
        {
            keyword = Session["keyword"].ToString();
            pagetitle.InnerText = keyword + "信息";

            titleList = (ArrayList)Session["titleList"];
            priceList = (ArrayList)Session["priceList"];
            picUrList = (ArrayList)Session["picUrList"];
            detailUrList = (ArrayList)Session["detailUrList"];
            locList = (ArrayList)Session["locList"];

            title1.InnerText = titleList[0].ToString();
            title2.InnerText = titleList[1].ToString();
            title3.InnerText = titleList[2].ToString();
            title4.InnerText = titleList[3].ToString();

            price1.InnerText = priceList[0].ToString();
            price2.InnerText = priceList[1].ToString();
            price3.InnerText = priceList[2].ToString();
            price4.InnerText = priceList[3].ToString();

            img1.Src = picUrList[0].ToString();
            img2.Src = picUrList[1].ToString();
            img3.Src = picUrList[2].ToString();
            img4.Src = picUrList[3].ToString();

            imghref1.HRef = detailUrList[0].ToString();
            imghref2.HRef = detailUrList[1].ToString();
            imghref3.HRef = detailUrList[2].ToString();
            imghref4.HRef = detailUrList[3].ToString();

            title1.HRef = detailUrList[0].ToString();
            title2.HRef = detailUrList[1].ToString();
            title3.HRef = detailUrList[2].ToString();
            title4.HRef = detailUrList[3].ToString();

            recommendtitle1.InnerText = titleList[6].ToString();
            recommendtitle2.InnerText = titleList[9].ToString();

            recommendprice1.InnerText = priceList[6].ToString();
            recommendprice2.InnerText = priceList[9].ToString();

            recommendimg1.Src = picUrList[6].ToString();
            recommendimg2.Src = picUrList[9].ToString();
        }
        catch(Exception)
        {

        }
    }
}