﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="portfolio.aspx.cs" Inherits="自营商城" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>自营商城 - HitThePrice - 价格再低一点</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    

	<!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="../styles/style.css" />
    <link rel="stylesheet" href="../styles/inner.css" />
    <link rel="stylesheet" href="../styles/layout.css" />
    <link rel="stylesheet" href="../styles/color.css" />
    <link rel="stylesheet" href="../styles/prettyPhoto.css"  media="screen" />
    

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="../images/favicon.ico" />

    
    
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
                                 <%if (userId!= null){%>
                                     <div class="login">欢迎！<strong><%=userId %></strong>&emsp;|&emsp;<a href="index.aspx"><strong>退出</strong></a>&emsp;|&emsp;<a href="favorite.aspx"><strong>我的收藏</strong></a>&emsp;|&emsp;<a href="checkout.aspx"><strong>购物车</strong></a>&emsp;|&emsp;<a href="order.aspx"><strong>我的订单</strong></a></div>
                                 <%}else{%>
                                <div class="clear"></div>
                                <div class="login">您好！请 <a href="login.aspx"><strong>登录</strong></a>&emsp;<a href="register.aspx" style="color: #FF003B"><strong>免费注册</strong></a></div>
                                 <%} %>
                            </div>
                            <div id="topright" class="six columns">
                                <div class="language">
                                    Language:  <a href="#"><img src="images/eng.png" alt="" /></a> <a href="#"><img src="images/fr.png" alt="" /></a> <a href="#"><img src="images/gr.png" alt="" /></a>
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
                                <a href="index.aspx"><img src="../images/logo.png" alt="" /></a>
                                <span class="desc">Best Solution for your business</span>
                            </div>
                            <div class="right six columns">

                                <form id="searchform" method="post">

                                    <input type="text" onblur="if (this.value == '')this.value = 'Search keywords here';" onfocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field">
                                     <input type="submit" value="" class="searchbutton" onclick="document.login.submit()">

                                </form>

                                <div id="shopping-cart-wrapper">
                                    <div id="shopping_cart">
                                        <a href="#" id="shop-bag">Cart:(empty)</a><a class="btncart" href="#"></a>
                                        <ul class="shop-box">
                                            <li>
                                                <h2>Product1</h2>
                                                <div class="price">1 x $150.00</div>
                                                <div class="clear"></div>
                                            </li>
                                            <li>
                                                <h2>Shipping</h2>
                                                <div class="price">1 x $10.00</div>
                                                <div class="clear"></div>
                                            </li>
                                            <li class="total">
                                                <h2>Total</h2>
                                                <div class="price"> $160.00</div>
                                                <div class="clear"></div>
                                            </li>
                                            <li class="btn-wrapper">
                                                <a href="#" class="cart">Cart</a> <a href="#" class="checkout">Checkout</a>
                                                <div class="clear"></div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

             <section id="navigation">
                    <div class="container">
                    <div class="row">
                    <nav id="nav-wrap" class="twelve columns">
                        <ul id="sf-nav" class="sf-menu">
                            <li class="current"><a href="index.aspx">首页</a></li>
                            <li><a href="about.aspx">关于我们</a></li>
                            <li><a href="catalogue.aspx">商品目录</a>
                                <ul>
                                    <li>
                                        <a href="product-phone.aspx">手机数码</a>
                                        <ul>
                                            <li><a href="product-list-where.aspx?where=phone">手机</a></li>
                                            <li><a href="product-list-where.aspx?where=powerbank">移动电源</a></li>
                                            <li><a href="product-list-where.aspx?where=earphone">耳机</a></li>
                                            <li><a href="product-list-where.aspx?where=SDcard">存储卡</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-laptop.aspx">电脑、配件</a>
                                        <ul>
                                            <li><a href="product-list-where.aspx?where=pad">平板电脑</a></li>
                                            <li><a href="product-list-where.aspx?where=laptop">笔记本电脑</a></li>
                                            <li><a href="product-list-where.aspx?where=keyboard">键盘</a></li>
                                            <li><a href="product-list-where.aspx?where=mouse">鼠标</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-camera.aspx">摄影、摄像</a>
                                        <ul>
                                            <li><a href="product-list-where.aspx?where=DC">数码相机</a></li>
                                            <li><a href="product-list-where.aspx?where=SLR">单反相机</a></li>
                                            <li><a href="product-list-where.aspx?where=ILDC">微单\单电相机</a></li>
                                            <li><a href="product-list-where.aspx?where=DSLR_lens">单反镜头</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-appliance.aspx">家用电器</a>
                                        <ul>
                                            <li><a href="product-list-where.aspx?where=TV">电视机</a></li>
                                            <li><a href="product-list-where.aspx?where=washer">洗衣机</a></li>
                                            <li><a href="product-list-where.aspx?where=AC">空调</a></li>
                                            <li><a href="product-list-where.aspx?where=fridge">电冰箱</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="portfolio.aspx">自营商城</a></li>
                            <li><a href="product-list.aspx">最省钱</a></li>
                            <li><a href="contact.aspx">联系我们</a></li>
                        </ul><!-- topnav -->
                    </nav><!-- nav -->	
                    </div>
                    </div>
                </section>


                <div class="clear"></div>
            </header>
        </div>
        <!-- END HEADER -->

        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                	<section id="maincontent" class="twelve columns">
                    
                        <section class="content">
                        	
                            <div class="breadcrumb"><a href="index.aspx">首页</a>  /  自营商城</div>
                            <h1 class="pagetitle">自营商城</h1>
                            
							<!-- Begin 自营商城 Nav -->
                            <ul id="filter">
                                <li class="current"><a href="#" data-filter="*">所有类别</a></li>
                                <li><a href="product-phone.aspx" data-filter=".手机">手机</a></li>
                                <li><a href="product-laptop.aspx" data-filter=".电脑">电脑</a></li>
                                <li><a href="product-camera.aspx" data-filter=".相机">相机</a></li>
                            </ul> 
                            <div class="clear"></div>
                            <!-- End 自营商城 Nav -->    
                              
                            <!-- Begin 自营商城 Items -->
                            <div id="ts-display" class="row">
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                        	<a title="苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机" href="product-details-iPhone X.aspx"><img src="../images/content/products/iphonex-1.jpg" alt=""/></a>
                                            <h3><a title="苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机" href="product-details-iPhone X.aspx">苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机</a></h3>
                                            <div class="price-cart-wrapper">
                                            	<div class="price">
                                                	￥7749.00
                                                </div>
                                                <div class="cart">
                                                	<a href="product-details-iPhone X.aspx" class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 电脑">
                                        <div class="product-wrapper">
                                        	<span class="new"></span>
                                            <a title="【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑" href="product-details.aspx?product=2"><img src="../images/content/products/p-9.jpg" alt=""/></a>
                                            <h3><a title="【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑" href="product-details.aspx?product=2">【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥6299.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=2"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机" href="product-details.aspx?product=3"><img src="../images/content/products/p-2.jpg" alt=""/></a>
                                            <h3><a title="12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机" href="product-details.aspx?product=3">12期免息 Samsung/三星 Galaxy S9+ SM-G9650/DS 全网通 手机</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥6699.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=3"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="one_fifth columns item 相机">
                                        <div class="product-wrapper">
                                        	<span class="new"></span>
                                            <a title="Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游" href="product-details.aspx?product=4"><img src="../images/content/products/p-17.jpg" alt=""/></a>
                                            <h3><a title="Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游" href="product-details.aspx?product=4">Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥1699.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=4"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 电脑">
                                        <div class="product-wrapper">
                                            <a title="Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2" href="product-details.aspx?product=5"><img src="../images/content/products/p-10.jpg" alt=""/></a>
                                            <h3><a title="Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2" href="product-details.aspx?product=5">Apple/苹果 MacBook Air MQD32CH/A 13寸超薄笔记本电脑D42 MMGF2</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥7888.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=5"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus" href="product-details.aspx?product=6"><img src="../images/content/products/p-3.jpg" alt=""/></a>
                                            <h3><a title="当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus" href="product-details.aspx?product=6">当天发货送壕礼/Huawei/华为 P20 pro 手机正品官方旗舰店p20plus</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥5488.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=6"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="one_fifth columns item 相机">
                                        <div class="product-wrapper">
                                            <a title="佳能 EOS100D 18-55 入门级白色单反相机kissX7  高清数码旅游" href="product-details.aspx?product=7"><img src="../images/content/products/p-18.jpg" alt=""/></a>
                                            <h3><a title="佳能 EOS100D 18-55 入门级白色单反相机kissX7  高清数码旅游" href="product-details.aspx?product=7">佳能 EOS100D 18-55 入门级白色单反相机kissX7  高清数码旅游</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2779.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=7"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 电脑">
                                        <div class="product-wrapper">
                                            <a title="2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15" href="product-details.aspx?product=8"><img src="../images/content/products/p-11.jpg" alt=""/></a>
                                            <h3><a title="2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15" href="product-details.aspx?product=8">2017新款Apple/苹果 MacBook Pro MF839CH/A国行笔记本电脑13寸15</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥12850.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=8"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus" href="product-details.aspx?product=9"><img src="../images/content/products/p-4.jpg" alt=""/></a>
                                            <h3><a title="OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus" href="product-details.aspx?product=9">OPPO R15 oppor15手机全新机正品 r15 oppor15梦境版r11s r15plus</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2999.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=9"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    
									<div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源" href="product-details.aspx?product=10"><img src="../images/content/products/p-5.jpg" alt=""/></a>
                                            <h3><a title="【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源" href="product-details.aspx?product=10">【新品发售】罗马仕充电宝20000毫安大容量通用苹果便携移动电源</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥79.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=10"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 电脑">
                                       <div class="product-wrapper">
                                            <a title="【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10" href="product-details.aspx?product=11"><img src="../images/content/products/p-12.jpg" alt=""/></a>
                                            <h3><a title="【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10" href="product-details.aspx?product=11">【12期免息】2018新款 Apple/苹果 9.7英寸ipad智能平板电脑A10</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2488.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=11"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝" href="product-details.aspx?product=12"><img src="../images/content/products/p-6.jpg" alt=""/></a>
                                            <h3><a title="ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝" href="product-details.aspx?product=12">ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥59.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=12"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="one_fifth columns item 相机">
                                        <div class="product-wrapper">
                                            <a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx?product=13"><img src="../images/content/products/p-19.jpg" alt=""/></a>
                                            <h3><a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx?product=13">照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2279.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=13"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 电脑">
                                        <div class="product-wrapper">
                                            <a title="酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏" href="product-details.aspx?product=14"><img src="../images/content/products/p-13.jpg" alt=""/></a>
                                            <h3><a title="酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏" href="product-details.aspx?product=14">酷睿i5四核GTX1060独显台式机组装电脑主机整机 绝地求生吃鸡游戏</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥3699.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=14"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns item 手机">
                                        <div class="product-wrapper">
                                            <a title="卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源" href="product-details.aspx?product=15"><img src="../images/content/products/p-7.jpg" alt=""/></a>
                                            <h3><a title="卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源" href="product-details.aspx?product=15">卡片式充电宝苹果通用个性创意定制便携华为专用快充超薄移动电源</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥138.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx?product=15"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>

                            </div>
                            <!-- End 自营商城 Items -->
                            
                        </section>
                    
                	</section>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->
        
        <!-- FOOTER -->
        <footer id="footer">
            <div id="carousel"  class="es-carousel-wrapper">
                <div class="es-carousel">
                    <ul>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="../images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="../images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="../images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="../images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="../images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="../images/content/videohive.png"></a></li>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="../images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="../images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="../images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="../images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="../images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="../images/content/videohive.png"></a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <!-- FOOTER SIDEBAR -->
            <div id="outerfootersidebar">
                <div class="container">
                    <div id="footersidebar" class="row"> 

                        <div id="footcol1"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">联系信息</h2>
                                    <ul>
                                        <li><a href="#">关于我们</a></li>
                                        <li><a href="#">送货信息</a></li>
                                        <li><a href="#">隐私信息</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol2"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">客户服务</h2>
                                    <ul>
                                        <li><a href="#">联系我们</a></li>
                                        <li><a href="#">返修货品</a></li>
                                        <li><a href="#">网站地图</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol3"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">我的账户</h2>
                                    <ul>
                                        <li><a href="#">订单历史</a></li>
                                        <li><a href="#">我的账户</a></li>
                                        <li><a href="#">愿望单</a></li>
                                        <li><a href="#">新信息</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol4"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">关于产品</h2>
                                    <ul>
                                        <li><a href="#">品牌</a></li>
                                        <li><a href="#">附件</a></li>
                                        <li><a href="#">礼品包装</a></li>
                                        <li><a href="#">特供</a></li>
                                    </ul>
                              </li>
                            </ul>
                        </div>
                        <div id="footcol5"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">联系我们</h2>
									<div class="textwidget">
                                        电话: 86-21-64870020 <br/>
                                        传真: 86-21-64870020 <br/>
                                        <a href="mailto:kevinpatton2015@icloud.com">kevinpatton2015@icloud.com</a>
                                    </div>
                              </li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                 
                    </div>
                </div>
            </div>
            <!-- END FOOTER SIDEBAR -->
            
            <!-- COPYRIGHT -->
            <div id="outercopyright">
                <div class="container">
                    <div id="copyright">
                        Copyright &copy;2018. All Rights Reserved.  &copy;信管152高俊健、电信151贺一凡、电信151张悦程制作
                    </div>
                    <ul class="sn">
                        <li><a href="http://twitter.com" title="Twitter"><span class="icon-img twitter"></span></a></li>
                        <li><a href="http://facebook.com" title="Facebook"><span class="icon-img facebook"></span></a></li>
                        <li><a href="https://plus.google.com" title="Google+"><span class="icon-img google"></span></a></li>
                        <li><a href="http://amazon.com" title="Amazon"><span class="icon-img amazon"></span></a></li>
                        <li><a href="http://pinterest.com" title="Pinterest"><span class="icon-img pinterest"></span></a></li>
                    </ul> 
                </div>
            </div>
            <!-- END COPYRIGHT -->
        </footer>
        <!-- END FOOTER -->
        <div class="clear"></div><!-- clear float --> 
	</div><!-- end outercontainer -->
</div><!-- end bodychild -->


<!-- ////////////////////////////////// -->
<!-- //      Javascript Files        // -->
<!-- ////////////////////////////////// -->
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="../js/hoverIntent.js"></script> 
<script type="text/javascript" src="../js/superfish.js"></script> 
<script type="text/javascript" src="../js/supersubs.js"></script>

<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="../js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="../js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="../js/custom.js"></script>

<!-- jQuery PrettyPhoto -->
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/fade.js"></script>
<script type="text/javascript" src="../js/jquery-easing-1.3.js"></script>

<!-- jQuery Isotope -->
<script type="text/javascript" src="../js/jquery.isotope.min.js"></script>
<script>
function runisotope(){
	$container = jQuery('#ts-display');
		$container.isotope({
			itemSelector : '.item'
		});

	// filter items when filter link is clicked
	jQuery('#filter li').click(function(){
	jQuery('#filter li').removeClass('current');
		jQuery(this).addClass('current');
			var selector = jQuery(this).find('a').attr('data-filter');
			$container.isotope({ filter: selector });
		return false;
	}); 
};
jQuery(window).load(function(){
	runisotope();
});

jQuery(window).smartresize(function(){
	runisotope();
});
</script>
</body>
</html>
