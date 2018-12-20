<?php /*a:1:{s:61:"D:\localhost\activity\application\admin\view\index\index.html";i:1545187238;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台布局demo </title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  
  <link rel="stylesheet" href="/static/layui/css/layui.css"  media="all">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">活动后台</div>
<!--     <ul class="layui-nav layui-layout-left header"> -->
<!--       <li class="layui-nav-item"><a href="javascript:;">123</a></li> -->
<!--       <li class="layui-nav-item"> -->
<!--         <a href="javascript:;">其它系统</a> -->
<!--         <dl class="layui-nav-child"> -->
<!--           <dd><a href="">邮件管理</a></dd> -->
<!--           <dd><a href="">消息管理</a></dd> -->
<!--           <dd><a href="">授权管理</a></dd> -->
<!--         </dl> -->
<!--       </li> -->
<!--     </ul> -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
          <?php echo htmlentities(app('session')->get('admin.name')); ?>
        </a>
        <dl class="layui-nav-child">
<!--           <dd><a href="">基本资料</a></dd> -->
        </dl>
      </li>
      <li class="layui-nav-item"><a href="<?php echo url('login/logout'); ?>">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll change_left_nav">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
<!--       <ul class="layui-nav layui-nav-tree"  lay-filter="test"> -->
<!--         <li class="layui-nav-item layui-nav-itemed"> -->
<!--           <a class="" href="javascript:;">预约管理</a> -->
<!--           <dl class="layui-nav-child"> -->
<!--             <dd data-name="test"> -->
<!--             	<a href="<?php echo url('Bespeak/index'); ?>" target="iframe_content">预约列表</a> -->
<!--             </dd> -->
<!--           </dl> -->
<!--         </li> -->
<!--       </ul> -->
<!--        <ul class="layui-nav layui-nav-tree"  lay-filter="test"> -->
<!--         <li class="layui-nav-item"> -->
<!--           <a class="" href="javascript:;">参选管理</a> -->
<!--           <dl class="layui-nav-child"> -->
<!--             <dd data-name="test"> -->
<!--             	<a href="<?php echo url('Item/index'); ?>" target="iframe_content">参选列表</a> -->
<!--             </dd> -->
<!--           </dl> -->
<!--         </li> -->
<!--       </ul> -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">用户管理</a>
          <dl class="layui-nav-child">
            <dd data-name="test">
            	<a href="<?php echo url('User/index'); ?>" target="iframe_content">用户列表</a>
            </dd>
          </dl>
        </li>
      </ul>
<!--        <ul class="layui-nav layui-nav-tree"  lay-filter="test"> -->
<!--         <li class="layui-nav-item"> -->
<!--           <a class="" href="javascript:;">活动管理</a> -->
<!--           <dl class="layui-nav-child"> -->
<!--             <dd data-name="test"> -->
<!--             	<a href="<?php echo url('Activity/index'); ?>" target="iframe_content">活动列表</a> -->
<!--             </dd> -->
<!--           </dl> -->
<!--         </li> -->
<!--       </ul> -->
       <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">预约活动</a>
          <dl class="layui-nav-child">
          	<dd data-name="test">
            	<a href="<?php echo url('Huodong/index'); ?>" target="iframe_content">活动列表</a>
            </dd>
            <dd data-name="test">
            	<a href="<?php echo url('Item/index'); ?>" target="iframe_content">参选列表</a>
            </dd>
<!--             <dd data-name="test"> -->
<!--             	<a href="<?php echo url('Yuyue/index'); ?>" target="iframe_content">订单列表</a> -->
<!--             </dd> -->
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
		<iframe src="<?php echo url('index/blank'); ?>" name="iframe_content" frameborder="0" id="demoAdmin"  style="width: 100%; height: 100%;"></iframe>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="/static/layui/layui.js" charset="utf-8"></script>
<script src="/static/index/js/jquery-2.1.4.min.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
});
$('.header .layui-nav-item').on('click',function(){
	console.log($(this).index());
	$('.change_left_nav ul').eq($(this).index()).show();
	$('.change_left_nav ul').eq($(this).index()).siblings().hide();
	
})
</script>

</body>
</html>
