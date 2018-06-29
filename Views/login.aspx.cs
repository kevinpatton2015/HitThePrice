using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CrawlUtils;

public partial class re : System.Web.UI.Page
{
    public string strConnection;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
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

    protected void Button1_Click(object sender, EventArgs e)
    {     
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;";
        conn = new SqlConnection(strConnection);
        conn.Open();
        //string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("../App_Data/userchec.mdb");
        //OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        //objConnection.Open();
        string sqltest = "select * from user_infor where txtUserID='" + this.TextBox1.Text + "'";
        string sqltest2 = "select * from user_infor where txtPwd='" + this.TextBox2.Text + "'";
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);
        SqlDataReader read = sqlcom.ExecuteReader();

        //OleDbCommand sqlcom = new OleDbCommand(sqltest, objConnection);

        //OleDbDataReader read = sqlcom.ExecuteReader();

        read.Read();

        if (read.HasRows)
        {
            if (this.TextBox1.Text.Trim() == read["txtUserID"].ToString().Trim())
            {
                if (this.TextBox2.Text.Trim() == encrypt(read["txtPwd"].ToString().Trim(),8))
                {
                    Response.Write("<script language='javascript'>alert('登录成功');</script>");
                    Session["UserId"] = this.TextBox1.Text.Trim();
                    if (IsPostBack)
                    {
                        if (this.TextBox1.Text.Trim()=="Administrator")
                        {
                            Response.Write("<script>window.location.href='background.aspx';</script>");
                        }else{
                            Response.Write("<script>window.location.href='index.aspx';</script>");
                        }
                    }
                    Session["name"] = TextBox1.Text;
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('ID或密码有误');</script>");
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('ID或密码有误');</script>");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('ID或密码有误');</script>");
        }
        conn.Close();
        //objConnection.Close();      
    }

    protected void Direct2Register(object sender, EventArgs e)
    {
        Session["Phone"] = phone_number.Value;
        if (Session["Phone"].ToString()!= null)
        {
            Response.Write("<script>alert('即将跳转到注册页');window.location.href='register.aspx';</script>");
        }

    }

    //加密算法
    public string encrypt(string raw, int offset)
    {
        string CaserCode = "";
        foreach (char c in raw)
        {
            int letter = Convert.ToInt32(c);
            if ((letter >= 97 && letter <= 122 - 8) || (letter >= 65 && letter <= 90 - 8))//大写字母小写字母放在一起做判断
                letter += offset;
            if ((letter >= 122 - 8 && letter <= 122) || (letter >= 90 - 8 && letter <= 90))
                letter -= 26 - offset;
            char result = Convert.ToChar(letter);
            CaserCode += result;
        }
        return CaserCode;
    }

    //字符转换
    private int AscII(string str)
    {
        byte[] array = new byte[1];
        array = System.Text.Encoding.ASCII.GetBytes(str);
        int asciicode = (short)(array[0]);
        return asciicode;
    }
}