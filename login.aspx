<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="denglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
</head>
<body>
     <form id="form1" runat="server">
`   <ul>  
  
    <li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">新品推荐</a></li>
    <li><a href="surfacebook.aspx" target="_blank">热度最高</a></li>
    <li><a href="surfacebook.aspx" target="_blank">商品分类</a></li>
    <div class="dropdown">
        <a href="#" class="dropbtn"><span class="导航栏字体">登录注册</span></a>
        <div class="dropdown-content">
            <a href="register.aspx" class="导航栏字体">注册</a>
            <a href="login.aspx" class="导航栏字体">登录</a>         
        </div>  
    </div>
    <li><a href="findus.aspx" target="_blank">找到我们</a></li>
    <li><a href="connect.aspx" target="_blank">联系我们</a></li>
    </ul>
    <br/>
   
    <div id="footer">©信管152高俊健 电信151贺一凡、张悦程制作 </div>
         <asp:Panel ID="Panel1" runat="server" Height="207px" HorizontalAlign="Center">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;
             ID:<asp:TextBox ID="TextBox1" runat="server"  HorizontalAlign="Center"></asp:TextBox>
             <br />
             Password:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  HorizontalAlign="Center"></asp:TextBox>
             <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
             &nbsp;
             <asp:Button ID="Button2" runat="server" Text="清空" />
         </asp:Panel>
    </form>
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
<style type="text/css">
            body {
                padding: 0;
                margin: 0 auto;
                background-image:url(images/background/T1.jpg);
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