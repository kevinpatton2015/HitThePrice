<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>详情页面</title>
<link href="css/productdetail.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/common.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,
		  "boxh":550,
		  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  "sumi":7,//列表间隔
		  "sums":5,//列表显示个数
		  "sumsel":"sel",
		  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定义	  
	 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
	 
	 $(function(){

		$('.tabs a').click(function(){
			
			var $this=$(this);
			$('.panel').hide();
			$('.tabs a.active').removeClass('active');
			$this.addClass('active').blur();
			var panel=$this.attr("href");
			$(panel).show();				
			return fasle;  //告诉浏览器  不要纸箱这个链接
			})//end click
			
			
			$(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧
	

		
		})//end ready
		
		$(".centerbox li").click(function(){
			$("li").removeClass("now");
			$(this).addClass("now")
			
			});
		
			
});
	
			
		
		
</script>
</head>

<body>
<!-----header部分------->
<div class="header">
<div class="topnav"> 
	<ul>
	<li><a href="Default.aspx" class="active"><span class="导航栏字体">首页</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">新品推荐</a></li>
    <li><a href="surfacepen.aspx" target="_blank">热度最高</a></li>
    <li><a href="surfacedial.aspx" target="_blank">商品分类</a></li>
    <div class="dropdown">
        <a href="#" class="dropbtn"><span class="导航栏字体">登录注册</span></a>
        <div class="dropdown-content">
            <a href="login.aspx" class="导航栏字体">注册</a>
            <a href="denglu.aspx" class="导航栏字体">登录</a>
         </div>
    </div>
	<li><a href="#" target="_blank"><img src="images/index_img/top1.jpg" />我的购物车</a></li>
	<li><a href="findus.html" target="_blank">找到我们</a></li>
    <li><a href="connect.html" target="_blank">联系我们</a></li>
	</ul>
</div>
<!-----logo_search部分------->
<div class="logobg">
	<div class="center">
		<div class="logo">
			<img src="images/index_img/logo.gif" width="249" height="55">
		</div>
		 <form id="searchForm">
     <input type="text" id="searchTxt">
     <input type="submit" value="搜  索" id="search_btn">
     </form>
	</div>
</div>
<!-----主导航部分------->    
</div>
<!-----header结束------->
<!-----商品详情部分------->
<div class="shopdetails">
	<!-------放大镜-------->
	<div id="leftbox">
	<div id="showbox">
  <img src="images/shopdetail/img01.png" width="400" height="550" />
  <img src="images/shopdetail/img02.png" width="400" height="550" />
  <img src="images/shopdetail/img03.png" width="400" height="550" />
  <img src="images/shopdetail/img04.png" width="400" height="550" />
  <img src="images/shopdetail/img05.png" width="400" height="400" />
  <img src="images/shopdetail/img01.png" width="400" height="400" />

	</div><!--展示图片盒子-->
		<div id="showsum"></div><!--展示图片里边-->
		<p class="showpage">
 		 <a href="javascript:void(0);" id="showlast"> < </a>
  		 <a href="javascript:void(0);" id="shownext"> > </a>
		</p>
        
	</div>
    <!----中间----->

    <div class="centerbox">
    	<p class="imgname"><%=pro_title[0] %></p>
    	<p class="Aprice">价格：<samp>￥89.00</samp></p>
    	<p class="price">促销价：<samp>￥49.00</samp></p>
    	<p class="youhui">店铺优惠：<samp>购物满两件打八折</samp></p>
    	<p class="kefu">客服：</p>
        <ul>
        <li class="kuanshi">款式：</li>
        <li class="now shopimg"><a href="#" title="熊猫套装"><img src="images/shopdetail/kuanshi01.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="铁塔套装"><img src="images/shopdetail/kuanshi02.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="创意胡子"><img src="images/shopdetail/kuanshi03.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="四色小猫"><img src="images/shopdetail/kuanshi04.jpg" width="45"></a></li>
        </ul>
        <div class="clear"></div>
        <p class="buy"><a href="#" id="firstbuy">立即出价</a><a href="#">加入购物车</a></p>
   		<div class="clear"></div>
        <div class="fenx"><a href="#"><img src="images/shopdetail/tell07.png"></a></div>
        <p class="fuwu">服务承诺：</p>
        <p class="pay">支付方式：</p>
    </div>
 
	<!-----右边------->
   <div class="rightbox">
    	<p class="name">——热卖商品</p>
    	<img src="<%=img_src[0] %>" width="130" height="180">
		<p>￥58元</p>
     
    	<img src="<%=img_src[1] %>" width="130" height="180">
		<p>￥58元</p>
        
        
    	<img src="<%=img_src[3] %>" width="130" height="180">
		<p>￥58元</p>
    </div>
            
