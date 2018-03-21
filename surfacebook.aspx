<%@ Page Language="C#" AutoEventWireup="true" CodeFile="surfacebook.aspx.cs" Inherits="wy_surfacebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <meta name="keywords" content="" />
<meta name="description" content="" />
    <title>SurfaceBook</title>  
    <script language="JavaScript">
    var TotalMinutes = <%=inttime%>;
    var TotalMilliSeconds = <%=inttime%> * 60 * 1000;
    function takeCount() {
        //计数减一
        TotalMilliSeconds -= 1000;
        //计算时分秒
        var hours = Math.floor(TotalMilliSeconds / (1000 * 60 * 60)) % 24;
        var minutes = Math.floor(TotalMilliSeconds / (1000 * 60)) % 60;
        var seconds = Math.floor(TotalMilliSeconds / 1000) % 60;
        //将时分秒插入到html中
        document.getElementById("RemainH").innerHTML = hours;
        document.getElementById("RemainM").innerHTML = minutes;
        document.getElementById("RemainS").innerHTML = seconds;
    }

    window.onload = setInterval("takeCount();", 1000);
    </script>
<link href="css/surfacebook.css" rel="stylesheet" type="text/css" />  
<link href="css/text.css" rel="stylesheet" type="text/css" />
<link href="css/yemain.css" rel="stylesheet" type="text/css" />
</head>  
<body> 
    <form id="form1" runat="server">
        <ul>  
  
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
<table width="1447" height="1373" border="0" align="center">
  <tbody>
    <tr>
      <td align="center" valign="middle"><img src="txt/original/logo.png" width="105" height="105" style="float: left"/><span class="yemiantittle">SurfaceBook</span></td>
    </tr>
    <tr>
      <td width="1441" height="1144"><img src="images/SurfaceBookInnovation.jpg" class="mscom-image" alt="Surface Book" width="1446" height="1080" /></picture><div><div><h1 class="c-heading-1">您所做的一切都有极致性能的支撑。</h1><p class="c-paragraph-3">S<span class="text">urface Book 创新地融合了功能、图形性能和灵活性。 快速运行您喜欢的程序。 通过触控笔和触摸操作直接在屏幕上创作。</span></p></td>
    </tr>
    <tr>
      <td><div>
        <p class="text">它比以往速度更快、性能更强大，身形却更纤薄、更轻巧。它为你展现的，是迄今最明亮、最多彩的 Mac 笔记本显示屏。它更带来了开创性的 Multi-Touch Bar：一个内置于键盘的玻璃面多点触控条，让你能在需要时快速取用各种工具。新一代 MacBook Pro 是对我们突破性理念的一场出色演绎，而它，也正期待着演绎你的奇思妙想。      </p>
        <p>报价：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </p>
          <p>
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="清空" />
          </p>
        <p>&nbsp;</p>
           <div >
        倒计时还有：
<strong id="RemainD"></strong><strong id="RemainH">XX</strong>时
<strong id="RemainM">XX</strong>分
<strong id="RemainS">XX</strong>秒
</div>
        <p>&nbsp;</p>
      </div>
        <div>
          <div role="text"></div>
</div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>  
</body>  
 <body>
        
       <div id="footer">©信管152高俊健 电信151贺一凡、张悦程制作 </div>
    </form>
    </body>
</html>  
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