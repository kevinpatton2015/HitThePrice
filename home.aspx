<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
	<link rel="stylesheet" type="text/css" href="css/slider.css" />
	<link rel="stylesheet" type="text/css" href="css/picstyle.css" />
    <link href="css/surfacebook.css" rel="stylesheet" type="text/css" />  
	<script type="text/javascript" src="js/waterfall.js"></script>
	<script type="text/javascript" src="js/countTime.js" charset="gbk"></script>
    <title>��ҳ</title>
</head>
<body>
<div class="topnav"> 
	<ul>
	<li><a href="Default.aspx" class="active"><span class="����������">��ҳ</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">��Ʒ�Ƽ�</a></li>
    <li><a href="surfacebook.aspx" target="_blank">�ȶ����</a></li>
    <li><a href="surfacebook.aspx" target="_blank">��Ʒ����</a></li>
    <li><a href="findus.aspx" target="_blank">�ҵ�����</a></li>
    <li><a href="connect.aspx" target="_blank">��ϵ����</a></li>
    <div class="dropdown">
        <%if (userId != null){%>
            <a href="#" class="dropbtn"><span class="����������">Welcome,<%=userId %></span></a>
            <div class="dropdown-content">
                <a href="BlockChain.aspx" class="����������">����</a>
                <a href="blank.aspx" class="����������">ע��</a>
            </div>
        <%}else{%>
        <a href="#" class="dropbtn"><span class="����������">��¼ע��</span></a>
        <div class="dropdown-content">
            <a href="register.aspx" class="����������">ע��</a>
            <a href="login.aspx" class="����������">��¼</a>
            <%} %>
         </div>
    </div>
	</ul>
</div>
		<div class="slider">
			<div style="align=center width:800px; height:540px; margin:-36px 0px 0px 0px;">
				<iframe name="index" src="default.aspx" frameborder="0" scrolling="no" width="100%" height="100%"></iframe> 
			</div>
		</div>
	<div id="main">
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[0] %>" alt="<%=pro_title[0] %>" /></a><br/>
				<b><%=pro_title[0] %></b><br />��<b style="color:red;"><% if (Convert.ToInt32(Session["flag"])>1 || IsPostBack){%><%=Session["price"] %><%}else{%>20001.00<%} %></b>				
				<div id="Timer0">
				</div>	
			</div>
		</div>
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[1] %>" alt="<%=pro_title[1] %>" /></a><br/>
				<b><%=pro_title[1] %></b><br />��<b style="color:red;">1619988.00</b>
                <div id="Timer1">
				</div>
			</div>
		</div>	
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[2] %>" alt="<%=pro_title[2] %>" /></a><br/>
				<b><%=pro_title[2]%></b><br />��<b style="color:red;">1623333.00</b>
				<div id="Timer2">
				</div>	
			</div>
		</div>
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[3] %>" alt="<%=pro_title[3] %>" /></a><br/>
				<b><%=pro_title[3] %></b><br />��<b style="color:red;">1617890.00</b>
                <div id="Timer3">
				</div>
			</div>
		</div>
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[4] %>" alt="<%=pro_title[4] %>" /></a><br/>
				<b><%=pro_title[4] %></b><br />��<b style="color:red;">1625640.10</b>
                <div id="Timer4">
				</div>
			</div>
		</div>
		<div class="box">
			<div class="pic">
				<a href="single.aspx"><img src="<%=img_src[5] %>" alt="<%=pro_title[5] %>" /></a><br/>
				<b><%=pro_title[5] %><br />��<b style="color:red;">16897.65</b>
                <div id="Timer5">
				</div>
			</div>
		</div>
		<div class="box">
			<div class="pic">
				<img src="<%=img_src[5] %>" alt="<%=pro_title[5] %>" /><br/>
				<b><%=pro_title[5] %><br />��<b style="color:red;">1623310.01</b>
                <div id="Timer6">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
