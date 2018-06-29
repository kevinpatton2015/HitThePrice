using System;

public partial class Master_order : System.Web.UI.MasterPage
{
    public static int ORDER_NUMBER = 0;
    public static int MAX_ORDER_NUMBER = 1000;
    public Order[] order = new Order[ORDER_NUMBER];

    protected void Page_Load(object sender, EventArgs e)
    {
       if(Request["order"] != null)
        {
            ORDER_NUMBER = int.Parse(Request.Form["order"]);
            order = new Order[ORDER_NUMBER];
        }
    }
}
