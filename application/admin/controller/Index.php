<?php
namespace app\admin\controller;
class Index extends Error{
    
    function index(){
        
        return $this->fetch();
    }
    function blank()
    {
        
        return '欢迎'.session('admin.name').'进入后台';
    }
    
}