using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class wy_surfacebook : System.Web.UI.Page
{
    public string strConnection;
    SqlConnection conn;
    public string name = null;
    public string userId = null;
    public string time = "10";
    public int inttime = 10;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        { name = Session["name"].ToString(); }
        if (Session["time"] != null)
        { time = Session["time"].ToString(); }
        int.TryParse(time, out inttime);
        if (Session["userID"] != null)
        { userId = Session["userID"].ToString(); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
        string sqltest = "select * from urger where txtUserID='" + this.TextBox1.Text + "'";
        conn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);
        SqlDataReader read = sqlcom.ExecuteReader();
        conn.Close();
        string sqlstr = "insert into PRISURBO"+ "(PRISURBO,ID)" + "values('"+TextBox1.Text+ "',"+name+ ")";
        conn.Open();
        SqlCommand cm2 = new SqlCommand(sqlstr, conn);
        sqlcom = new
       SqlCommand(sqlstr, conn);
        cm2.ExecuteNonQuery();

        conn.Close();
        Response.Write("<script>alert('报价成功');</script>");
        return;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}