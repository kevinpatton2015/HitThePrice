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
                                            <a title="一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P" href="product-details.aspx"><img src="images/content/products/p-25.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>品牌</span> &nbsp;&nbsp;| &nbsp;&nbsp;奥克斯</div>
                                            <h3><a title="一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P" href="product-details.aspx">一级能效变频空调大1.5匹冷暖挂机AUX/奥克斯 KFR-35GW/BpQYQ1+1P</a></h3>
                                            <p>淘宝网商城,旗舰品牌入驻,爆款手机,强劲配置,热卖机型,正品行货,性价比超高!网购手机,来「天猫手机馆」让人放心的手机商城.采购批发找电子产品<br />电子产品从原料,生产,加工一系列服务.找阿里巴巴,全球领先采购批发平台.<br />深圳 &nbsp;&nbsp;23993人付款</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">￥2799.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>感兴趣</label>
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
                                            <a title="Midea/美的 KFR-26GW/WXDA1@大1匹变频冷暖壁挂空调挂机一级能效" href="product-details.aspx"><img src="images/content/products/p-47.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>品牌</span> &nbsp;&nbsp;| &nbsp;&nbsp;美的</div>
                                            <h3><a title="Midea/美的 KFR-26GW/WXDA1@大1匹变频冷暖壁挂空调挂机一级能效" href="product-details.aspx">Midea/美的 KFR-26GW/WXDA1@大1匹变频冷暖壁挂空调挂机一级能效</a></h3>
                                            <p>淘宝网商城,旗舰品牌入驻,爆款手机,强劲配置,热卖机型,正品行货,性价比超高!网购手机,来「天猫手机馆」让人放心的手机商城.采购批发找电子产品<br />电子产品从原料,生产,加工一系列服务.找阿里巴巴,全球领先采购批发平台.<br />深圳 &nbsp;&nbsp;23993人付款</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">￥3249.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" class="comparator"> 
                                                <label>感兴趣</label>
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
                                            <a title="格力空调大1匹变频冷暖挂机KFR-26GW/(26592)FNhDa-A3品圆" href="product-details.aspx"><img src="images/content/products/p-48.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>品牌</span> &nbsp;&nbsp;| &nbsp;&nbsp;格力</div>
                                            <h3><a title="格力空调大1匹变频冷暖挂机KFR-26GW/(26592)FNhDa-A3品圆" href="product-details.aspx">格力空调大1匹变频冷暖挂机KFR-26GW/(26592)FNhDa-A3品圆</a></h3>
                                            <p>淘宝网商城,旗舰品牌入驻,爆款手机,强劲配置,热卖机型,正品行货,性价比超高!网购手机,来「天猫手机馆」让人放心的手机商城.采购批发找电子产品<br />电子产品从原料,生产,加工一系列服务.找阿里巴巴,全球领先采购批发平台.<br />深圳 &nbsp;&nbsp;23993人付款</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">￥2699.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>感兴趣</label>
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
                                            <a title="大1.5匹p变频冷暖壁挂式空调机Haier/海尔 KFR-35GW/21TMAAL23AU1" href="product-details.aspx"><img src="images/content/products/p-49.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>品牌</span> &nbsp;&nbsp;| &nbsp;&nbsp;海尔</div>
                                            <h3><a title="大1.5匹p变频冷暖壁挂式空调机Haier/海尔 KFR-35GW/21TMAAL23AU1" href="product-details.aspx">大1.5匹p变频冷暖壁挂式空调机Haier/海尔 KFR-35GW/21TMAAL23AU1</a></h3>
                                            <p>淘宝网商城,旗舰品牌入驻,爆款手机,强劲配置,热卖机型,正品行货,性价比超高!网购手机,来「天猫手机馆」让人放心的手机商城.采购批发找电子产品<br />电子产品从原料,生产,加工一系列服务.找阿里巴巴,全球领先采购批发平台.<br />深圳 &nbsp;&nbsp;23993人付款</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">￥2899.00</div>
                                                <form action="index.aspx" class="compare">
                                                <input type="checkbox"  class="comparator" > 
                                                <label>感兴趣</label>
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
                                	<span class="current"><span>1</span></span><a href="#" class="page">2</a><a href="#" class="page">3</a> &nbsp;&nbsp;第1页/共3页
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
                                        <img src="images/content/products/p-19.jpg" alt="" />
                                        <h3><a href="product-camera.aspx">照相机数码 高清 旅游 迷你卡片机Canon/佳能 PowerShot SX730 HS</a></h3>
										<div class="price">￥2279.00</div>
                                    </li>
                                    <li>
                                        <img src="images/content/products/p-17.jpg" alt="" />
                                        <h3><a href="product-camera.aspx">Sony/索尼 DSC-H400 佳能 入门小单反 长焦照相机 高清 数码 旅游</a></h3>
                                        <div class="price">￥1699.00</div>
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