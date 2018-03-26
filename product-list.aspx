﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product-list.aspx.cs" Inherits="product_list" %>
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
  	<link href='http://fonts.useso.com/css?family=Ubuntu:400,700,500,300,400italic,300italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/inner.css" />
    <link rel="stylesheet" href="styles/layout.css" />
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
                                <a href="index.aspx"><img src="images/logo.png" alt="" /></a>
                                <span class="desc">Best Solution for your business</span>
                            </div>
                            <div class="right six columns">

                                <form action="product-list.aspx" id="searchform" method="get">

                                    <input type="text" onblur="if (this.value == '')this.value = 'Search keywords here';" onfocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field" runat="server">
                                    <input type="submit" value="" class="searchbutton">

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
           
        </div>
        <!-- END HEADER -->


        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb" id="breadcrumb"><a href="index.aspx">首页</a> / <span id="proList" runat="server">Product List </span></div>
                   				<h1 class="pagetitle" id="pagetitle" runat="server">Product List</h1>
                                
                                <div class="sortPagiBar">
                                <form action="index.aspx" class="productsSortForm">
                                    <p class="select">
                                        <label>综合排序：</label>
                                        <select>
                                            <option selected="selected" value="position:asc">综合</option>
                                            <option value="price:asc">价格升序</option>
                                            <option value="price:desc">价格降序</option>
                                            <option value="quantity:desc">库存最多</option>
                                            <option value="name:asc">品名拼音A到Z</option>
                                            <option value="name:desc">品名拼音Z到A</option>
                                       	</select>
                                    </p>
                                </form>
                                
                                <form action="index.aspx" class="productsShowForm">
                                    <p class="select">
                                        <label>品牌:</label>
                                        <select>
                                            <option selected="selected"> … </option>
                                            <option>苹果</option>
                                            <option>小米</option>
                                            <option>华为</option>
                                            <option>三星</option>
                                            <option>中兴</option>
                                       	</select>
                                    </p>
                                </form>
                                <a href="#" class="button">筛选</a>
                                
                                </div>
                                
                                <div class="row">
                                <form  id="product"  runat="server">
                                <div id="product-list-container">
                                
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a id="imghref1" title="Woman's Dress Flower" href="product-details.aspx" runat="server"><img id="img1" src="images/content/products/p-1.jpg" alt="" runat="server"/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a id="title1" title="Woman's Dress Flower" href="product-details.aspx" runat="server">Woman's Dress Flower</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div id="price1" class="price" runat="server">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏 </a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a id="imghref2" title="Gold Dress" href="product-details.aspx" runat="server"><img id="img2" src="images/content/products/p-2.jpg" alt="" runat="server"/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a id="title2" title="Gold Dress" href="product-details.aspx" runat="server">Gold Dress</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div id="price2" class="price" runat="server">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" class="comparator"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏 </a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a id="imghref3" title="Blue &amp; White" href="product-details.aspx" runat="server"><img id="img3" src="images/content/products/p-3.jpg" alt="" runat="server"/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a id="title3" title="Blue &amp; White" href="product-details.aspx" runat="server">Blue &amp; White</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div id="price3" class="price" runat="server">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏 </a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a id="imghref4" title="Brown Dress" href="product-details.aspx" runat="server"><img id="img4" src="images/content/products/p-4.jpg" alt="" runat="server"/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a id="title4" title="Brown Dress" href="product-details.aspx" runat="server">Brown Dress</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div id="price4" class="price" runat="server">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox"  class="comparator" > 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏 </a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                </div> 
                                </form>    
                                </div>
								<div class="wp-pagenavi">
                                	<a href="#" class="page">1</a><span class="current"><span>2</span></span><a href="#" class="page">3</a> &nbsp;&nbsp;Showing 4 to 4 of 12 (3 Pages)
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
                                <h2 class="widget-title">相关推荐</h2>
                                <ul class="sp-widget">
                                    <li>
                                        <img id="recommendimg1" src="images/content/products/p-28.jpg" alt=""  runat="server"/>
                                        <h3><a id="recommendtitle1" href="#" runat="server">Woman's Couple Shoes</a></h3>
										<div id="recommendprice1" class="price" runat="server">$120.00</div>
                                    </li>
                                    <li>
                                        <img id="recommendimg2" src="images/content/products/p-20.jpg" alt="" runat="server"/>
                                        <h3><a id="recommendtitle2" href="#" runat="server">Modern Chair</a></h3>
                                        <div id="recommendprice2" class="price" runat="server">$120.00</div>
                                    </li>
                                
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
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script>


<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="js/custom.js"></script>



</body>
</html>
