<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single.aspx.cs" Inherits="单品" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!doctype html>

<head>
    <meta charset="utf-8">
    <title>详情页面</title>
    <link href="css/shopdetail.css" rel="stylesheet" type="text/css">
    <script src="js/countTime.js" charset="gbk"></script>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/common.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var showproduct = {
                "boxid": "showbox",
                "sumid": "showsum",
                "boxw": 400,
                "boxh": 550,
                "sumw": 60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh": 60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi": 7,//列表间隔
                "sums": 5,//列表显示个数
                "sumsel": "sel",
                "sumborder": 1,//列表边框，没有边框填写0，边框在css中修改
                "lastid": "showlast",
                "nextid": "shownext"
            };//参数定义
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行

            $(function () {

                $('.tabs a').click(function () {

                    var $this = $(this);
                    $('.panel').hide();
                    $('.tabs a.active').removeClass('active');
                    $this.addClass('active').blur();
                    var panel = $this.attr("href");
                    $(panel).show();
                    return fasle;  //告诉浏览器  不要纸箱这个链接
                })//end click


                $(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧



            })//end ready

            $(".centerbox li").click(function () {
                $("li").removeClass("now");
                $(this).addClass("now")

            });


        });




    </script>
</head>

<body>
    <form id="form1" runat="server">
<!-----header部分------->

	<ul id="gudie">
	<li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">新品推荐</a></li>
    <li><a href="surfacepen.aspx" target="_blank">热度最高</a></li>
    <li><a href="surfacedial.aspx" target="_blank">商品分类</a></li>
	<li><a href="findus.aspx" target="_blank">找到我们</a></li>
    <li><a href="connect.aspx" target="_blank">联系我们</a></li>
    <div class="dropdown">
       <%if (userId != null){%>
            <a href="#" class="dropbtn"><span class="导航栏字体">Welcome,<%=userId %></span></a>
            <div class="dropdown-content">
                <a href="BlockChain.aspx" class="导航栏字体">详情</a>
                <a href="blank.aspx" class="导航栏字体">注销</a>
            </div>
        <%}else{%>
        <a href="#" class="dropbtn"><span class="导航栏字体">登录注册</span></a>
        <div class="dropdown-content">
            <a href="register.aspx" class="导航栏字体">注册</a>
            <a href="login.aspx" class="导航栏字体">登录</a>
            <%} %>
         </div>
    </div>
	<li><a href="#" target="_blank">我的购物车</a></li>
	</ul>




<div class="shopdetails">
	<!------商品幻灯片-------->
	<div id="leftbox">
	<div id="showbox">
  <img src="images/shopdetail/macbook grey.jpg" width="400" height="550" />
  <img src="images/shopdetail/macbooksliver.jpg" width="400" height="550" />
  <img src="images/shopdetail/macbookgold.jpg" width="400" height="550" />
  <img src="images/shopdetail/macbook01.jpg" width="400" height="550" />
  <img src="images/shopdetail/macbook.jpg" width="400" height="400" />
  <img src="images/shopdetail/macbook03.jpg" width="400" height="400" />

	</div>
		<div id="`` 1showsum"></div>
		<p class="showpage">
 		 <a href="javascript:void(0);" id="showlast"> < </a>
  		 <a href="javascript:void(0);" id="shownext"> > </a>
		</p>
        
	</div>
    


    <div class="centerbox">
    	<p class="imgname">Macbook</p>
    	<p class="Aprice">底价：<samp>￥24000.00</samp></p>
    	<p class="price">当前价：<samp runat="server">￥<%=price %></samp></p>
    	<p class="youhui">店铺优惠：<samp>包邮</samp></p>
    	<p class="kefu">客服：<a href="mailto:keepagreement@foxmail.com" title="18018848081"><img src="images/shopdetail/tell03.png" margin-top="10px"margin-left="10px"
	width="90px"></a></p>
        <ul>
        <li class="kuanshi">款式：</li>
        <li class="now shopimg"><a href="#" title="灰色"><img src="images/shopdetail/macbook grey.jpg" width="45"></a></li>
        <li class="shopimg"><a href="#" title="银色"><img src="images/shopdetail/macbooksliver.jpg" width="45"></a></li>
        
        </ul>
        <div class="clear"></div>
        <p class="chima">规格：</p>
        <p class="buy">
            <%if (userId != null){%>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server"  Text="竞价"  Visible="True"  style="z-index:999" Height="27px" BackColor="#FF3300" Font-Bold="True" ForeColor="White" OnClick="Button1_Click1"/>
            <%}else{%>
                <a href="login.aspx">请先登录</a>
            <%} %>
            <a href="#">加入愿望单</a>
        </p>
        <br/>
         &nbsp;&nbsp;&nbsp;&nbsp <div id="Timer0"></div>	
   		<div class="clear"></div>
      
        <p class="fuwu">服务承诺：</p>
        <p class="pay">支付方式：</p>
    </div>
 
	
   <div class="rightbox">
    	<p class="name">热卖中</p>
        	<a href="#" class="ex01">
				<img src="<%=img_src[6] %>" width="170" height="245">
				<p><%=pro_title[6] %></p>
				<p></p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[7] %>" width="170" height="245">
				<p><%=pro_title[7] %></p>
				<p></p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[8] %>" width="170" height="245">
				<p><%=pro_title[8] %></p>
				<p></p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[9] %>" width="170" height="245">
				<p><%=pro_title[9] %></p>
				<p></p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[10] %>" width="170" height="245">
				<p><%=pro_title[10] %></p>
				<p></p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[11] %>" width="170" height="245">
				<p><%=pro_title[11] %></p>
				<p></p>
			</a>
    </div>
            
</div>

