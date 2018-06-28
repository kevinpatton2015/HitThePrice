<%@ Page Language="C#" MasterPageFile="../Templates/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 购物车

                                </div>
                                <h1 class="pagetitle">购物车</h1>
  
                                <div class="table_block" id="order-detail-content">
                                    <table id="cart_summary">
                                        <thead>
                                            <tr>
                                                <th class="cart_avail item" width="100px">&emsp;</th>
                                                <th class="cart_product first_item" width="500px">图片</th>
                                                <th class="cart_description item" width="800px">产品名称</th>
                                                <th class="cart_ref item" width="5px">&emsp;</th> 
                                                <th class="cart_unit item" width="200px">&emsp;</th>
                                                <th class="cart_quantity item" width="100px">运费</th>
                                                <th class="cart_total item">价格</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="cart_item" >
                                                <td class="cart_avail">
                                                     <input type="checkbox"  class="comparator" /> 
                                                </td>
                                                <td  class="cart_product">
                                                    <a href="https://re.jd.com/cps/item/5825376.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=774b4bab757b44b5bb2f0b0a7bc88eef&abt=3"><img alt="" src="https://img1.360buyimg.com/n7/jfs/t18148/200/634988197/246557/dcc015f9/5a9cb40cNefd80812.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                    <a href="https://re.jd.com/cps/item/5825376.html?cu=true&utm_source=zk.zhimazhekou.com&utm_medium=tuiguang&utm_campaign=t_1000141398_&utm_term=774b4bab757b44b5bb2f0b0a7bc88eef&abt=3">
                                                   【华东爽购】Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机  </a>   	
                                                </td>
                                                <td class="cart_ref">&emsp;</td>
                                                <td class="cart_unit item">
                                                <a class="button" href="favorite.aspx">删除</a></td>
                                                <td class="cart_description"> 包邮 </td>
                                                <td class="cart_total">
                                                    <span class="price"><font color = "#FF0000">￥7749.00</span>
                                                </td>
                                            </tr>
                                            
                                            <tr class="cart_item" >
                                                <td class="cart_avail">
                                                     <input type="checkbox"  class="comparator" /> 
                                                </td>
                                                <td class="cart_product">
                                                    <a href="http://item.gome.com.cn/9140055865-1130523949.html?sid=438&wid=434&feedback=&cmpid=cps_438_434"><img alt="" src="http://gfs10.gomein.net.cn/T1agbvBCKj1RCvBVdK_60.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                     <a href="http://item.gome.com.cn/9140055865-1130523949.html?sid=438&wid=434&feedback=&cmpid=cps_438_434">
                                                    Apple iPhone X 64G 深空灰 全网通4G手机 </a>   	
                                                </td>
                                                <td class="cart_ref">&emsp;</td>
                                                <td class="cart_unit item">
                                                <a class="button" href="favorite.aspx">删除</a></td>
                                                <td class="cart_description"> 包邮 </td>
                                                 <td class="cart_total">
                                                    <span class="price"><font color = "#FF0000" >￥7888.00</span>
                                                </td>

                                            </tr>
                                            
                                            <tr class="cart_item" >
                                                <td class="cart_avail">
                                                     <input type="checkbox"  class="comparator" /> 
                                                </td>
                                                <td class="cart_product">
                                                    <a href="https://www.amazon.cn/gp/product/B075L9T8HF?tag=manmanbuynew24273-23&th=1"><img alt="" src="http://img12.360buyimg.com/n8/jfs/t7297/154/3413903491/65679/45ae4902/59e42830N9da56c41.jpg"></a>
                                                </td>
                                                <td class="cart_description">
                                                     <a href="https://www.amazon.cn/gp/product/B075L9T8HF?tag=manmanbuynew24273-23&th=1">
                                                    Apple 苹果 手机 iPhone X 深空灰色 64G</a>    	
                                                </td>
                                                <td class="cart_ref">&emsp;</td>
                                                <td class="cart_unit item">
                                                <a class="button" href="favorite.aspx">删除</a></td>                                                
                                                <td class="cart_description"> 包邮 </td>
                                                <td class="cart_total">
                                                    <span class="price"><font color = "#FF0000" >￥7947.00</span>
                                                </td>
                                                
                                            </tr>
                                        </tbody>
                                        
                                        <tfoot>
                                            <tr class="cart_total price">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">总价（不含运费）：</td>
                                                <td id="total_product" class="price">$490.00</td>
                                            </tr>
                                            <tr class="cart_total delivery">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">运费：</td>
                                                <td id="total_shipping" class="price">$ 10.00</td>
                                            </tr>								
                                            <tr class="cart_total excl">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">总价（含运费）：</td>
                                                <td id="total_price_without_tax" class="price">$500.00</td>
                                            </tr>
                                            <tr class="cart_total tax">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">折扣：</td>
                                                <td id="total_tax" class="price">0</td>
                                            </tr>
                                            <tr class="cart_total total">
                                            	<td colspan="2" class="none1"> </td>
                                                <td class="none2"> </td>
                                                <td class="none3"> </td>
                                                <td colspan="2">总价：</td>
                                                <td id="total_price_container" class="price total_price_container"><span id="total_price">$500.00</span></td>
                                            </tr>
                                            <tr class="cart_total_price">
                                                <td class="cart_voucher" id="cart_voucher" colspan="7">
                                                <form id="voucher" method="post" action="#">
                                                  <fieldset>
                                                      <h3><label>电子发票</label></h3>
                                                      <p>
                                                      <label>发票抬头：</label>
                                                      <input type="text" value="" name="discount_name" class="discount_name">                                                      </p>
                                                  </fieldset>
                                                </form>
                                                </td>
                                            </tr>
                                        </tfoot>
                                        </table>
                                </div>
								<div style = "text-align:right;">
                                  <a href="portfolio.aspx" class="button">再逛逛</a>&nbsp;
                                  <a href="pay.aspx" class="button exclusive">去结算</a>
                                  <br>
                                    </div>

                                <div id="payment">
                                   
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
                                        <img src="../images/content/products/p-28.jpg" alt="" />
                                        <h3><a href="product-appliance.aspx">Midea/美的 MD100V71WDX 洗衣机滚筒全自动家用10kg公斤变频烘干</a></h3>
										<div class="price">￥2999.00</div>
                                    </li>
                                    <li>
                                        <img src="../images/content/products/p-20.jpg" alt="" />
                                        <h3><a href="product-camera.aspx">Panasonic松下数码相机 DC-GF9KGK美颜4K高清自拍神器微单电gf9</a></h3>
                                        <div class="price">￥3276.00</div>
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
</asp:Content>       