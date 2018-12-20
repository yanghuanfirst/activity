<?php /*a:1:{s:64:"D:\localhost\activity\application\admin\view\activity\index.html";i:1544066269;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="/static/layui/css/layui.css"  media="all">
  <style>
	.head-nav{
		margin-top:20px;
		margin-left:20px;
		float:left;
	}
	.head-box-s{
		width:100%;
		height:100px;
	}
	.right-f{
		margin-top:20px;
		float:right;
	}
	
</style>
</head>
<body>
<div class="head-box-s">
  <div class="head-nav">
 		<a class="layui-btn">活动列表</a>
		<a class="layui-btn layui-btn-normal" href="<?php echo url('Activity/add'); ?>">添加活动</a> 
  </div>
  <div class="right-f">
  		<form class="layui-form" action="">
  		  <div class="layui-form-item">
			    <label class="layui-form-label">活动名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="activity_name"  placeholder="请输入活动名称" autocomplete="off" class="layui-input">
			    </div>
			    <label class="layui-form-label">开始时间</label>
			    <div class="layui-input-inline">
			      <input type="text" name="start_time" id="start_time" autocomplete="off" class="layui-input">
			    </div>
			    <label class="layui-form-label">结束时间</label>
			    <div class="layui-input-inline">
			      <input type="text" name="end_time" id="end_time" autocomplete="off" class="layui-input">
			    </div>
			    <div class="layui-form-mid layui-word-aux"></div>
			    <div class="layui-input-inline">
		      <button class="layui-btn" lay-submit lay-filter="formDemos">立即提交</button>
		    </div>
			  </div>
  		</form>
  </div>
</div>
  <table class="layui-hide" id="role_list" lay-filter="test"></table>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">编辑</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="backup">备注</a>
</script>
<script>
function format(shijianchuo)
{
	var date = new Date(shijianchuo);
    var Y = date.getFullYear() + '-';
    var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    var D = date.getDate() + ' ';
    var h = date.getHours() + ':';
    var m = date.getMinutes() + ':';
    var s = date.getSeconds();
    return Y+M+D+h+m+s;
}
</script>
<script id="startTime" type="text/html">
    {{#   
       return format(parseInt(d.start_time) * 1000);
    }} 
</script>
<script id="endTime" type="text/html">
    {{#   
		return format(parseInt(d.end_time) * 1000);
    }} 
</script>
<script id="status" type="text/html">
   <input type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="启用|停用" lay-filter="statusDemo" {{ d.status == 2 ? 'checked' : '' }}>
</script>
<script src="/static/layui/layui.js" charset="utf-8"></script>
<script src="/static/index/js/jquery-2.1.4.min.js"></script>
<script src="/static/admin/js/public.js"></script>
<script src="/static/admin/js/activity.js"></script>


</body>
</html>