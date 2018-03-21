<%@ Page Language="C#" AutoEventWireup="true" CodeFile="findus.aspx.cs" Inherits="wy_findus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="/image/ICON/locate.ico" type="image/x-icon"/>
    <link rel="icon" href="/image/ICON/locate.ico" type="image/x-icon"/> 
	<link rel="stylesheet" type="text/css" href="css/tittle.css" />
	<link rel="stylesheet" type="text/css" href="css/findus.css" />
    <title>找到我们</title>    
</head>  
<body> <ul>
    <li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">新品推荐</a></li>
    <li><a href="surfacebook.aspx" target="_blank">热度最高</a></li>
    <li><a href="surfacebook.aspx" target="_blank">商品分类</a></li>
    <li><a href="findus.aspx" target="_blank">找到我们</a></li>
    <li><a href="connect.aspx" target="_blank">联系我们</a></li>

    <div class="dropdown">
       <%if (userId != null){%>
            <a href="#" class="dropbtn"><span class="导航栏字体"><%=userId %></span></a>
            <div class="dropdown-content">
                <a href="BlockChain.aspx" class="导航栏字体">详情</a>
                <a href="blank.aspx" class="导航栏字体">注销</a>
            </div>
        <%}else{%>
        <a href="#" class="dropbtn"><span class="导航栏字体">登录注册</span></a>
        <div class="dropdown-content">
            <a href="register.aspx" class="导航栏字体">注册</a>
            <a href="login.aspx" class="导航栏字体">登录</a>
            <%} %>
        </div>
    </div>
</ul>  
</body>

 <body>
<table ALIGN="middle">

<iframe  src="Map.html" frameBorder="0" width="100%" scrolling="auto" height="1080" ALIGN="middle" WIDTH="1920">
</iframe>

</table> 
 <div id="footer">©信管152高俊健 电信151贺一凡、张悦程制作 </div>
</body>  
</html>  
