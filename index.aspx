<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>HitThePrice - 价格再低一点</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    

	<!-- CSS
  ================================================== -->
  	<link href='http://fonts.useso.com/css?family=Ubuntu:400,700,500,300,400italic,300italic' rel='stylesheet' type='text/css' />
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
                            <%if (userId!= null){%>
                            <div class="login">欢迎！<strong><%=userId %></strong>&emsp;|&emsp;<a href="index.aspx"  onserverclick="Logout" runat="server"><strong>退出</strong></a>&emsp;|&emsp;<a href="favorite.aspx"><strong>我的收藏</strong></a>&emsp;|&emsp;<a href="checkout.aspx"><strong>购物车</strong></a></div>
                            <%}else{%>
                                <div class="clear"></div>
                                <div class="login">您好！请 <a href="login.aspx"><strong>登录</strong></a>&emsp;<a href="register.aspx" style="color: #FF003B"><strong>免费注册</strong></a></div>
                            <%} %>
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
                            <a href="index.aspx"><img src="images/logo.png" alt=""/></a>
                            <span class="desc">Best Solution for your business</span>
                        </div>
                        <div class="right six columns">

                            <form  id="searchform"  runat="server">
                                
                                <input type="text" onBlur="if (this.value == '')this.value = 'Search keywords here';" onFocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field" runat="server">
                                <input type="button" value="" class="searchbutton" onserverclick="Search" runat="server"/>
                               
                            </form>
                               
                            <div id="shopping-cart-wrapper">
                                <div id="shopping_cart"><a href="#" id="shop-bag">Cart:(empty)</a><a class="btncart" href="#"></a>
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
                                            <li><a href="product-list-phone.aspx">手机</a></li>
                                            <li><a href="product-list-powerbank.aspx">移动电源</a></li>
                                            <li><a href="product-list-headset.aspx">耳机</a></li>
                                            <li><a href="product-list-SDcard.aspx">存储卡</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-laptop.aspx">电脑、配件</a>
                                        <ul>
                                            <li><a href="product-list-tablet.aspx">平板电脑</a></li>
                                            <li><a href="product-list-laptop.aspx">笔记本电脑</a></li>
                                            <li><a href="product-list-keyboard.aspx">键盘</a></li>
                                            <li><a href="product-list-mouse.aspx">鼠标</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-camera.aspx">摄影、摄像</a>
                                        <ul>
                                            <li><a href="product-list-digitalcamera.aspx">数码相机</a></li>
                                            <li><a href="product-list-SLR.aspx">单反相机</a></li>
                                            <li><a href="product-list-mmcamera.aspx">微单\单电相机</a></li>
                                            <li><a href="product-list-lensofSLR.aspx">单反镜头</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-appliance.aspx">家用电器</a>
                                        <ul>
                                            <li><a href="product-list-tv.aspx">电视机</a></li>
                                            <li><a href="product-list-washingmachine.aspx">洗衣机</a></li>
                                            <li><a href="product-list-airconditioner.aspx">空调</a></li>
                                            <li><a href="product-list-refrigerator.aspx">电冰箱</a></li>
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
            
			<div class="headline">
        	<div class="container">
                <div class="row">
                	<div class="twelve columns">
               			<h1> 我们是一个专业的电子产品导购比价网站，为您提供最有性价比的选择。 <br/>欢迎在此任意选购您喜爱的产品。</h1>
                    </div>
                </div>
            </div>    
            </div>
            
           
        </div>
        <!-- END HEADER -->
        
        <!-- SLIDER -->
        <div id="outerslider">
        	<div id="slidercontainer">            
                <iframe name="index" src="default.aspx" frameborder="0" scrolling="no" width="100%" height="300px"></iframe> 
            </div>
        </div>


        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                	<section id="maincontent" class="twelve columns">
                    
                        <section class="content">
                        		
                                <div class="featured-products">  
                                <div class="header-wrapper">
                                    <h2>今日特价</h2><span></span>
                                    <div class="clear"></div>
                                </div>
                                <div class="row">
                                    <div class="one_fifth columns">
										<div class="product-wrapper">
                                            <span class="new"></span>
                                        	<a title="苹果Apple iPhone X 64G 深空灰 5.8英寸 全网通4G手机" href="product-details-iPhone X.aspx"><img src="images/content/products/iphonex-1.jpg" alt=""/></a>
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
                                    <div class="one_fifth columns">
										 <div class="product-wrapper">
                                            <a title="Midea/美的 BCD-535WKZM(E)冰箱双开门对开家用智能节能风冷无霜" href="product-details.aspx"><img src="images/content/products/p-26.jpg" alt=""/></a>
                                            <h3><a title="Midea/美的 BCD-535WKZM(E)冰箱双开门对开家用智能节能风冷无霜" href="product-details.aspx">Midea/美的 BCD-535WKZM(E)冰箱双开门对开家用智能节能风冷无霜</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥3099.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
										   <div class="product-wrapper">
                                            <a title="Haier/海尔EG10014B39GU1滚筒洗衣机全自动10公斤kg 变频静音节能" href="product-details.aspx"><img src="images/content/products/p-27.jpg" alt=""/></a>
                                            <h3><a title="Haier/海尔EG10014B39GU1滚筒洗衣机全自动10公斤kg 变频静音节能" href="product-details.aspx">Haier/海尔EG10014B39GU1滚筒洗衣机全自动10公斤kg 变频静音节能</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2699.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
										 <div class="product-wrapper">
                                            <a title="送原装卡包/索尼ILCE-A6000L微单套机数码相机 专业高清wifi微单" href="product-details.aspx"><img src="images/content/products/p-21.jpg" alt=""/></a>
                                            <h3><a title="送原装卡包/索尼ILCE-A6000L微单套机数码相机 专业高清wifi微单" href="product-details.aspx">送原装卡包/索尼ILCE-A6000L微单套机数码相机 专业高清wifi微单</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥3549.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
									   <div class="product-wrapper">
                                            <a title="【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑" href="product-details.aspx"><img src="images/content/products/p-9.jpg" alt=""/></a>
                                            <h3><a title="【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑" href="product-details.aspx">【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥6299.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                
                                <div class="row">
                                	<div class="one_half columns"><a href="http://uland.taobao.com/sem/tbsearch?refpid=mm_26632258_3504122_32538762&clk1=a2214513c78bfa18f135763d2e1ca92d&keyword=%E6%89%8B%E6%9C%BA&page=0"><img src="images/content/sale1.jpg" alt=""/></a></div>
                                    <div class="one_half columns"><a href="http://uland.taobao.com/sem/tbsearch?refpid=mm_26632258_3504122_32538762&clk1=a2214513c78bfa18f135763d2e1ca92d&keyword=%E7%94%B5%E8%84%91&page=0"><img src="images/content/sale2.jpg" alt=""/></a></div>
                                </div> 
                                
                                <div class="new-products">                 
                                <div class="header-wrapper">
                                    <h2>品牌优选</h2><span></span>
                                    <div class="clear"></div>
                                </div>            
                            	<div class="row">
                                    <div class="one_fifth columns">
										 <div class="product-wrapper">
                                        	<span class="new"></span>
                                            <a title="Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9" href="product-details.aspx"><img src="images/content/products/p-20.jpg" alt=""/></a>
                                            <h3><a title="Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9" href="product-details.aspx">Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥3276.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
										<div class="product-wrapper">
                                            <a title="ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝" href="product-details.aspx"><img src="images/content/products/p-6.jpg" alt=""/></a>
                                            <h3><a title="ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝" href="product-details.aspx">ROMOSS/罗马仕 sense4 正品10000+毫安移动电源 手机通用充电宝</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥59.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
									   <div class="product-wrapper">
                                            <a title="小天鹅10公斤KG全自动变频智能滚筒静音家用洗衣机 TG100V120WDG" href="product-details.aspx"><img src="images/content/products/p-32.jpg" alt=""/></a>
                                            <h3><a title="小天鹅10公斤KG全自动变频智能滚筒静音家用洗衣机 TG100V120WDG" href="product-details.aspx">小天鹅10公斤KG全自动变频智能滚筒静音家用洗衣机 TG100V120WDG</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2599.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
										  <div class="product-wrapper">
                                            <a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx"><img src="images/content/products/p-19.jpg" alt=""/></a>
                                            <h3><a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx">照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2279.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fifth columns">
										   <div class="product-wrapper">
                                            <a title="一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P" href="product-details.aspx"><img src="images/content/products/p-25.jpg" alt=""/></a>
                                            <h3><a title="一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P" href="product-details.aspx">一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P</a></h3>
                                            <div class="price-cart-wrapper">
                                                <div class="price">
                                                    ￥2799.00
                                                </div>
                                                <div class="cart">
                                                    <a href="product-details.aspx"  class="more">more</a> | <a href="favorite.aspx" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                
								<div class="row">
                                    <div class="one_third columns"><a href="product-phone.aspx"><img src="images/content/pf/pf3.jpg" alt="" class="border"/></a></div>
                                    <div class="one_third columns"><a href="product-camera.aspx"><img src="images/content/pf/pf4.jpg" alt="" class="border"/></a></div>
                                    <div class="one_third columns"><a href="product-laptop.aspx"><img src="images/content/pf/pf5.jpg" alt="" class="border"/></a></div>
                                </div>
                            
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
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="images/content/audiojungle.png" /></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="images/content/activeden.png" /></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="images/content/graphicriver.png" /></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="images/content/photodune.png" /></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="images/content/themeforest.png" /></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="images/content/videohive.png" /></a></li>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="images/content/audiojungle.png" /></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="images/content/activeden.png" /></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="images/content/graphicriver.png" /></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="images/content/photodune.png" /></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="images/content/themeforest.png" /></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="images/content/videohive.png" /></a></li>
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
                                        <li><a href="about.aspx">关于我们</a></li>
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
                                        <li><a href="contact.aspx">联系我们</a></li>
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
                        Copyright &copy;2018. All Rights Reserved. &copy;信管152高俊健、电信151贺一凡、电信151张悦程制作
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
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script>

<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="js/jquery.elastislide.js"></script>
<script type="text/javascript">
    jQuery('#carousel').elastislide({
        imageW: 135,
        margin: 12
    });
</script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="js/custom.js"></script>

<!-- jQuery Layerslider -->
<script type="text/javascript" src="js/jquery-easing-1.3.js"></script>
<script type="text/javascript" src="js/layerslider.js"></script>
<script type="text/javascript">
    jQuery(window).load(function () {
        jQuery('#layerslider.slideritems').layerSlider({
            skinsPath: 'images/layerslider-skins/',
            skin: 'lastore',
            autoStart: true
        });
        jQuery('.ls-nav-prev').fadeOut();
        jQuery('.ls-nav-next').fadeOut();
        jQuery('#layerslider.slideritems').mouseleave(function () {
            jQuery('.ls-nav-prev').fadeOut();
            jQuery('.ls-nav-next').fadeOut();
        });
        jQuery('#layerslider.slideritems').mouseenter(function () {
            jQuery('.ls-nav-prev').fadeIn();
            jQuery('.ls-nav-next').fadeIn();
        });
    });
</script>	


</body>
</html>