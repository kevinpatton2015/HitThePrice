<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>����ҳ��</title>
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
		  "sumw":60,//�б�ÿ�����,�ð汾����ѿ����д��һ��
		  "sumh":60,//�б�ÿ���߶�,�ð汾����ѿ����д��һ��
		  "sumi":7,//�б���
		  "sums":5,//�б���ʾ����
		  "sumsel":"sel",
		  "sumborder":1,//�б�߿�û�б߿���д0���߿���css���޸�
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//��������	  
	 $.ljsGlasses.pcGlasses(showproduct);//�������ã�����ڼ������ִ��
	 
	 $(function(){

		$('.tabs a').click(function(){
			
			var $this=$(this);
			$('.panel').hide();
			$('.tabs a.active').removeClass('active');
			$this.addClass('active').blur();
			var panel=$this.attr("href");
			$(panel).show();				
			return fasle;  //���������  ��Ҫֽ���������
			})//end click
			
			
			$(".tabs li:first a").click()   //web �������������һ����ǩ��
	

		
		})//end ready
		
		$(".centerbox li").click(function(){
			$("li").removeClass("now");
			$(this).addClass("now")
			
			});
		
			
});
	
			
		
		
</script>
</head>

<body>
<!-----header����------->
<div class="header">
<div class="topnav"> 
	<ul>
	<li><a href="Default.aspx" class="active"><span class="����������">��ҳ</span></a></li>
    <li><a href="surfacebook.aspx" target="_blank">��Ʒ�Ƽ�</a></li>
    <li><a href="surfacepen.aspx" target="_blank">�ȶ����</a></li>
    <li><a href="surfacedial.aspx" target="_blank">��Ʒ����</a></li>
    <div class="dropdown">
        <a href="#" class="dropbtn"><span class="����������">��¼ע��</span></a>
        <div class="dropdown-content">
            <a href="login.aspx" class="����������">ע��</a>
            <a href="denglu.aspx" class="����������">��¼</a>
         </div>
    </div>
	<li><a href="#" target="_blank"><img src="images/index_img/top1.jpg" />�ҵĹ��ﳵ</a></li>
	<li><a href="findus.html" target="_blank">�ҵ�����</a></li>
    <li><a href="connect.html" target="_blank">��ϵ����</a></li>
	</ul>
</div>
<!-----logo_search����------->
<div class="logobg">
	<div class="center">
		<div class="logo">
			<img src="images/index_img/logo.gif" width="249" height="55">
		</div>
		 <form id="searchForm">
     <input type="text" id="searchTxt">
     <input type="submit" value="��  ��" id="search_btn">
     </form>
	</div>
