<%@ Page Language="C#" MasterPageFile="../Templates/MasterPage.master" AutoEventWireup="true" CodeFile="favorite.aspx.cs" Inherits="favorite" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 我的收藏</div>
                                <h1 class="pagetitle">我的收藏</h1>
                                <form name="fav" runat="server">
                                <div class="table_block" id="order-detail-content">
                                      <!--<table id="cart_summary">-->
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="itemname" DataSourceID="AccessDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="itemname" HeaderText="品名" ReadOnly="True" SortExpression="itemname" />
                                            <asp:BoundField DataField="itemprice" HeaderText="价格" SortExpression="itemprice" />
                                            <asp:ImageField DataImageUrlField="itempic" HeaderText="样式">
                                            </asp:ImageField>
                                            <asp:CommandField ShowDeleteButton="True" />
                                        </Columns>

                                    </asp:GridView>
                                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                        DataFile="~/App_Data/userchec.mdb" DeleteCommand="DELETE FROM [item_infor] WHERE (([itemname] = ?) OR ([itemname] IS NULL AND ? IS NULL)) AND (([itemprice] = ?) OR ([itemprice] IS NULL AND ? IS NULL)) AND (([itemid] = ?) OR ([itemid] IS NULL AND ? IS NULL)) AND (([itempic] = ?) OR ([itempic] IS NULL AND ? IS NULL))"
                                        InsertCommand="INSERT INTO [item_infor] ([itemname], [itemprice], [itemid], [itempic]) VALUES (?, ?, ?, ?)"
                                        SelectCommand="SELECT [itemname], [itemprice], [itemid], [itempic] FROM [item_infor] WHERE ([itemid] = ?)"
                                        UpdateCommand="UPDATE [item_infor] SET [itemprice] = ?, [itemid] = ?, [itempic] = ? WHERE (([itemname] = ?) OR ([itemname] IS NULL AND ? IS NULL)) AND (([itemprice] = ?) OR ([itemprice] IS NULL AND ? IS NULL)) AND (([itemid] = ?) OR ([itemid] IS NULL AND ? IS NULL)) AND (([itempic] = ?) OR ([itempic] IS NULL AND ? IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_itemname" Type="String" />
                                            <asp:Parameter Name="original_itemprice" Type="Int32" />
                                            <asp:Parameter Name="original_itemprice" Type="Int32" />
                                            <asp:Parameter Name="original_itemid" Type="Int32" />
                                            <asp:Parameter Name="original_itemid" Type="Int32" />
                                            <asp:Parameter Name="original_itempic" Type="String" />
                                            <asp:Parameter Name="original_itempic" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="itemname" Type="String" />
                                            <asp:Parameter Name="itemprice" Type="Int32" />
                                            <asp:Parameter Name="itemid" Type="Int32" />
                                            <asp:Parameter Name="itempic" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="3" Name="itemid" SessionField="itemid" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="itemprice" Type="Int32" />
                                            <asp:Parameter Name="itemid" Type="Int32" />
                                            <asp:Parameter Name="itempic" Type="String" />
                                            <asp:Parameter Name="original_itemname" Type="String" />
                                            <asp:Parameter Name="original_itemprice" Type="Int32" />
                                            <asp:Parameter Name="original_itemprice" Type="Int32" />
                                            <asp:Parameter Name="original_itemid" Type="Int32" />
                                            <asp:Parameter Name="original_itemid" Type="Int32" />
                                            <asp:Parameter Name="original_itempic" Type="String" />
                                            <asp:Parameter Name="original_itempic" Type="String" />
                                        </UpdateParameters>
                                    </asp:AccessDataSource>
                                </div>
								</form>
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