<?php
namespace app\admin\controller;
use think\Controller;
class Error extends Controller{
    
    function initialize()
    {
        parent::initialize();
        if(!session('admin'))
        {
            $this->redirect('login/index');
        }
        
    }
    function _empty()
    {
        return $this->error('访问的页面不存在');
    }
    
}