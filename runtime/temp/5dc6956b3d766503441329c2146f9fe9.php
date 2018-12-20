<?php /*a:1:{s:62:"D:\localhost\activity\application\admin\view\activity\add.html";i:1544067996;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>添加活动</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="/static/layui/css/layui.css"  media="all">
</head>
<body>
<form class="layui-form" action="">
  <div class="layui-form-item">
    <label class="layui-form-label">活动名</label>
    <div class="layui-input-block">
      <input type="text" value="" name="activity_name" required  lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">开始时间</label>
    <div class="layui-input-block">
      <input type="text" value="" name="start_time" id="start_time" required  lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">结束时间</label>
    <div class="layui-input-block">
      <input type="text" value="" name="end_time" id="end_time" required  lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">是否启用</label>
    <div class="layui-input-block">
      <input type="checkbox" name="status" lay-text="启用|停用"  lay-skin="switch">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
    	<input type="hidden"  value="<?php echo url('role/doAdd'); ?>" class="base_url"/>
    	<input type="hidden"  value="<?php echo url('role/index'); ?>" class="base_url1"/>
      <button class="layui-btn" lay-submit lay-filter="formAdd">立即提交</button>
    </div>
  </div>
</form>	
	
	
	
<script src="/static/layui/layui.js" charset="utf-8"></script>
<script src="/static/index/js/jquery-2.1.4.min.js"></script>
<script src="/static/admin/js/public.js"></script>
<script src="/static/admin/js/activity.js"></script>
</body>
</html>