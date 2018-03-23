<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="BlockChain.aspx.cs" Inherits="BlockChain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/surfacebook.css" rel="stylesheet" type="text/css" />  
    <title>个人中心</title>
    <style type="text/css">            
    body {
         background-image:url(images/background/T3.jpg);
    }
    </style>
</head>
<body>
<div class="topnav"> 
	<ul>
	<li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">新品推荐</a></li>
    <li><a href="surfacebook.aspx" target="_blank">热度最高</a></li>
    <li><a href="surfacebook.aspx" target="_blank">商品分类</a></li>
    <li><a href="findus.aspx" target="_blank">找到我们</a></li>
    <li><a href="connect.aspx" target="_blank">联系我们</a></li>
    <div class="dropdown">
        <%if (userId != null){%>
            <a href="#" class="dropbtn"><span class="导航栏字体">Welcome,<%=userId %></span></a>
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
</div>
    <form id="form1" runat="server">
        <div>
            <%if (userId != null){%>
            <br />Welcome,<b><%=userId %></b><br />
                <%foreach (var block in BlockGenerator._blockChain){%>
                    交易Index:&nbsp;&nbsp;<b><%=block.Index %></b>
                    交易时间戳:&nbsp;&nbsp;<b><%=block.TimeStamp %></b>
                    交易BPM:&nbsp;&nbsp;<b><%=block.BPM %></b>
                    交易Price:&nbsp;&nbsp;<b><%=block.Price %></b>
                    交易Token:&nbsp;&nbsp;<b><%=block.Hash %></b>	
                    <br />
                <%}%>
            <%}else{%>
               <br />
               <a href="login.aspx">请先登录</a> 
            <%} %>
        </div>
    </form>
</body>
</html>
