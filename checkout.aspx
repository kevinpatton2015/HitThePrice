﻿<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>购物车 - HitThePrice - 价格再低一点</title>
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
                                <ul id="topnav">
                                    <div class="clear"></div>
                                    <div class="login">您好！请 <a href="login.aspx"><strong>登录</strong></a>&emsp;<a href="register.aspx" style="color: #FF003B"><strong>免费注册</strong></a></div>
                                </ul>
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

                                <form action="#" id="searchform" method="get">

                                    <input type="text" onblur="if (this.value == '')this.value = 'Search keywords here';" onfocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field">
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
                                            <li><a href="#">手机</a></li>
                                            <li><a href="#">移动电源</a></li>
                                            <li><a href="#">耳机</a></li>
                                            <li><a href="#">存储卡</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-laptop.aspx">电脑、配件</a>
                                        <ul>
                                            <li><a href="#">平板电脑</a></li>
                                            <li><a href="#">笔记本电脑</a></li>
                                            <li><a href="#">键盘</a></li>
                                            <li><a href="#">鼠标</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-camera.aspx">摄影、摄像</a>
                                        <ul>
                                            <li><a href="#">数码相机</a></li>
                                            <li><a href="#">单反相机</a></li>
                                            <li><a href="#">微单\单电相机</a></li>
                                            <li><a href="#">单反镜头</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="product-pad.aspx">家用电器</a>
                                        <ul>
                                            <li><a href="#">电视机</a></li>
                                            <li><a href="#">洗衣机</a></li>
                                            <li><a href="#">空调</a></li>
                                            <li><a href="#">电冰箱</a></li>
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
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 购物车</div>
                                <h1 class="pagetitle">Checkout</h1>
  
                                <div class="table_block" id="order-detail-content">
                                    <table id="cart_summary">
                                        <thead>
                                            <tr>
                                                <th class="cart_product first_item">Product</th>
                                                <th class="cart_description item">Description</th>
                                                <th class="cart_ref item">Ref.</th>
                                                <th class="cart_avail item">Avail.</th>
                                                <th class="cart_unit item">Unit price</th>
                                                <th class="cart_quantity item">Qty</th>
                                                <th class="cart_total item">Total</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="cart_item" >
                                                <td class="cart_product">
                                                    <a href="#"><img alt="" src="images/content/products/p-small1.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                    iPhone 4S for Gift    	
                                                </td>
                                                <td class="cart_ref">--</td>
                                                <td class="cart_avail"><img alt="" src="images/check.gif"></td>
                                                <td class="cart_unit"> $120.00 </td>
                                                <td class="cart_quantity"> 1 </td>
                                                <td class="cart_total">
                                                    <span class="price">$120.00</span>
                                                </td>
                                            </tr>
                                            
                                            <tr class="cart_item" >
                                                <td class="cart_product">
                                                    <a href="#"><img alt="" src="images/content/products/p-small2.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                    Modern Chair      	
                                                </td>
                                                <td class="cart_ref">--</td>
                                                <td class="cart_avail"><img alt="" src="images/check.gif"></td>
                                                <td class="cart_unit"> $250.00   </td>
                                                <td class="cart_quantity"> 1 </td>
                                                <td class="cart_total">
                                                    <span class="price">$250.00  </span>
                                                </td>
                                            </tr>
                                            
                                            <tr class="cart_item" >
                                                <td class="cart_product">
                                                    <a href="#"><img alt="" src="images/content/products/p-small3.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                    Man's Watch Brown  	
                                                </td>
                                                <td class="cart_ref">--</td>
                                                <td class="cart_avail"><img alt="" src="images/check.gif"></td>
                                                <td class="cart_unit"> $120.00 </td>
                                                <td class="cart_quantity"> 1 </td>
                                                <td class="cart_total">
                                                    <span class="price">$120.00</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        
                                        <tfoot>
                                            <tr class="cart_total price">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">Total products (tax incl.):</td>
                                                <td id="total_product" class="price">$490.00</td>
                                            </tr>
                                            <tr class="cart_total delivery">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">Total shipping (tax incl.):</td>
                                                <td id="total_shipping" class="price">$ 10.00</td>
                                            </tr>								
                                            <tr class="cart_total excl">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">Total (tax excl.):</td>
                                                <td id="total_price_without_tax" class="price">$500.00</td>
                                            </tr>
                                            <tr class="cart_total tax">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">Total tax:</td>
                                                <td id="total_tax" class="price">0</td>
                                            </tr>
                                            <tr class="cart_total total">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">Total:</td>
                                                <td id="total_price_container" class="price total_price_container"><span id="total_price">$500.00</span></td>
                                            </tr>
                                            <tr class="cart_total_price">
                                                <td class="cart_voucher" id="cart_voucher" colspan="7">
                                                <form id="voucher" method="post" action="#">
                                                  <fieldset>
                                                      <h3><label>Vouchers</label></h3>
                                                      <p>
                                                      <label>code: </label>
                                                      <input type="text" value="" name="discount_name" class="discount_name">
                                                      <input type="hidden" name="submitDiscount"><input type="submit" class="button" value="Add Code" name="submitAddDiscount">
                                                      </p>
                                                  </fieldset>
                                                </form>
                                                </td>
                                            </tr>
                                        </tfoot>
                                        </table>
                                </div>
								
                                <a href="#" class="button">Continue  Shopping</a>&nbsp;
                                <a href="#" class="button exclusive">Next</a>
                                <br>

                                <div id="payment">
                                    <ul class="payment_methods">
                                        <li>
                                            <input type="radio" id="payment_method_bacs" class="input-radio" name="payment_method" value="bacs" checked="checked" />
                                            <label for="payment_method_bacs">Direct Bank Transfer </label> 
                                            <div class="payment_box">
                                            <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. 
                                            Your order wont be shipped until the funds have cleared in our account.</p>
                                            </div>						
                                        </li>
                                        <li>
                                            <input type="radio" id="payment_method_cheque" class="input-radio" name="payment_method" value="cheque"  />
                                            <label for="payment_method_cheque">Cheque Payment </label> 					
                                        </li>
                                        <li>
                                        <input type="radio" id="payment_method_paypal" class="input-radio" name="payment_method" value="paypal"  />
                                        <label for="payment_method_paypal">PayPal <img src="images/paypal.png" alt="PayPal" /></label> 					
                                        </li>
                                    </ul>
                                
                                    <div class="form-row">		
                                        <a href="#" class="button">Place order</a>
                                    </div>
                                    <div class="clear"></div>
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
                                <h2 class="widget-title">Special Offers</h2>
                                <ul class="sp-widget">
                                    <li>
                                        <img src="images/content/products/p-28.jpg" alt="" />
                                        <h3><a href="#">Woman's Couple Shoes</a></h3>
										<div class="price">$120.00</div>
                                    </li>
                                    <li>
                                        <img src="images/content/products/p-20.jpg" alt="" />
                                        <h3><a href="#">Modern Chair</a></h3>
                                        <div class="price">$120.00</div>
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
                        Copyright &copy;2012. All Rights Reserved.  &copy;信管152高俊健、电信151贺一凡、电信151张悦程制作</a>
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