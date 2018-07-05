<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="re" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>登录 - HitThePrice - 价格再低一点</title>
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
    <link rel="stylesheet" href="../styles/layerslider.css" />
    <link rel="stylesheet" href="../styles/color.css" />
    

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
                            <ul id="topnav">
                                <div class="clear"></div>
                                <div class="login">您好！请 <a href="login.aspx"><strong>登录</strong></a>&emsp;<a href="register.aspx" style="color: #FF003B"><strong>免费注册</strong></a></div>
                            </ul>
                        </div>
                        <div id="topright" class="six columns">
                        	<div class="language"> 
                           		Language:  <a href="#"><img src="../images/eng.png" alt=""/></a> <a href="#"><img src="../images/fr.png" alt=""/></a> <a href="#"><img src="../images/gr.png" alt=""/></a>
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
                            <a href="index.aspx"><img src="../images/logo.png" alt=""/></a>
                            <span class="desc">Best Solution for your business</span>
                        </div>
                        <div class="right six columns">
                                
                                <form id="searchform" method="post">

                                    <input type="text" onblur="if (this.value == '')this.value = 'Search keywords here';" onfocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field">
                                     <input type="submit" value="" class="searchbutton" onclick="document.login.submit()">

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
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content" id="login">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 登录</div>
                                <h1 class="pagetitle">登录</h1>
                                
                                <div id="login-process">
                                    <span class="first">&nbsp;</span>
                                    <span class="old">选购</span>
                                    <span class="active">登录</span>
                                    <span> 地址</span>
                                    <span> 配送</span>
                                    <span class="last"> 收货</span>
                                    <div class="clear"></div>
                                </div>
                                <form runat="server">                               
                               <div class="one_half columns">
                                    <h3>创建新账户</h3>
                                    <h5>请输入您的手机号进行注册</h5>
                                    <fieldset>
                                    <label>手机号：</label><br />
                                    
                                    <input type="text" name="phone_number" id="phone_number" runat="server"/><br />
                                    <input type="button" class="button" value="注册" onserverclick="Direct2Register" runat="server"/>
                                    </fieldset>
                                </div>
                                <div class="one_half columns">
                                    <h3>已有账户登录</h3>

                                        <asp:Panel ID="Panel1" runat="server" Height="207px" >
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           <fieldset><p style = "margin:15px" ></p >
                                            <label>账号：</label><br />
                                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                                            <br />
                                            <label>密码：</label><br />
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="338px" ></asp:TextBox>
                                            <br />
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
                                            &nbsp;
                                            <asp:Button ID="Button2" runat="server" Text="清空" />
                                         </fieldset></asp:Panel>
                                   
                                    <a href="#">忘记密码?</a>
                                </div>
                                 </form>
                                

								<div class="featured-products">  
                                <div class="header-wrapper">
                                    <h2>今日特价</h2><span></span>
                                    <div class="clear"></div>
                                </div>
                                <div class="row">
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                            <a title="送原装卡包/索尼ILCE-A6000L微单套机数码相机 专业高清wifi微单" href="product-details.aspx"><img src="../images/content/products/p-21.jpg" alt=""/></a>
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
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                            <a title="【抽券再减500】华硕飞行堡垒FX63学生吃鸡游戏本 i7笔记本电脑" href="product-details.aspx"><img src="../images/content/products/p-9.jpg" alt=""/></a>
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
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                        	<span class="new"></span>
                                            <a title="Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9" href="product-details.aspx"><img src="../images/content/products/p-20.jpg" alt=""/></a>
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
                                    <div class="one_fourth columns">
									  <div class="product-wrapper">
                                            <a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx"><img src="../images/content/products/p-19.jpg" alt=""/></a>
                                            <h3><a title="照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS" href="product-details.aspx">照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730</a></h3>
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
                                </div>
                                </div>
                                
                                
                               
							</section>
                         
                        </div>
                    </section>
                    
                    <aside class="two columns">
                    
                    	<div class="sidebar">
                        <ul>
                            <li class="widget-container">
                                <h2 class="widget-title">商品目录</h2>
                                <ul>
                                    <li><a href="product-phone.aspx">手机数码 (8)</a></li>
                                    <li><a href="product-laptop.aspx">电脑、配件 (4)</a></li>
                                    <li><a href="product-camera.aspx">摄影、摄像 (4)</a></li>
                                    <li><a href="product-appliance.aspx">家用电器 (4)</a></li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <a href="#"><img src="../images/content/banner.gif" alt="" /></a>
                            </li>
                        </ul>
                        </div>
                        
                    </aside>
                    
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
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="../js/hoverIntent.js"></script> 
<script type="text/javascript" src="../js/superfish.js"></script> 
<script type="text/javascript" src="../js/supersubs.js"></script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="../js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="../js/custom.js"></script>

<!-- jQuery PrettyPhoto -->
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/fade.js"></script>
<script type="text/javascript" src="../js/jquery-easing-1.3.js"></script>

<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="../js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

</body>
</html>
