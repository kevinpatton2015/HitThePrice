<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="re" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>Lastore</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    

	<!-- CSS
  ================================================== -->
  	<link href='http://fonts.useso.com/css?family=Ubuntu:400,700,500,300,400italic,300italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/inner.css" />
    <link rel="stylesheet" href="styles/layout.css" />
    <link rel="stylesheet" href="styles/layerslider.css" />
    <link rel="stylesheet" href="styles/color.css" />
    

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico" />

    
    
</head>


<body>

<div id="bodychild">
	<div id="outercontainer">
    
        <!-- HEADER -->
        <div id="outerheader">
        	
            
            <header>
            	<div id="top">
                    <div class="container">
                    <div class="row">
                    	<div id="topmenu" class=" six columns">
                            <ul id="topnav">
                                <div class="clear"></div>
                                <div class="login">您好！请 <a href="login.aspx"><strong>登录</strong></a>&emsp;<a href="register.aspx" style="color: #FF003B"><strong>免费注册</strong></a></div>
                            </ul>
                        </div>
                        <div id="topright" class="six columns">
                        	<div class="language"> 
                           		Language:  <a href="#"><img src="images/eng.png" alt=""/></a> <a href="#"><img src="images/fr.png" alt=""/></a> <a href="#"><img src="images/gr.png" alt=""/></a>
                            </div>
                        	<div class="currency"> Currency : <a href="#">€</a> <a href="#">£</a> <a href="#">$</a></div>
                        </div>
                    </div>
                    </div>
            	</div>
                
                <div id="logo-wrapper">
                    <div class="container">
                    <div class="row">
                        <div id="logo" class="six columns">
                            <a href="index.html"><img src="images/logo.png" alt=""/></a>
                            <span class="desc">Best Solution for your business</span>
                        </div>
                        <div class="right six columns">

                            <form action="#" id="searchform" method="get">
                                
                                <input type="text" onBlur="if (this.value == '')this.value = 'Search keywords here';" onFocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field">
                                <input type="submit" value="" class="searchbutton">
                               
                            </form>
                           

                           
    
                        </div>
                    </div>
                    </div>
                </div>
                
                <section id="navigation">
                    <div class="container">
                    <div class="row">
                    <nav id="nav-wrap" class="twelve columns">
                        <ul id="sf-nav" class="sf-menu">
                            <li class="current"><a href="index.html">首页</a></li>
                            <li><a href="about.html">关于我们</a></li>
                            <li><a href="catalogue.html">商品分类</a>
                                <ul>
                                    <li>
                                        <a href="product-phone.html">手机数码</a>
                                        <ul>
                                            <li><a href="#">手机</a></li>
                                            <li><a href="#">移动电源</a></li>
                                            <li><a href="#">耳机</a></li>
                                            <li><a href="#">存储卡</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-laptop.html">电脑、配件</a>
                                        <ul>
                                            <li><a href="#">平板电脑</a></li>
                                            <li><a href="#">笔记本电脑</a></li>
                                            <li><a href="#">键盘</a></li>
                                            <li><a href="#">鼠标</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-camera.html">摄影、摄像</a>
                                        <ul>
                                            <li><a href="#">数码相机</a></li>
                                            <li><a href="#">单反相机</a></li>
                                            <li><a href="#">微单\单电相机</a></li>
                                            <li><a href="#">单反镜头</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-pad.html">家用电器</a>
                                        <ul>
                                            <li><a href="#">电视机</a></li>
                                            <li><a href="#">洗衣机</a></li>
                                            <li><a href="#">空调</a></li>
                                            <li><a href="#">电冰箱</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="portfolio.html">近期热卖</a></li>
                            <li><a href="product-list.html">最省钱</a></li>
                            <li><a href="contact.html">联系我们</a></li>
                        </ul><!-- topnav -->
                    </nav><!-- nav -->	
                    </div>
                    </div>
                </section>
                
                <div class="clear"></div>
            </header>
            
		 <form id="form1" runat="server">
      
             <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册账户：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查看是否已被注册" OnClick="Button1_Click" Height="25px" Width="171px" />
            <br />
            注册姓名：<asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
            注册密码：<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            重复密码：<asp:TextBox ID="passwordaga" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            注册邮箱：<asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="update" runat="server" OnClick="update_Click" Text="提交" />
            <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
        </asp:Panel>
        

    </form>
     <style type="text/css">
            body {
                padding: 0;
                margin: 0 auto;
                background-image:url(images/background/T3.jpg);
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
            <!-- COPYRIGHT -->
            <div id="outercopyright">
                <div class="container">
                    <div id="copyright">
                       <a>Copyright &copy;2012. All Rights Reserved. &copy;信管152高俊健、电信151贺一凡、电信151张悦程制作</a>
                    </div>
                </div>
            </div>


</body>
</html>
