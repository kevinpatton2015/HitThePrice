<%@ Page Language="C#" AutoEventWireup="true" CodeFile="connect.aspx.cs" Inherits="wy_connect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   	<link rel="stylesheet" href="css/tittle.css" type="text/css" />
 	<link rel="stylesheet" href="css/connect.css" type="text/css" />
	<title>联系我们</title>  
</head>  
<body bgcolor="#999999"> <ul>
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
<center>
<table width="537" height="404" border="0">
  <tbody>
    <tr>
      <td style="text-align: center;"><img style="vertical-align:middle;" src="txt/original/logo.png"/></td>
      <td height="289" style="text-align: center;"colspan="2"><div id="flashContent"><span style="font-size: 36px">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="150" height="700" id="LOGO-" align="middle">
        <param name="movie" value="LOGO-.swf" />
        <param name="quality" value="best" />
        <param name="bgcolor" value="#ffffff" />
        <param name="play" value="true" />
        <param name="loop" value="true" />
        <param name="wmode" value="transparent" />
        <param name="scale" value="showall" />
        <param name="menu" value="true" />
        <param name="devicefont" value="false" />
        <param name="salign" value="" />
        <param name="allowScriptAccess" value="sameDomain" />
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="txt/original/LOGO-.swf" width="150" height="700">
          <param name="movie" value="original/LOGO-.swf" />
          <param name="quality" value="best" />
          <param name="bgcolor" value="#ffffff" />
          <param name="play" value="true" />
          <param name="loop" value="true" />
          <param name="wmode" value="transparent" />
          <param name="scale" value="showall" />
          <param name="menu" value="true" />
          <param name="devicefont" value="false" />
          <param name="salign" value="" />
          <param name="allowScriptAccess" value="sameDomain" />
          <!--<![endif]-->
          <a href="http://www.adobe.com/go/getflash"> <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获得 Adobe Flash Player" /></a>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object>
      </span></div>&nbsp;</td>
    </tr>
    <tr>
      <td style="font-size: 36px"><strong>联系我们：</strong></td>
      <td style="font-size: 36px">&nbsp;</td>
    </tr>
    <tr>
      <td><p>Kevin Patton&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>e-mail:<a href="mailto:kevinpatton2015@icloud.com"> kevinpatton2015@icloud.com</a></p>
        <p>Mobile: <a href="callto:13761234891">13761234891</a></p></td>
      <td rowspan="2"><p>&nbsp;</p></td>
    </tr>
    <tr>
      <td><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="550" height="400" id="LOGO WAVER" align="middle">
        <param name="movie" value="original\LOGO WAVER.swf" />
        <param name="quality" value="high" />
        <param name="bgcolor" value="#ffffff" />
        <param name="play" value="true" />
        <param name="loop" value="true" />
        <param name="wmode" value="transparent" />
        <param name="scale" value="showall" />
        <param name="menu" value="true" />
        <param name="devicefont" value="false" />
        <param name="salign" value="" />
        <param name="allowScriptAccess" value="sameDomain" />
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="txt/original/LOGO WAVER.swf" width="550" height="400">
          <param name="movie" value="original/LOGO WAVER.swf" />
          <param name="quality" value="high" />
          <param name="bgcolor" value="#ffffff" />
          <param name="play" value="true" />
          <param name="loop" value="true" />
          <param name="wmode" value="transparent" />
          <param name="scale" value="showall" />
          <param name="menu" value="true" />
          <param name="devicefont" value="false" />
          <param name="salign" value="" />
          <param name="allowScriptAccess" value="sameDomain" />
          <!--<![endif]-->
          <a href="http://www.adobe.com/go/getflash"> <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获得 Adobe Flash Player" /> </a>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object></td>
      <td><p><div id="flashContent"></div>&nbsp;</p></td>
    </tr>
  </tbody>
</table>
<bgsound src="BGM/BGM.mp3"loop="-1">
</center>
</body> 
 <body>       
       <div id="footer">©信管152高俊健 电信151贺一凡、张悦程制作 </div>
    </body> 
</html>  