<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::rule('hello/:name', 'index/hello');
//这里是活动页面和活动操作的路由组,activity是自定义的路由前缀，如果要生成activity/index的路由地址，需要用url('/activity/index',参数)第一个参数前面是加了/的
// Route::group('activity', function () {
//     Route::rule('index', 'admin/huodong/index');
//     Route::rule('lists', 'admin/huodong/lists');
// });
