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
    OleDbConnection conn = new OleDbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
   //     billing_company.Value = Session["Phone"].ToString();
    }

    protected void Submit2Back(object sender, EventArgs e)
    {
        string Name = billing_name.Value;
        string Password = billing_password.Value;
        string Company = billing_company.Value;
        string Address = billing_address_1.Value;
        string Address2 = billing_address_2.Value;
        string City = billing_city.ToString();
        string Postcode = billing_postcode.ToString();
        string EmailAddress = billing_email.ToString();
        string Phone = billing_phone.ToString();

        string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        objConnection.Open();
        //打开连接 
        OleDbCommand
        sqlcmd = new OleDbCommand("select * from user_infor where txtUserID='" + Name + "'", objConnection);
        //sql语句 
        OleDbDataReader reader = sqlcmd.ExecuteReader();
        if (reader.HasRows)
        {
            if (Name.Trim() == reader["txtUserID"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该用户id已注册');</script>");

            }
        }
        objConnection.Close();
        string sqlstr = "insert into user_infor" + "(txtUserID,txtLoginName,txtPwd,txtEmail,txtSecPwd)" + "values('" + Name + "','" + Name + "','" + Password + "','" + EmailAddress + "','" + Password + "')";
        objConnection.Open();
        OleDbCommand cm2 = new OleDbCommand(sqlstr, objConnection);
        new OleDbCommand(sqlstr, objConnection);
        cm2.ExecuteNonQuery();
        objConnection.Close();
        Response.Write("<script>alert('注册成功');window.location.href='login.aspx';</script>");
        return;

    }
}
