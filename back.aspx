<%@ Page Language="C#" AutoEventWireup="true" CodeFile="back.aspx.cs" Inherits="back" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ul>  
 
    <li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>   
    <li><a href="surfacebook.aspx" target="_blank">Surface Book</a></li>
              <li><a href="surfacepen.aspx" target="_blank">Surface Pen</a></li>   
    <li><a href="surfacedial.aspx" target="_blank">SurfaceDial</a></li> 
             <li><a href="findus.html" target="_blank">找到我们</a></li> 
    <li><a href="connect.html" target="_blank">联系我们</a></li>   
      <li><a href="macbookpro.aspx" target="_blank">MacbookPro</a></li>   
    <div class="dropdown">  
        <a href="#" class="dropbtn"><span class="导航栏字体">登录注册</span></a>  
        <div class="dropdown-content">  
            <a href="login.aspx" class="导航栏字体">注册</a>  
            <a href="denglu.aspx" class="导航栏字体">登录</a>  
        </div>  
    </div> 
 
       
</ul>
        

    <br/>
   
    <div id="footer">©信管152高俊健 信管151王宇麟、王子桢制作 </div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            设置剩余时间(分钟)：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" />
            <br />
            显示竞拍结果：<asp:Button ID="Button2" runat="server" Text="获取商品Mac竞拍成功者" OnClick="Button2_Click" />
            &nbsp;
            <asp:Button ID="Button3" runat="server" Text="获取商品SurfaceBook竞拍成功者" OnClick="Button3_Click" />
            &nbsp;
            <asp:Button ID="Button4" runat="server" Text="获取商品SurfacePen竞拍成功者" OnClick="Button4_Click" />
            &nbsp;
            <asp:Button ID="Button5" runat="server" Text="获取商品SurfaceDial竞拍成功者" OnClick="Button5_Click" />
            
            
 </asp:Panel>
        

    </form>
     <style type="text/css">
            body {
                padding: 0;
                margin: 0 auto;
            }

            #footer {
                height: 40px;
                line-height: 40px;
                position: fixed;
                bottom: 0;
                width: 100%;
                text-align: center;
                background: #333;
                color: #fff;
                font-family: Arial;
                font-size: 12px;
                letter-spacing: 1px;
            }

            .content {
                height: 1800px;
                width: 100%;
                text-align: center;
            }
        </style>
</body>
</html>
<style>
*{margin:0;padding:0;}   
ul{   
    list-style-type:none;   
    background-color:#333;   
    overflow:hidden;   
}   
li{   
    float:left;
        height: 48px;
    }   
li a, .dropbtn{   
    display:inline-block;   
    color:white;   
    text-align:center;   
    padding:14px 16px;   
    text-decoration:none;   
}   
  
li a:hover, .dropdown:hover .dropbtn{   
    background-color:#111;   
}   
  
.dropdown{display:inline-block;}   
  
.dropdown-content{   
    min-width:200px;   
    background-color:#F9F9F9;   
    position:absolute;   
    display:none;   
    box-shadow:0px 8px 15px 0px rgba(0,0,0,0.2); }   
  
.dropdown-content a{   
    color:black;   
    padding:12px 16px;   
    text-decoration:none;   
    display:block; }   
 .dropdown-content a:hover{background-color:#F1F1F1;}   
  
.dropdown:hover .dropdown-content{   display: block; }   
.yemiantittle {
}
    #form1 {
        height: 320px;
    }
</style>

