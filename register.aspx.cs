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

public partial class login : System.Web.UI.Page
{
    public string strConnection;
    OleDbConnection conn = new OleDbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void update_Click(object sender, EventArgs e)
    {
        string strConnection =  @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        OleDbConnection objConnection = new OleDbConnection (strConnection); //建立连接
        objConnection.Open();
        //打开连接 
        OleDbCommand
        sqlcmd =new OleDbCommand  ("select * from user_infor where txtUserID='" + this.TextBox1.Text + "'" , objConnection);
        //sql语句 
        OleDbDataReader reader = sqlcmd.ExecuteReader();
        if (reader.HasRows)
        {
            if (this.TextBox1.Text.Trim() == reader["txtUserID"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该用户id已经注册过');</script>");

            }
        }
        objConnection.Close();
        string sqlstr = "insert into user_infor" + "(txtUserID,txtLoginName,txtPwd,txtEmail,txtSecPwd)" + "values('" + TextBox1.Text + "','" + username.Text + "','" + password.Text + "','" + email.Text + "','" + passwordaga.Text + "')";
        objConnection.Open();
        OleDbCommand cm2 = new OleDbCommand(sqlstr, objConnection);
       new OleDbCommand(sqlstr, objConnection);
        cm2.ExecuteNonQuery();
        objConnection.Close();
        Response.Write("<script>alert('注册成功');window.location.href='login.aspx';</script>");
        return;
        //执行查询 
        /* string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
         conn = new SqlConnection(strConnection);
         string sqltest = "select * from urger where txtUserID='" + this.TextBox1.Text + "'";
         conn.Open();
         SqlCommand sqlcom = new SqlCommand(sqltest, conn);
         SqlDataReader read = sqlcom.ExecuteReader();
         read.Read();
         if (read.HasRows)
         {
             if (this.TextBox1.Text.Trim() == read["txtUserID"].ToString().Trim())
             {
                 Response.Write("<script language='javascript'>alert('该用户id已经注册过');localtion='login.aspx'</script>");
                 return;

             }
         }
         conn.Close();
         string sqlstr = "insert into urger" + "(txtUserID,txtLoginName,txtPwd,txtEmail,txtSecPwd)" + "values('" + TextBox1.Text + "','" + username.Text + "','" + password.Text + "','" + email.Text + "','" + passwordaga.Text + "')";
         conn.Open();
         SqlCommand cm2 = new SqlCommand(sqlstr, conn);
         sqlcom = new
        SqlCommand(sqlstr, conn);
         cm2.ExecuteNonQuery();
         conn.Close();

         Response.Write("<script>alert('注册成功');</script>"); return;
         //Response.Redirect("denglu.aspx",true);*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = "";
        TextBox1.Text = "";
        password.Text = "";
        passwordaga.Text = "";
        email.Text = "";
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        objConnection.Open();
        
        /* string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
         conn = new SqlConnection(strConnection);

         conn.Open();*/
        string sqlstr = "select* from user_infor where txtUserID='" + this.TextBox1.Text + "'";
        OleDbCommand sqlcom = new OleDbCommand(sqlstr, objConnection);
        OleDbDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if(this.TextBox1.Text.Trim().Length == 0)
        {
            Response.Write("<script language='javascript'>alert('用户ID不得为空');</script>");
            return;
        }
        if (read.HasRows)
        {
            if (this.TextBox1.Text.Trim() == read["txtUserID"].ToString().Trim())
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
}