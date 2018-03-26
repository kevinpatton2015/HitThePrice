<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/index.css" rel="stylesheet" type="text/css" />  
    <link href="css/slider.css" rel="stylesheet" type="text/css" />
    <link href="css/surfacebook.css" rel="stylesheet" type="text/css" /> 
    <title>首页</title>
</head>
<body>
    
	<div class="slide_wrapper">
		<div class="gallery_slide_wrapper">
			<a href="surfacebook.aspx" target="_blank" class="gallery_item block" data-idx="0">
				<div class="gallery_item_content">
					<div class="gallery_item_lockup_wrapper">
						<span>Macbook Pro 2016</span>
                        <!--主题文本-->
					</div>
				</div>
				<div class="gallery_image"></div>
			</a>
			<a href="surfacebook.aspx" target="_blank" class="gallery_item block" data-idx="1">
				<div class="gallery_item_content">
					<div class="gallery_item_lockup_wrapper">
						<span>SurfaceBook</span> <!--主题文本-->
					</div>
				</div>
				<div class="gallery_image"></div>	
			</a>
			<a href="surfacebook.aspx" target="_blank" class="gallery_item block" data-idx="2">
				<div class="gallery_item_content">
					<div class="gallery_item_lockup_wrapper">
						<span>SurfacePen</span> <!--主题文本-->
					</div>
				</div>
				<div class="gallery_image"></div>
			</a>
			<a href="surfacebook.aspx" target="_blank" class="gallery_item block" data-idx="3">
				<div class="gallery_item_content">
					<div class="gallery_item_lockup_wrapper">
						<span>SurfaceDial</span> <!--主题文本-->
					</div>
				</div>
				<div class="gallery_image"></div>
			</a>
		</div>
	</div>
<script src="http://cdn.bootcss.com/jquery/1.8.3/jquery.min.js"></script>
<script src="js/jquery-apple-slider.min.js"></script>
<script>
$(".slide_wrapper").AppleSlider({imgNum:4,autoplay:true});
</script>
</body>
</html>