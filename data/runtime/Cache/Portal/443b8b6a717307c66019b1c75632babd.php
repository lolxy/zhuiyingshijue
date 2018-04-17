<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title><?php echo ($name); ?> <?php echo ($seo_title); ?> <?php echo ($site_name); ?></title>
	<meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
	<meta name="description" content="<?php echo ($seo_description); ?>">
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
	
</head>
<body>
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
<div class="tc-main" style="margin:10px auto;">
    <div class="row">
		<div class="span3">
			<div class="kefu-box">
				<h2>在线客服</h2>
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
			
			<div class="work-time">
				<h2>工作时间</h2>
				<p><?php echo ($worktime1); ?></p>
				<p><?php echo ($worktime2); ?></p>
			</div>
			
			<div class="contact-box">
				<h2>联系方式</h2>
				<p><?php echo ($dianhua); ?></p>
				<p><?php echo ($telephone); ?></p>
                <p><?php echo ($telephone2); ?></p>
			</div>
		</div>
		
		<div class="span9 lists">
        	<h2><span><?php echo ($name); ?></span></h2>
			<div class="list-box">
				<?php $lists = sp_sql_posts_paged("cid:$cat_id;order:listorder asc;",12); ?>
                <ul>
				<?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <?php $smeta=json_decode($vo['smeta'],true); ?>
				<a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>" target="_blank" class="imgbox"><div style="width:100%;height:106px;overflow:hidden;">
                <?php if(empty($smeta['thumb'])): ?><img src="/tpl/zysjsys/Public/images/no-pic.jpg" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                    <?php else: ?> 
                        <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
                    </div></a>
				<a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>" target="_blank" class="tit"><?php echo ($vo["post_title"]); ?></a>
               		</li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
				
			</div>
            
            <div style="clear:both;"></div>
			<div class="pagination">
				<ul>
					<?php echo ($lists['page']); ?>
				</ul>
			</div>
		</div>
		
    </div>
    
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

<!-- JavaScript -->
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


</body>
</html>