</div>
<!-----����������------->    
</div>
<!-----header����------->
<!-----��Ʒ���鲿��------->
<div class="shopdetails">
	<!-------�Ŵ�-------->
	<div id="leftbox">
	<div id="showbox">
  <img src="images/shopdetail/img01.png" width="400" height="550" />
  <img src="images/shopdetail/img02.png" width="400" height="550" />
  <img src="images/shopdetail/img03.png" width="400" height="550" />
  <img src="images/shopdetail/img04.png" width="400" height="550" />
  <img src="images/shopdetail/img05.png" width="400" height="400" />
  <img src="images/shopdetail/img01.png" width="400" height="400" />

	</div><!--չʾͼƬ����-->
		<div id="showsum"></div><!--չʾͼƬ���-->
		<p class="showpage">
 		 <a href="javascript:void(0);" id="showlast"> < </a>
  		 <a href="javascript:void(0);" id="shownext"> > </a>
		</p>
        
	</div>
    <!----�м�----->

    <div class="centerbox">
    	<p class="imgname"><%=pro_title[0] %></p>
    	<p class="Aprice">�۸�<samp>��89.00</samp></p>
    	<p class="price">�����ۣ�<samp>��49.00</samp></p>
    	<p class="youhui">�����Żݣ�<samp>���������������</samp></p>
    	<p class="kefu">�ͷ���</p>
        <ul>
        <li class="kuanshi">��ʽ��</li>
        <li class="now shopimg"><a href="#" title="��è��װ"><img src="images/shopdetail/kuanshi01.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="������װ"><img src="images/shopdetail/kuanshi02.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="�������"><img src="images/shopdetail/kuanshi03.jpg" width="45"></a></li>
        <li class="shopimg">	<a href="#" title="��ɫСè"><img src="images/shopdetail/kuanshi04.jpg" width="45"></a></li>
        </ul>
        <div class="clear"></div>
        <p class="buy"><a href="#" id="firstbuy">��������</a><a href="#">���빺�ﳵ</a></p>
   		<div class="clear"></div>
        <div class="fenx"><a href="#"><img src="images/shopdetail/tell07.png"></a></div>
        <p class="fuwu">�����ŵ��</p>
        <p class="pay">֧����ʽ��</p>
    </div>
 
	<!-----�ұ�------->
   <div class="rightbox">
    	<p class="name">����������Ʒ</p>
    	<img src="<%=img_src[0] %>" width="130" height="180">
		<p>��58Ԫ</p>
     
    	<img src="<%=img_src[1] %>" width="130" height="180">
		<p>��58Ԫ</p>
        
        
    	<img src="<%=img_src[3] %>" width="130" height="180">
		<p>��58Ԫ</p>
    </div>
            
</div>
<!-----��Ʒ���鲿�ֽ���------->
<!-----��Ʒ�������۲���-------> 
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
        	<p class="name">��վ����</p>
        	<ul>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">ȫ����Ʒ</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">ľ����Ʒ</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">ʯ����Ʒ</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">������Ʒ</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">�Ҿӳ���</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">ŷʽ���</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">����ڼ�</a></li>
            <li><a href="#"><img src="images/shopdetail/tell02.png" width="10" height="10">�����ķ�</a></li>
            </ul>
        </div>
        <div class="shopsee">
        	<p class="name">�����ֿ�</p>
        	<a href="#" class="ex01">
				<img src="<%=img_src[0] %>" width="170" height="245">
				<p><%=pro_title[0] %></p>
				<p>�̳Ǽ�:168Ԫ</p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[1] %>" width="170" height="245">
				<p><%=pro_title[1] %></p>
				<p>�̳Ǽ�:��234Ԫ</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[2] %>" width="170" height="245">
				<p><%=pro_title[2] %></p>
				<p>�̳Ǽ�:��38Ԫ</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[3] %>" width="170" height="245">
				<p><%=pro_title[3] %></p>
				<p>�̳Ǽ�:��158Ԫ</p>
			</a>
			<a href="#" class="ex01">
				<img src="<%=img_src[4] %>" width="170" height="245">
				<p><%=pro_title[4] %></p>
				<p>�̳Ǽ�:��178Ԫ</p>
			</a>
            <a href="#" class="ex01">
				<img src="<%=img_src[5] %>" width="170" height="245">
				<p><%=pro_title[5] %></p>
				<p>�̳Ǽ�:��68Ԫ</p>
			</a>
        </div>
    
    
    </div>
    
    
    <div class="tabbedPanels">
    	<ul class="tabs">
        	<li><a href="#panel01">��Ʒ����</a></li>
            <li><a href="#panel02" class="active">�ۼ�����</a></li>
        	<li><a href="#panel03">��վ�Ƽ�</a></li>
        </ul>
        
     <div class="panelContainer">
       	<div class="panel" id="panel01">
        	<p class="sell">��Ʒ����</p>
            <p>�������� ŨŨ������Ϣ ��Ͼʱ�� ����ѷ���</p>
            <p></p>
            <p class="sell">�����ʽ</p>
            <img src="images/shopdetail/evaluate101.jpg">
            <img src="images/shopdetail/evaluate102.jpg">
            <img src="images/shopdetail/evaluate103.jpg">
            <img src="images/shopdetail/evaluate104.jpg">
            <img src="images/shopdetail/evaluate105.jpg">
            <img src="images/shopdetail/evaluate106.jpg">
        	<div class="clear"></div>
        </div>
        
        <div class="panel" id="panel02">
        	<p class="sell">��Ʒ��¼</p>
        	<img src="images/shopdetail/detail101.png">
            <p class="judge">���ۼ�¼(20)</p>                
              <div class="clear"></div>
        </div>
            
        <div class="panel" id="panel03">
        	<p class="sell">��վ������Ʒ</p>
        <div class="com">
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[0] %>"><figcaption><%=pro_title[0] %></figcaption></figure>
				<p>ľ�ʼ�Լ��ƿ �׽�����Ȼ</p>
				<div class="bottom"><samp>��ǰ��:��34Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[1] %>"><figcaption><%=pro_title[1] %></figcaption></figure>
				<p>ǽ�ϼٻ�����ϵ����ɫ����</p>
				<div class="bottom"><samp>��ǰ��:��543Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[2] %>"><figcaption><%=pro_title[2] %></figcaption></figure>
				<p>��ɫ����ɫ�ߴ��⸻��ƿ</p>
				<div class="bottom"><samp>��ǰ��:��888Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a>
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[3] %>"><figcaption><%=pro_title[3] %></figcaption></figure>
				<p>��ɫ�ֹ���֯���� С�ɼ�Լ/p>
				<div class="bottom"><samp>��ǰ��:��68Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a> 
            <a href="#" class="ex01"><figure>
				<img src="<%=img_src[4] %>"><figcaption><%=pro_title[4] %></figcaption></figure>
				<p>�߽�����ϵ�л�ƿ </p>
				<div class="bottom"><samp>��ǰ��:��28Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a> 
			<a href="#" class="ex01"><figure>
				<img src="<%=img_src[5] %>"><figcaption><%=pro_title[5] %></figcaption></figure>
				<p>����ůɫ��èС��</p>
				<div class="bottom"><samp>��ǰ��:��48Ԫ</samp><input type="button" style=" cursor:pointer;" value="����" /></div>	
			</a>

		</div>
		
               <div class="clear"></div>
        </div>
            
            
         </div>
    
    </div>

