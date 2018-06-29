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
using System.Text.RegularExpressions;

public partial class re : System.Web.UI.Page
{
    public string strConnection;
    //OleDbConnection conn = new OleDbConnection();
	SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Phone"]!=null)
        {
            string phone = Session["Phone"].ToString();
            billing_phone.Value = phone;
        }

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

    protected void Submit2Back(object sender, EventArgs e)
    {
        string Name = billing_name.Value;
        string Password = encrypt(billing_password.Value, 8);
        string Address = billing_address_1.Value;
        string City = billing_city.ToString();
        string Postcode = billing_postcode.ToString();
        string EmailAddress = billing_email.ToString();
        string Phone = billing_phone.ToString();
        if (login(Name, Password, Address, City, Postcode, EmailAddress, Phone))
        {
            Response.Write("<script>alert('注册成功');window.location.href='login.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('用户已注册');window.location.href='register.aspx';</script>");
        }
               
    }

    public bool login(string Name,string Password,string Address,string City,string Postcode,string EmailAddress,string Phone)
    {
		string strConnection = "Server=.;database=USER; Integrated Security=SSPI;";
        conn = new SqlConnection(strConnection);	
        //string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("../App_Data/userchec.mdb");
        //OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接

        //写入用户信息到数据库
        bool IsSuccess = true;
        try
        {
            string sqlstr = "insert into user_infor" + "(txtUserID,txtLoginName,txtPwd,txtEmail,txtSecPwd)" + "values('" + Name + "','" + Name + "','" + Password + "','" + EmailAddress + "','" + Password + "')";
            //objConnection.Open();//打开连接
			//OleDbCommand cmd = new OleDbCommand(sqlstr, objConnection);
			conn.Open();
			SqlCommand sqlcom = new SqlCommand(sqlstr, conn);
            //cmd.ExecuteNonQuery();
			sqlcom.ExecuteNonQuery();
        }
        catch (System.Data.OleDb.OleDbException)
        {
            IsSuccess = false;
            Response.Write("<script>alert('用户已注册');window.location.href='register.aspx';</script>");
        }
        catch (System.Data.SqlClient.SqlException)
        {
            IsSuccess = false;
            Response.Write("<script>alert('用户已注册');window.location.href='register.aspx';</script>");
        }
        finally
        {
            //objConnection.Close();
            conn.Close();
            if (IsSuccess == true)
            {
                Response.Write("<script>alert('注册成功');window.location.href='login.aspx';</script>");
            }
        }
        //写入结束
        return IsSuccess;
    }

    protected void CheckIsRegistered(object sender, EventArgs e)
    {
        string Name = billing_name.Value;
		
        //string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        //OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        //objConnection.Open();
		
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;";
        conn = new SqlConnection(strConnection);
        conn.Open();
        string sqlstr = "select* from user_infor where txtUserID='" + Name + "'";
        //OleDbCommand sqlcom = new OleDbCommand(sqlstr, objConnection);
		//OleDbDataReader read = sqlcom.ExecuteReader();
		SqlCommand sqlcom = new SqlCommand(sqlstr, conn);
		SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (Name.Trim().Length == 0)
        {
            Response.Write("<script language='javascript'>alert('用户ID不得为空');</script>");
            return;
        }
        if (read.HasRows)
        {
            if (Name.Trim() == read["txtUserID"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该用户ID已注册');</script>");
                return;
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('该用户ID可用');</script>");
        }
        read.Close();
        conn.Close();
    }

    //加密算法
    public string encrypt(string raw,int offset)
    {
        string CaserCode = "";
        foreach (char c in raw)
        {
            int letter = Convert.ToInt32(c);
            if ((letter >= 97 && letter <= 122- offset) || (letter >= 65 && letter <= 90- offset))//大写字母小写字母放在一起做判断
                letter += offset;
            if ((letter >= 122- offset && letter <= 122) || (letter >= 90-offset && letter <= 90))
                letter -= 26-offset;
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
