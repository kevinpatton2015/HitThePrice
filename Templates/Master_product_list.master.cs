using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_list_master : System.Web.UI.MasterPage
{
	public int pagenum = 1;
    public string breadcrumb = "%%%";
    public string pagetitle = "***";
    public string[] brand = { "&&&", "&&&", "&&&", "&&&" };
    public string[] fullname = { "###", "###", "###", "###" };
    public string[] product_src = { "?", "?", "?", "?" };
    public string[] price = { "$$", "$$", "$$", "$$" };

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