<div class="evaluate">

	<div class="classify">
   
        <div class="shopfl">
        	<p class="name">本站分类</p>
        	<ul>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">全部商品</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">智能冰箱</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">智能电视</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">智能空调</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">智能手机</a></li>
                <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">笔记本电脑</a></li>
                <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">配件</a></li>
            </ul>
        </div>
        <div class="shopsee">
        	<p class="name">看了又看</p>
        	<a href="#" class="ex01">
				<img src="<%=img_src[0] %>" width="170" height="245">
				<p><%=pro_title[0] %></p>
				<p></p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[1] %>" width="170" height="245">
				<p><%=pro_title[1] %></p>
				<p>]</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[2] %>" width="170" height="245">
				<p><%=pro_title[2] %></p>
				<p></p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[3] %>" width="170" height="245">
				<p><%=pro_title[3] %></p>
				<p></p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[4] %>" width="170" height="245">
				<p><%=pro_title[4] %></p>
				<p></p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[5] %>" width="170" height="245">
				<p><%=pro_title[5] %></p>
				<p></p>
			</a>
        </div>
    
    
    </div>
    
    
    <div class="tabbedPanels">
    	<ul class="tabs">
        	<li><a href="#panel01">商品详情</a></li>
            <li><a href="#panel02" class="active">累计评价</a></li>
        	<li><a href="#panel03">商品推荐</a></li>
        </ul>
        
     <div class="panelContainer">
       	<div class="panel" id="panel01">
        	<p class="sell">商品描述</p>
            <p>Apple/苹果 13 英寸 MacBook Pro 2.3GHz 处理器 256GB 存储容量 </p>
            <p></p>
            <p class="sell">整体描述</p>
            <img src="images/shopdetail/macbookdetail1.jpg" width="680" height="490">
            <img src="images/shopdetail/macbookdetail2.jpg" width="680" height="700">
                   <img src="images/shopdetail/macbookdetail3.jpg" width="680" height="900">
               
               <img src="images/shopdetail/macbookdetail6.jpg" width="680" height="900">
            <img src="images/shopdetail/macbookdetail4.jpg" width="680" height="700">
            
        	<div class="clear"></div>
        </div>
        
        <div class="panel" id="panel02">
        	<p class="sell">买家评价</p>
        	<img src="images/shopdetail/detail101.png">
            <p class="judge">全部评价(0)<span>晒图(0)</span></p>
            
            
            
              <div class="clear"></div>
        </div>
            
        <div class="panel" id="panel03">
        	<p class="sell">本店热卖商品</p>
        <div class="com">
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/honor.jpg"width="210" height="193"/><figcaption>华为荣耀</figcaption></figure>
				<p>华为荣耀</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/iphonex.jpg"width="210" height="193"/><figcaption>苹果X</figcaption></figure>
				<p>苹果X</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/luhan.jpg"width="210" height="193"/><figcaption>鹿晗代言笔记本</figcaption></figure>
				<p>鹿晗代言笔记本</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/meizu.jpg"width="210" height="193"/><figcaption>魅族手机</figcaption></figure>
				<p>魅族手机</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a> 
            <a href="#" class="ex01"><figure>
				<img src="images/shopdetail/meizublue.jpg"width="210" height="193"/><figcaption>魅族蓝手机</figcaption></figure>
				<p>魅族蓝手机 </p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a> 
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/mibook.jpg"width="210" height="193"/><figcaption>小米笔记本</figcaption></figure>
				<p>小米笔记本</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/oppo.jpg"width="210" height="193"/><figcaption>oppo手机</figcaption></figure>
				<p>oppo手机</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/thinkpad.jpg"width="210" height="193"/><figcaption>thinkpad笔记本电脑</figcaption></figure>
				<p>thinkpad笔记本电脑</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="images/shopdetail/三星s9.jpg"width="210" height="193"/><figcaption>三星Galaxy S9手机</figcaption></figure>
				<p>三星Galaxy S9手机</p>
				<div class="bottom"><samp>商城价:￥？？？元</samp><input type="button" style=" cursor:pointer;" value="购买" /></div>	
			</a> 
            
		</div>
		
               <div class="clear"></div>
        </div>
            
            
         </div>
    
    </div>

</div>

<!----底边栏----->
<div class="backf">
<div id="footer">
	 <ul>
  <li class="sy">支付方式</li>
  <li><a href="#">在线支付</a></li>
  <li><a href="#">货到付款</a></li>
  <li><a href="#">发票说明</a></li>
  <li><a href="#">余额宝</a></li>
  
  </ul>
    <ul>
  <li class="sy">购物指南</li>
  <li><a href="#">免费注册</a></li>
  <li><a href="#">申请会员</a></li>
  <li><a href="#">开通支付宝</a></li>
  <li><a href="#">支付宝充值</a></li>
  </ul>
  <ul>
  <li class="sy">商家服务</li>
  <li><a href="#">联系我们</a></li>
  <li><a href="#">客服服务</a></li>
  <li><a href="#">物流服务</a></li>
  <li><a href="#">缺货赔付</a></li>
  </ul>
    <ul>
  <li class="sy">关于我们</li>
  <li><a href="#">知识产权</a></li>
  <li><a href="#">网站合作</a></li>
  <li><a href="#">规则意见</a></li>
  <li><a href="#">帮助中心</a></li>
  </ul>
    <ul>
  <li class="sy">其他服务</li>
  <li><a href="#">诚聘英才</a></li>
  <li><a href="#">法律声明</a></li>

  </ul><div class="clear"></div>
</div>	
    <div class="foot">
    	
       <p>©信管152高俊健 电信151贺一凡、张悦程制作</p>
    
	</div>
</div>

    </form>

</body>
</html>
