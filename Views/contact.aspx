<%@ Page Language="C#" MasterPageFile="../Templates/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="index.aspx">首页</a> / 联系我们</div>
                                <h1 class="pagetitle">我们在这里</h1>
                                	<div class="frame">
                       				<iframe src="../map.html" style="width:100%; height:316px; border:0; margin:0 0 0px 0; display:block;"></iframe>
                                    </div>
                                    <br>

                                	<h3>你的建议</h3>
                                    <div id="contactform">
                                        <form id="contact" action="#">
                                          <fieldset>

                                          <div class="left">
                                          <input type="text" name="name" id="name" size="50" value="姓名 *" class="text-input" onblur="if (this.value == ''){this.value = '姓名 *'; }" onfocus="if (this.value == '姓名 *') {this.value = ''; }" />
                                          <input type="text" name="phone" id="phone" size="50" value="联系方式 *" class="text-input" onblur="if (this.value == ''){this.value = '联系方式 *'; }" onfocus="if (this.value == '联系方式 *') {this.value = ''; }" />
                                          <input type="text" name="email" id="email"  value="邮箱" class="text-input" onblur="if (this.value == ''){this.value = '邮箱'; }" onfocus="if (this.value == '邮箱') {this.value = ''; }" />
                                          <input type="text" name="address" id="address"  value="地址" class="text-input" onblur="if (this.value == ''){this.value = '地址'; }" onfocus="if (this.value == '地址') {this.value = ''; }" />
                                          	<span class="error" id="name_error">请输入姓名！</span>
                                          	<span class="error" id="phone_error">请输入联系方式！</span>
                                          	<span class="error" id="email_error">请输入邮箱！</span>
                                          	<span class="error" id="msg_error">请输入建议！</span>
                                          	<span>注：带*项为必填</span>
                                          </div>
                                          <div class="right">
                                          <textarea cols="60" rows="10" name="msg" id="msg" class="text-input">建议 *</textarea>
                                          <br class="clear" />
                                          <input type="submit" name="submit" class="button mini" id="submit_btn" value="提交建议"/>
                                          </div>
                                          </fieldset>
                                        </form>
                                    </div><!-- end contactform -->
                               		<p></p>

							</section>
                         
                        </div>
                    </section>
                    
                    <aside class="two columns">
                    
                    	<div class="sidebar">
                        <ul>
                            <li class="widget-container">
                                <h2 class="widget-title">公司地址</h2>
                                <div class="textarea">
                                <p>上海市 奉贤区</p>
                                    <p>奉浦大道123号</p>
                                    <p>上海商学院</p>
                                    <p>电话: +86 64870020
                                    </p>
                                
                                  <a href="mailto:kevinpatton2015@icloud.com"> kevinpatton2015@icloud.com</a>
                                </div>
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
          