</div>
<!-----商品详情部分结束------->
<!-----商品详情评价部分-------> 
<div class="evaluate">

	<div class="classify">
    	<div class="shopim">
       		 <img src="images/shopdetail/tellbottom.png">
	  <div class="search">
			<input class="left" type="text" />
			<input class="right" type="button" style=" cursor:pointer;" value=""/>
   		    </div>
        </div>
        <div class="shopfl">
        	<p class="name">本站分类</p>
        	<ul>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">全部商品</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">木质商品</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">石制商品</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">陶制商品</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">家居厨房</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">欧式混搭</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">桌面摆件</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">书香文房</a></li>
            </ul>
        </div>
        <div class="shopsee">
        	<p class="name">看了又看</p>
        	<a href="#" class="ex01">
				<img src="<%=img_src[0] %>" width="170" height="245">
				<p><%=pro_title[0] %></p>
				<p>商城价:168元</p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[1] %>" width="170" height="245">
				<p><%=pro_title[1] %></p>
				<p>商城价:￥234元</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[2] %>" width="170" height="245">
				<p><%=pro_title[2] %></p>
				<p>商城价:￥38元</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[3] %>" width="170" height="245">
				<p><%=pro_title[3] %></p>
				<p>商城价:￥158元</p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[4] %>" width="170" height="245">
				<p><%=pro_title[4] %></p>
				<p>商城价:￥178元</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[5] %>" width="170" height="245">
				<p><%=pro_title[5] %></p>
				<p>商城价:￥68元</p>
			</a>
        </div>
    
    
    </div>
    
    
    <div class="tabbedPanels">
    	<ul class="tabs">
        	<li><a href="#panel01">商品详情</a></li>
            <li><a href="#panel02" class="active">累计评价</a></li>
        	<li><a href="#panel03">本站推荐</a></li>
        </ul>
        
     <div class="panelContainer">
       	<div class="panel" id="panel01">
        	<p class="sell">商品描述</p>
            <p>创意造型 浓浓文艺气息 闲暇时光 与好友分享</p>
            <p></p>
            <p class="sell">整体款式</p>
            <img src="images/shopdetail/evaluate101.jpg">
            <img src="images/shopdetail/evaluate102.jpg">
            <img src="images/shopdetail/evaluate103.jpg">
            <img src="images/shopdetail/evaluate104.jpg">
            <img src="images/shopdetail/evaluate105.jpg">
            <img src="images/shopdetail/evaluate106.jpg">
        	<div class="clear"></div>
        </div>
        
        <div class="panel" id="panel02">
        	<p class="sell">商品记录</p>
        	<img src="images/shopdetail/detail101.png">
            <p class="judge">出价记录(20)</p>                
              <div class="clear"></div>
        </div>
            
        <div class="panel" id="panel03">
        	<p class="sell">本站热卖商品</p>
        <div class="com">
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[0] %>"><figcaption><%=pro_title[0] %></figcaption></figure>
				<p>木质简约花瓶 亲近大自然</p>
				<div class="bottom"><samp>当前价:￥34元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[1] %>"><figcaption><%=pro_title[1] %></figcaption></figure>
				<p>墙上假花优雅系列蓝色篮子</p>
				<div class="bottom"><samp>当前价:￥543元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[2] %>"><figcaption><%=pro_title[2] %></figcaption></figure>
				<p>白色带金色边创意富贵花瓶</p>
				<div class="bottom"><samp>当前价:￥888元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[3] %>"><figcaption><%=pro_title[3] %></figcaption></figure>
				<p>白色手工编织花篮 小巧简约/p>
				<div class="bottom"><samp>当前价:￥68元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a> 
            <a href="#" class="ex01"><figure>
				<img src="<%=img_src[4] %>"><figcaption><%=pro_title[4] %></figcaption></figure>
				<p>高脚优雅系列花瓶 </p>
				<div class="bottom"><samp>当前价:￥28元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a> 
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[5] %>"><figcaption><%=pro_title[5] %></figcaption></figure>
				<p>创意暖色龙猫小灯</p>
				<div class="bottom"><samp>当前价:￥48元</samp><input type="button" style=" cursor:pointer;" value="竞拍" /></div>	
			</a>

		</div>
		
               <div class="clear"></div>
        </div>
            
            
         </div>
    
    </div>

</div>

<!-----商品详情评价部结束分-------> 

<!----bottom_页脚部分----->
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
    	 <p>使用本网站即表示接受 Veto用户协议</p>
       <p>版权所有——————————————————</p>
    
	</div>
</div>

</body>
</html>
