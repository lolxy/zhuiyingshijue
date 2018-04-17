<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
	<html>
	<head>
		<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
		<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
			<?php  function _sp_helloworld(){ echo "hello ThinkCMF!"; } function _sp_helloworld2(){ echo "hello ThinkCMF2!"; } function _sp_helloworld3(){ echo "hello ThinkCMF3!"; } ?>
	<?php $portal_index_lastnews=2; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
	<meta name="author" content="ThinkCMF">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

   	<!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
	<link rel="icon" href="/tpl/zysjsys/Public/images/favicon.ico" type="image/x-icon">
	<link rel="shortcut icon" href="/tpl/zysjsys/Public/images/favicon.ico" type="image/x-icon">
    <link href="/tpl/zysjsys/Public/simpleboot/themes/cmf/theme.min.css" rel="stylesheet">
    <link href="/tpl/zysjsys/Public/simpleboot/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/tpl/zysjsys/Public/simpleboot/font-awesome/4.2.0/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="/tpl/zysjsys/Public/simpleboot/font-awesome/4.2.0/css/font-awesome-ie7.min.css">
	<![endif]-->
	<link href="/tpl/zysjsys/Public/css/style.css" rel="stylesheet">
	<style>
		/*html{filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);-webkit-filter: grayscale(1);}*/
		#backtotop{position: fixed;bottom: 50px;right:20px;display: none;cursor: pointer;font-size: 50px;z-index: 9999;}
		#backtotop:hover{color:#333}
		#main-menu-user li.user{display: none}
	</style>
	
        <link href="/tpl/zysjsys/Public/css/slick/slick.css" rel="stylesheet">
		<link href="/tpl/zysjsys/Public/css/slippry/slippry.css" rel="stylesheet">
        <script src="/tpl/zysjsys/Public/js/slick.min.js"></script>
		<style>
			.caption-wraper{position: absolute;left:50%;bottom:2em;}
			.caption-wraper .caption{
			position: relative;left:-50%;
			background-color: rgba(0, 0, 0, 0.54);
			padding: 0.4em 1em;
			color:#fff;
			-webkit-border-radius: 1.2em;
			-moz-border-radius: 1.2em;
			-ms-border-radius: 1.2em;
			-o-border-radius: 1.2em;
			border-radius: 1.2em;
			}
			@media (max-width: 767px){
				.sy-box{margin: 12px -20px 0 -20px;}
				.caption-wraper{left:0;bottom: 0.4em;}
				.caption-wraper .caption{
				left: 0;
				padding: 0.2em 0.4em;
				font-size: 0.92em;
				-webkit-border-radius: 0;
				-moz-border-radius: 0;
				-ms-border-radius: 0;
				-o-border-radius: 0;
				border-radius: 0;}
			}
		</style>
	</head>
