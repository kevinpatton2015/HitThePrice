using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 单品 : System.Web.UI.Page
{
    public string userId;
    public static int amount = 10;
    public static int price = 20001;
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
            flag++;
            if (flag>1)
            {
                price += amount;
                Session["price"] = price;
                Session["flag"] = flag;
            }
        }
        else
        {
            Session["price"] = price;
            flag = 0;
            Session["flag"] = flag;
        }
    }

}