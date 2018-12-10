<?php
namespace app\index\controller;
use ticket\Jsapi;
class Index extends Base
{
    public function index()
    {
        //$a = getToken();
        $ticket = new Jsapi();
        //这里是获取JSSDK需要的信息
        $sign_info = $ticket->getSign();
        $data['appId'] = config('param.appid');
        $data['timestamp'] = $sign_info['param']['timestamp'];
        $data['nonceStr'] = $sign_info['param']['noncestr'];
        $data['signature'] = $sign_info['sign'];
        $this->assign('jsapi_data',$data);
        return $this->fetch();
    }

    
}
