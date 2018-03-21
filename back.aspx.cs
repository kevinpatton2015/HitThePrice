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

public partial class back : System.Web.UI.Page
{
    public string price;
    public string id;
    public string price1;
    public string id1;
    public string price2;
    public string id2;
    public string price3;
    public string id3;
   
    public string strConnection;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["time"] = TextBox1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
        string sqltest = "select max(PRIMAC)from data_table";
        conn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);

        SqlDataReader dr = sqlcom.ExecuteReader();
        if (dr.Read())
        {
            price =dr[0].ToString();
        }
        conn.Close();
        string sqltest2 = "select ID from data_table where PRIMAC='"+price+"'";
        conn.Open();
        SqlCommand sqlcom2 = new SqlCommand(sqltest2, conn);

        SqlDataReader dr2 = sqlcom2.ExecuteReader();
        if (dr2.Read())
        {
            id = dr2[0].ToString();
        }
        conn.Close();
        Response.Write("ID:");Response.Write(id);
        Response.Write("报价：");Response.Write(price);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
        string sqltest = "select max(PRISURBO)from PRISURBO";
        conn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);

        SqlDataReader dr = sqlcom.ExecuteReader();
        if (dr.Read())
        {
            price = dr[0].ToString();
        }
        conn.Close();
        string sqltest2 = "select ID from PRISURBO where PRISURBO='" + price + "'";
        conn.Open();
        SqlCommand sqlcom2 = new SqlCommand(sqltest2, conn);

        SqlDataReader dr2 = sqlcom2.ExecuteReader();
        if (dr2.Read())
        {
            id = dr2[0].ToString();
        }
        conn.Close();
        Response.Write("ID:"); Response.Write(id);
        Response.Write("报价："); Response.Write(price);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
        string sqltest = "select max(PRISURDI)from PRISURDI";
        conn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);

        SqlDataReader dr = sqlcom.ExecuteReader();
        if (dr.Read())
        {
            price = dr[0].ToString();
        }
        conn.Close();
        string sqltest2 = "select ID from PRISURDI where PRISURDI='" + price + "'";
        conn.Open();
        SqlCommand sqlcom2 = new SqlCommand(sqltest2, conn);

        SqlDataReader dr2 = sqlcom2.ExecuteReader();
        if (dr2.Read())
        {
            id = dr2[0].ToString();
        }
        conn.Close();
        Response.Write("ID:"); Response.Write(id);
        Response.Write("报价："); Response.Write(price);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string strConnection = "Server=.;database=USER; Integrated Security=SSPI;"; ;
        conn = new SqlConnection(strConnection);
        string sqltest = "select max(PRISURPE)from PRISURPE";
        conn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, conn);

        SqlDataReader dr = sqlcom.ExecuteReader();
        if (dr.Read())
        {
            price3 = dr[0].ToString();
        }
        conn.Close();
    
        string sqltest2 = "select ID from PRISURPE where PRISURPE='" + price3 + "'";
        conn.Open();
        SqlCommand sqlcom2 = new SqlCommand(sqltest2, conn);

        SqlDataReader dr2 = sqlcom2.ExecuteReader();
        if (dr2.Read())
        {
            id3 = dr2[0].ToString();
        }
        conn.Close();
        Response.Write("ID:"); Response.Write(id3);
        Response.Write("报价："); Response.Write(price3);
    }
}