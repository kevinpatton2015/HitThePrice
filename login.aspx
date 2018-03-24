<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="re" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                            <li><a href="portfolio.aspx">近期热卖</a></li>
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
                                
                               <div class="one_half columns">
                                    <h3>创建新账户</h3>
                                    <h5>请输入您的手机号进行注册</h5>
                                    <form method="post" action="" id="loginform1">
                                    <fieldset>
                                    <label>手机号：</label><br />
                                    <input type="text" name="phone_number" id="phone_number" runat="server"/><br />
                                    <input type="button" class="button" value="注册" onserverclick="Direct2Register" runat="server"/>
                                    </fieldset>
                                    </form>
                                </div>
                                <div class="one_half columns">
                                    <h3>已有账户登录</h3>
                                    <form id="form1" runat="server">

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
                                    </form>
                                    <a href="#">忘记密码?</a>
                                </div>
                                

								<div class="featured-products">  
                                <div class="header-wrapper">
                                    <h2>今日特价</h2><span></span>
                                    <div class="clear"></div>
                                </div>
                                <div class="row">
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                        	<a title="Men's Watch" href="product-details.aspx"><img src="images/content/products/p-31.jpg" alt=""/></a>
                                            <h3><a title="Men's Watch" href="product-details.aspx">Men's Watch</a></h3>
                                            <div class="price-cart-wrapper">
                                            	<div class="price">
                                                	$120.00
                                                </div>
                                                <div class="cart">
                                                	<a href="product-details.aspx" class="more">more</a> | <a href="#" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                        	<a title="White Dress" href="product-details.aspx"><img src="images/content/products/p-6.jpg" alt=""/></a>
                                            <h3><a title="White Dress" href="product-details.aspx">White Dress</a></h3>
                                            <div class="price-cart-wrapper">
                                            	<div class="price">
                                                	$120.00
                                                </div>
                                                <div class="cart">
                                                	<a href="product-details.aspx" class="more">more</a> | <a href="#" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                        	<a title="Flower Handbag" href="product-details.aspx"><img src="images/content/products/p-32.jpg" alt=""/></a>
                                            <h3><a title="Flower Handbag" href="product-details.aspx">Flower Handbag</a></h3>
                                            <div class="price-cart-wrapper">
                                            	<div class="price">
                                                	$120.00
                                                </div>
                                                <div class="cart">
                                                	<a href="product-details.aspx" class="more">more</a> | <a href="#" class="buy">buy</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="one_fourth columns">
										<div class="product-wrapper">
                                        	<a title="Red High Heels" href="product-details.aspx"><img src="images/content/products/p-25.jpg" alt=""/></a>
                                            <h3><a title="Red High Heels" href="product-details.aspx">Red High Heels</a></h3>
                                            <div class="price-cart-wrapper">
                                            	<div class="price">
                                                	$120.00
                                                </div>
                                                <div class="cart">
                                                	<a href="product-details.aspx" class="more">more</a> | <a href="#" class="buy">buy</a>
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
                                <h2 class="widget-title">Categories</h2>
                                <ul>
                                    <li><a href="#">Clothing (8)</a>
                                    	<ul>
                                            <li><a href="#">Woman Dress (4)</a></li>
                                            <li><a href="#">Man Suit (4)</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Furniture (4)</a></li>
                                    <li><a href="#">Electronics (4)</a></li>
                                    <li><a href="#">Accessories (4)</a></li>
                                    <li><a href="#">Shoes (4)</a></li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <a href="#"><img src="images/content/banner.gif" alt="" /></a>
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
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="images/content/videohive.png"></a></li>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="images/content/videohive.png"></a></li>
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
                                    <h2 class="widget-title">Information</h2>
                                    <ul>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms &amp; Condition</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol2"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Customer Services</h2>
                                    <ul>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Site Map</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol3"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">My Account</h2>
                                    <ul>
                                        <li><a href="#">Order History</a></li>
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">Wish List</a></li>
                                        <li><a href="#">Newsletter</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol4"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Extras</h2>
                                    <ul>
                                        <li><a href="#">Brands</a></li>
                                        <li><a href="#">Affiliates</a></li>
                                        <li><a href="#">Gift Vouchers</a></li>
                                        <li><a href="#">Specials</a></li>
                                    </ul>
                              </li>
                            </ul>
                        </div>
                        <div id="footcol5"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Contact Us</h2>
									<div class="textwidget">
                                        Telp: +62 500 800 123<br>
                                        Fax: +62 500 800 112<br>
                                        <a href="mailto:info@yourdomain.com">info@yourdomain.com</a>
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

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="js/custom.js"></script>

<!-- jQuery PrettyPhoto -->
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/fade.js"></script>
<script type="text/javascript" src="js/jquery-easing-1.3.js"></script>

<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

</body>
</html>
