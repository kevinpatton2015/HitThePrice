﻿<!DOCTYPE html>
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

    <link rel="stylesheet" href="../styles/style.css" />
    <link rel="stylesheet" href="../styles/inner.css" />
    <link rel="stylesheet" href="../styles/layout.css" />
    <link rel="stylesheet" href="../styles/color.css" />

    

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="../images/favicon.ico" />

    
    
</head>


<body class="single">

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
                                    Language:  <a href="#"><img src="../images/eng.png" alt="" /></a> <a href="#"><img src="../images/fr.png" alt="" /></a> <a href="#"><img src="../images/gr.png" alt="" /></a>
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
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / Blog</div>
                                <h1 class="pagetitle">Our Blog</h1>
                                
                                <article class="post">

                                        <div class="postimg">
                                            <img alt="" src="../images/content/post1.jpg">
                                        </div>

                                        <div class="entry-content">
                                            
                                            <div class="entry-utility">
                                                February 01, 2013 / <a href="#">Articles</a> / <a href="#">0 Comment</a>
                                            </div>
                                            <h2 class="posttitle"><a href="single.aspx">Suspendisse scelerisque lectus tortor.</a></h2>
                                            
                                            <p>Suspendisse a nunc magna, sit amet tempus sem. Pellentesque sit amet lectus mi, et imperdiet ante. Sed vitae hendrerit mauris. Proin vel tellus nec arcu congue vehicula nec sed nulla. Duis auctor porta leo vitae consequat. Integer ut augue ante, et lobortis lacus. </p>

<p>Ut tempus velit ac arcu egestas dictum. Donec tellus dui, hendrerit at sagittis vel, cursus in dui. In fringilla justo et sapien cursus vitae posuere orci. </p>
<p>Nunc aliquet eros purus, ac molestie nisi. Pellentesque ligula elit, ullamcorper ac sagittis aliquam, rhoncus in erat. In interdum tincidunt tristique. In in ligula velit, in pharetra nibh. Etiam non neque arcu. Mauris ullamcorper elit ac elit commodo eget elementum turpis semper. Sed eget arcu in lacus faucibus molestie. Sed varius faucibus molestie. Proin diam quam, commodo a tincidunt id, lobortis interdum neque. Phasellus nec justo arcu. </p>

<p>Etiam libero tellus, bibendum sit amet semper a, varius nec ante. Donec nibh dui, auctor vel cursus vel, faucibus pellentesque lacus. Suspendisse a nunc magna, sit amet tempus sem. Pellentesque sit amet lectus mi, et imperdiet ante. Sed vitae hendrerit mauris. Proin vel tellus nec arcu congue vehicula nec sed nulla. Aenean ut elit metus, vitae fermentum neque. Morbi feugiat ultricies urna, sed consequat est commodo a. Nam luctus volutpat sodales. Vivamus tempus, dui sit amet ultricies commodo, sem orci ullamcorper nisi, nec hendrerit quam sapien ut massa. </p>

                                        </div>

            
                                    <div class="clear"></div>
                                </article>
                                
                                <div class="author">
                                	<h3>About the Author</h3>
                                    <span class="alignleft frame"><img class="avatar" alt="" src="../images/content/author.jpg"></span>
                                    <cite class="fn">John Doe </cite>
                                    <p>Aliquam erat volutpat. Nulla vel dolor vitae purus blandit semper. Sed neque eros, viverra vel sollicitudin mollis, luctus eget nulla. Maecenas in risus eu velit pretium egestas eget sit amet magna. Cum sociis natoque penatibus.</p>
                                    <div class="clear"></div>
                                </div>
                                
                                <section id="comment">
                                    <h3>4 Comments</h3>
                                    <ol class="commentlist">
                                        <li>
                                            <div class="comment-body">
                                                <div class="avatar-img"><img src="../images/content/avatar.gif" alt="" class="avatar frame"/></div>
                                                <cite class="fn">Richard Delano</cite>
                                                <div class="dr">
                                                    <span class="tdate">August 17, 2010 &nbsp;/&nbsp; 7:15 am</span> &nbsp;-&nbsp; <span class="reply"><a href="#" class="more">Reply</a></span>
                                                </div>
                                                <div class="commenttext">
                                                    <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="comment-body">
                                                <div class="avatar-img"><img src="../images/content/avatar.gif" alt="" class="avatar frame"/></div>
                                                <cite class="fn"><a href="#">Michael John</a></cite>&nbsp;
                                                <div class="dr">
                                                    <span class="tdate">August 17, 2010 &nbsp;/&nbsp; 7:15 am</span> &nbsp;-&nbsp; <span class="reply"><a href="#" class="more">Reply</a></span>
                                                </div>
                                                <div class="commenttext">
                                                    <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                                </div>
                                            </div>
                                            <ol>
                                                <li><div class="com-line"></div>
                                                    <div class="comment-body">
                                                        <div class="avatar-img"><img src="../images/content/avatar.gif" alt="" class="avatar frame"/></div>
                                                        <cite class="fn"><a href="#">Wayne Rooney</a></cite>&nbsp;
                                                        <div class="dr">
                                                            <span class="tdate">August 17, 2010 &nbsp;/&nbsp; 7:15 am</span> &nbsp;-&nbsp; <span class="reply"><a href="#" class="more">Reply</a></span>
                                                        </div>
                                                        <div class="commenttext">
                                                            <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
                                        </li>
                                        <li>
                                            <div class="comment-body">
                                                <div class="avatar-img"><img src="../images/content/avatar.gif" alt="" class="avatar frame"/></div>
                                                <cite class="fn"><a href="#">John Doe</a></cite>&nbsp;
                                                <div class="dr">
                                                    <span class="tdate">August 17, 2010 &nbsp;/&nbsp; 7:15 am</span> &nbsp;-&nbsp; <span class="reply"><a href="#" class="more">Reply</a></span>
                                                </div>
                                                <div class="commenttext">
                                                    <p>Nulla lobortis facilisis eros vitae mollis. Morbi consectetur, tortor ut feugiat rhoncus, nunc augue placerat massa, sit amet laoreet est libero quis nisl. Integer cursus sodales sem eu dapibus. Morbi lobortis eleifend lectus sit amet porttitor. Nam tincidunt congue laoreet.</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ol>
        
                                </section>
                               
							</section>
                         
                        </div>
                    </section>
                    
                    <aside class="two columns">
                    
                    	<div class="sidebar">
                        <ul>
                            <li class="widget-container">
                                <h2 class="widget-title">商品目录</h2>
                                <ul>
                                    <li><a href="#">手机 (8)</a>
                                    	<ul>
                                            <li><a href="#">Woman Dress (4)</a></li>
                                            <li><a href="#">Man Suit (4)</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Furniture (4)</a></li>
                                    <li><a href="#">相机 (4)</a></li>
                                    <li><a href="#">电脑 (4)</a></li>
                                    <li><a href="#">Shoes (4)</a></li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <h2 class="widget-title">Special Offers</h2>
                                <ul class="sp-widget">
                                    <li>
                                        <img src="../images/content/products/p-28.jpg" alt="" />
                                        <h3><a href="#">Woman's Couple Shoes</a></h3>
										<div class="price">$120.00</div>
                                    </li>
                                    <li>
                                        <img src="../images/content/products/p-20.jpg" alt="" />
                                        <h3><a href="#">Modern Chair</a></h3>
                                        <div class="price">$120.00</div>
                                    </li>
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



</body>
</html>
