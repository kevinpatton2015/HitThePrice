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

public partial class re : System.Web.UI.Page
{
    public string strConnection;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");


        OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        objConnection.Open();
        string sqltest = "select * from user_infor where txtUserID='" + this.TextBox1.Text + "'";
        string sqltest2 = "select * from user_infor where txtPwd='" + this.TextBox2.Text + "'";
        OleDbCommand sqlcom = new OleDbCommand(sqltest, objConnection);

        OleDbDataReader read = sqlcom.ExecuteReader();

        read.Read();

        if (read.HasRows)
        {
            if (this.TextBox1.Text.Trim() == read["txtUserID"].ToString().Trim())
            {
                if (this.TextBox2.Text.Trim() == read["txtPwd"].ToString().Trim())
                {
                    Response.Write("<script language='javascript'>alert('登录成功');</script>");
                    Session["UserId"] = this.TextBox1.Text.Trim();
                    if (IsPostBack)
                    {
                        Response.Write("<script>window.location.href='index.aspx';</script>");
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
        objConnection.Close();
        /*string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
       
        conn.Open();
       
    }*/
    }

    protected void Direct2Register(object sender, EventArgs e)
    {
        Session["Phone"] = phone_number.Value;
        if (Session["Phone"].ToString()!= null)
        {
            Response.Write("<script>alert('即将跳转到注册页');window.location.href='register.aspx';</script>");
        }

    }
}