</div>

<!-----��Ʒ�������۲�������-------> 

<!----bottom_ҳ�Ų���----->
<div class="backf">
<div id="footer">
	 <ul>
  <li class="sy">֧����ʽ</li>
  <li><a href="#">����֧��</a></li>
  <li><a href="#">��������</a></li>
  <li><a href="#">��Ʊ˵��</a></li>
  <li><a href="#">��</a></li>
  
  </ul>
    <ul>
  <li class="sy">����ָ��</li>
  <li><a href="#">���ע��</a></li>
  <li><a href="#">�����Ա</a></li>
  <li><a href="#">��֧ͨ����</a></li>
  <li><a href="#">֧������ֵ</a></li>
  </ul>
  <ul>
  <li class="sy">�̼ҷ���</li>
  <li><a href="#">��ϵ����</a></li>
  <li><a href="#">�ͷ�����</a></li>
  <li><a href="#">��������</a></li>
  <li><a href="#">ȱ���⸶</a></li>
  </ul>
    <ul>
  <li class="sy">��������</li>
  <li><a href="#">֪ʶ��Ȩ</a></li>
  <li><a href="#">��վ����</a></li>
  <li><a href="#">�������</a></li>
  <li><a href="#">��������</a></li>
  </ul>
    <ul>
  <li class="sy">��������</li>
  <li><a href="#">��ƸӢ��</a></li>
  <li><a href="#">��������</a></li>

  </ul><div class="clear"></div>
</div>	
    <div class="foot">
    	 <p>ʹ�ñ���վ����ʾ���� Veto�û�Э��</p>
       <p>��Ȩ���С�����������������������������������</p>
    
	</div>
</div>

</body>
</html>
