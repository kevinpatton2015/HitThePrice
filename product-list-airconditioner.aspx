<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="product-list-airconditioner.aspx.cs" Inherits="product_list_airconditioner" %>

<asp:Content ContentPlaceHolderId="CPH1" runat="server">
        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 家用电器 / 空调 </div>
                   				<h1 class="pagetitle">空调</h1>
                                
                                <div class="sortPagiBar">
                                <form action="index.aspx" class="productsSortForm">
                                    <p class="select">
                                         <label for="selectPrductSort">综合排序</label>
                                        <select class="selectProductSort">
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
                                        <label>品牌：</label>
                                        <select>
                                            <option selected="selected"> … </option>
                                            <option>格力</option>
                                            <option>海尔</option>
                                            <option>美的</option>
                                            <option>奥克斯</option>
                                            <option>科龙</option>
                                       	</select>
                                    </p>
                                </form>
                                <a href="#" class="button">筛选</a>
                                
                                </div>
                                
                                <div class="row">
                                <div id="product-list-container">
                                
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a title="Woman's Dress Flower" href="product-details.aspx"><img src="images/content/products/p-1.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a title="Woman's Dress Flower" href="product-details.aspx">Woman's Dress Flower</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="checkout.htm" class="cart">加入收藏</a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a title="Gold Dress" href="product-details.aspx"><img src="images/content/products/p-2.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a title="Gold Dress" href="product-details.aspx">Gold Dress</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" class="comparator"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="checkout.htm" class="cart">加入收藏</a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a title="Blue &amp; White" href="product-details.aspx"><img src="images/content/products/p-3.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a title="Blue &amp; White" href="product-details.aspx">Blue &amp; White</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏</a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a title="Brown Dress" href="product-details.aspx"><img src="images/content/products/p-4.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a title="Brown Dress" href="product-details.aspx">Brown Dress</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">$120.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox"  class="comparator" > 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<a href="favorite.aspx" class="cart">加入收藏</a>
                                                    <a href="product-details.aspx"  class="more-link">查看更多</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                    
                                </div>    
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
                                    <li><a href="product-appliance.aspx">家用电器 (4)</a>
                                        <ul>
                                            <li><a href="product-list-airconditioner.aspx">空调 (4)</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <h2 class="widget-title">相关推荐</h2>
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
</asp:Content>