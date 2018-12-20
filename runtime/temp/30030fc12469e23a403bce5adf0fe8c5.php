<?php /*a:1:{s:64:"D:\localhost\activity\application\admin\view\bespeak\backup.html";i:1544061091;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>备注</title>
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
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
      <textarea name="backup" placeholder="请输入内容"  class="layui-textarea"><?php echo htmlentities($info['backup']); ?></textarea>
      <input type="hidden" value="<?php echo htmlentities($info['id']); ?>" name="id"/>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
    </div>
  </div>
</form>



<script src="/static/layui/layui.js" charset="utf-8"></script>
<script src="/static/index/js/jquery-2.1.4.min.js"></script>
<script src="/static/admin/js/public.js"></script>
<script src="/static/admin/js/bespeak.js"></script>
</body>
</html>