<body class="body-white">
<?php echo hook('body_start');?>
<div class="navbar">
   <div class="navbar-inner">
     <div class="container">
		<div class="logo-box">
			<img src="/tpl/zysjsys/Public/images/index.png"/>
		</div>
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
       <div class="nav-collapse collapse" id="main-menu">
       	<?php
 $effected_id=""; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav"; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>
       </div>
	   <script src="/statics/js/jquery.js"></script>
	   <script>
			$(document).ready(function(){
				var current_url=location.href;
				$(".nav li").each(function(){
					var url=$(this).find("a").attr('href');
					var urls='http://czx.com'+url;
					if(current_url == urls){
						$(this).addClass('active').siblings().removeClass('active');
					}
				});
			});
	   </script>
     </div>
	 <?php
 if($_SERVER['REQUEST_URI'] != '/'){ ?>
	 	 <div class="ad-box">
            <?php
 if(strpos($_SERVER['REQUEST_URI'],'page') != false && strpos($_SERVER['REQUEST_URI'],'2') != false){ $home_slides=sp_getslide("gk1"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a><?php endforeach; endif; ?>
    <?php
 }else if(strpos($_SERVER['REQUEST_URI'],'page') != false && strpos($_SERVER['REQUEST_URI'],'3') != false){ $home_slides=sp_getslide("gk4"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a><?php endforeach; endif; ?>
          <?php
 }else if(strpos($_SERVER['REQUEST_URI'],'list') != false){ $home_slides=sp_getslide("gk2"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a><?php endforeach; endif; ?>
     <?php
 }else{ $home_slides=sp_getslide("gk3"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a><?php endforeach; endif; ?>
     <?php
 } } ?>
   </div>
 </div>

<?php $home_slides=sp_getslide("slideindex"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
<ul id="homeslider" class="unstyled">
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li>
		<!-- <div class="caption-wraper">
			<div class="caption"><?php echo ($vo["slide_name"]); ?></div>
		</div> -->
		<a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a>
	</li><?php endforeach; endif; ?>
</ul>

<!--wrapper-->
<div class="wrapper">
	<div class="zpzs">
		<h2>
			<span>作品展示</span>
			<a href="<?php echo leuu('list/index',array('id'=>4));?>" target="_blank"><img src="/tpl/zysjsys/Public/images/more2.jpg"></a>
		</h2>
		<ul>
			<?php $posts=sp_sql_posts('cid:4;field:tid,post_title,smeta;limit:8;order:listorder asc'); ?>

			<?php if(is_array($posts)): foreach($posts as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
				<li><a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>" target="_blank" class="imgbox">
                    <?php if(empty($smeta['thumb'])): ?><img src="/tpl/zysjsys/Public/images/no-pic.jpg" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                    <?php else: ?> 
                        <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
                </a>
                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>" target="_blank" class="tit"><?php echo ($vo["post_title"]); ?></a>
                </li><?php endforeach; endif; ?>
		</ul>
	</div>
    
    <div style="clear:both;"></div>
	
	<div class="kfjj">
    
		<div class="kefus">
			<h2>
				<span>在线客服</span>
				<a href="<?php echo leuu('page/index',array('id'=>4));?>" target="_blank"><img src="/tpl/zysjsys/Public/images/more.jpg"></a>
			</h2>
			<div class="kefu-box">
                <div class="kefu">
					<span>客服一：</span>
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($qq1); ?>&site=qq&menu=yes">
						<img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($qq1); ?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/>
					</a>
				</div>
				<div class="kefu">
					<span>客服二：</span>
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($qq2); ?>&site=qq&menu=yes">
						<img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($qq2); ?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/>
					</a>
				</div>
            </div>
			
			<div class="contact-box">
				<p><?php echo ($dianhua); ?></p>
				<p><?php echo ($telephone); ?></p>
                 <p><?php echo ($telephone2); ?></p>
			</div>
		</div>
		
		<div class="gsjj">
			<h2>
				<span>公司简介</span>
				<a href="<?php echo leuu('page/index',array('id'=>2));?>" target="_blank"><img src="/tpl/zysjsys/Public/images/more2.jpg"></a>
			</h2>
            <div class="content-box">
            	<?php
 $ID=2; $page=sp_sql_page($ID); $smeta=json_decode($page['smeta'],true); ?>
                <?php if(empty($smeta['thumb'])): ?><img src="/tpl/zysjsys/Public/images/no-pic.jpg" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                <?php else: ?> 
                   <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
                <?php echo mb_substr($page["post_content"],0,206,'utf-8'); ?>
                ...&nbsp;&nbsp;<a href="<?php echo leuu('page/index',array('id'=>2));?>" target="_blank" style="color:#333;text-decoration:none;">[查看更多]</a>
            </div>
		</div>
	</div>
    
    <!--<div class="zpzs">
		<h2>
			<span>团队展示</span>
			<a href="<?php echo leuu('list/index',array('id'=>5));?>" target="_blank"><img src="/tpl/zysjsys/Public/images/more2.jpg"></a>
		</h2>
		<div>
			<?php $postss=sp_sql_posts('cid:5;field:tid,post_title,smeta;limit:15;order:listorder asc'); ?>
			
            <div class="slick-slider">
			<?php if(is_array($postss)): foreach($postss as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
				<div>
                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>" target="_blank">
                <?php if(empty($smeta['thumb'])): ?><img src="/tpl/zysjsys/Public/images/no-pic.jpg" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                    <?php else: ?> 
                        <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
				</a>
                </div><?php endforeach; endif; ?>
            </div>
		</div>
	</div>-->
    
</div>
<!-- Footer
      ================================================== -->
<?php echo hook('footer');?>
      <div id="footer">
       <div id="footer-menu">
       		<a href="/">首页</a>
            <a href="<?php echo leuu('page/index',array('id'=>2));?>" target="_blank">关于我们</a>
            <a href="<?php echo leuu('page/index',array('id'=>4));?>" target="_blank">联系我们</a>
       </div>
       <div class="copyright">
       	<?php echo ($site_copyright); ?>
       </div>
       <div class="copyright">
       	<?php echo ($site_icp); ?>
       </div>
       <div class="copyright">
       	后台管理 [<a href="/admin" target="_blank">管理登陆</a>]
       </div>
      </div>
      <div id="backtotop"><i class="fa fa-arrow-circle-up"></i></div>
      <?php echo ($site_tongji); ?>

<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "/",
    JS_ROOT: "statics/js/",
    TOKEN: ""
};
</script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/statics/js/jquery.js"></script>
    <script src="/statics/js/wind.js"></script>
    <script src="/tpl/zysjsys/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>
    <script src="/statics/js/frontend.js"></script>
	<script>
	$(function(){
		$('body').on('touchstart.dropdown', '.dropdown-menu', function (e) { e.stopPropagation(); });
		
		$("#main-menu li.dropdown").hover(function(){
			$(this).addClass("open");
		},function(){
			$(this).removeClass("open");
		});
		
		$.post("<?php echo U('user/index/is_login');?>",{},function(data){
			if(data.status==1){
				if(data.user.avatar){
					$("#main-menu-user .headicon").attr("src",data.user.avatar.indexOf("http")==0?data.user.avatar:"/data/upload/avatar/"+data.user.avatar);
				}
				
				$("#main-menu-user .user-nicename").text(data.user.user_nicename!=""?data.user.user_nicename:data.user.user_login);
				$("#main-menu-user li.user.login").show();
				
			}
			if(data.status==0){
				$("#main-menu-user li.user.offline").show();
			}
			
		});	
		;(function($){
			$.fn.totop=function(opt){
				var scrolling=false;
				return this.each(function(){
					var $this=$(this);
					$(window).scroll(function(){
						if(!scrolling){
							var sd=$(window).scrollTop();
							if(sd>100){
								$this.fadeIn();
							}else{
								$this.fadeOut();
							}
						}
					});
					
					$this.click(function(){
						scrolling=true;
						$('html, body').animate({
							scrollTop : 0
						}, 500,function(){
							scrolling=false;
							$this.fadeOut();
						});
					});
				});
			};
		})(jQuery); 
		
		$("#backtotop").totop();
		
		
	});
	</script>


<script src="/tpl/zysjsys/Public/js/slippry.min.js"></script>
<script src="/tpl/zysjsys/Public/js/slick.min.js"></script>
<script>
$(function() {
	var demo1 = $("#homeslider").slippry({
		transition: 'fade',
		useCSS: true,
		captions: false,
		speed: 1000,
		pause: 3000,
		auto: true,
		preload: 'visible'
	});
	
	$('.slick-slider').slick({
  	slidesToShow:5,
  	slidesToScroll: 1,
  	autoplay:true,
  	autoplaySpeed:3000,
	accessibility:false,
	arrows:false,
	speed:500,
	infinite:true,
	});
				
});
</script>
<?php echo hook('footer_end');?>
</body>
</html>