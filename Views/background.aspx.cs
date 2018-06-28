using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrawlUtils;

public partial class background : System.Web.UI.Page
{
    public string userId;
    public string strConnection;
    private string LEGAL = "Administrator";
    public bool legal = false;
    OleDbConnection objConnection;
    OleDbCommand sqlcom;
    //string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
    //OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
    //objConnection.Open();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        {
            userId = Session["UserId"].ToString();
            if (userId.Equals(LEGAL))
            { legal = true; }
        }
        if (!IsPostBack)
        {
            bind();
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

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }

    //删除之后重新绑定
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from user_infor where txtUserID='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        
        sqlcom = new OleDbCommand(sqlstr, objConnection);
        objConnection.Open();
        sqlcom.ExecuteNonQuery();
        objConnection.Close();
        GridView1.DataBind();
        bind();
    }

    //更新
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
    }

    //取消
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }

    //绑定
    public void bind()
    {
        string sqlstr = "select * from user_infor";
        string strConnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("userchec.mdb");
        OleDbConnection objConnection = new OleDbConnection(strConnection); //建立连接
        OleDbDataAdapter myda = new OleDbDataAdapter(sqlstr, objConnection);
        DataSet myds = new DataSet();
        objConnection.Open();
        myda.Fill(myds, "user_infor");
        GridView1.DataSource = myds;
        GridView1.DataKeyNames = new string[] { "txtUserID" };//主键
        GridView1.DataBind();
        objConnection.Close();
    }

}