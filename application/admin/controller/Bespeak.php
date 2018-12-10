<?php
namespace app\admin\controller;
class Bespeak extends Error{
    
    function index()
    {
        return $this->fetch();
    }
    
    //列表
    function lists()
    {
        $username = input('username/s','');
        $bespeak_time = input('bespeak_time/s','');
        $map = [];
        if($username)
        {
            $map[] = ['username','like','%'.$username.'%'];
        }
        if($bespeak_time)
        {
            $start_time = strtotime($bespeak_time." 00:00:00");
            $end_time = strtotime($bespeak_time." 23:59:59");
            $map[] = ['bespeak_time','between',[$start_time,$end_time]];
        }
        $limit = input('limit/d',1);
        $page = input('page/d',1);
        $data['data'] = db('bespeak')
                        ->alias('b')
                        ->join('activity a','a.id=b.activity_id')
                        ->where($map)
                        ->field('b.id,username,bespeak_time,telphone,sex,activity_name')
                        ->page($page)
                        ->limit($limit)
                        ->order('bespeak_time asc')
                        ->select();
        $data['count'] = db('bespeak')->where($map)->count();
        $data['code'] = 0;
        return $data;
    }    
    function del()
    {
        $id = input('id/d',0);
        $limit = input('limit/d',1);
        $cur = input('page/d',1);
        if(!$id)
        {
            return ['code'=>-1,'msg'=>'缺少参数'];
        }
        $res = db('bespeak')->delete($id);
        if($res)
        {
            $is_have = db('bespeak')->page($cur)->limit($limit)->field('id')->select();
            if(empty($is_have))
            {
                $cur = (($cur - 1))>0?($cur - 1):1;
            }
            return ['code'=>1,'msg'=>'删除成功','ccur'=>$cur];
        }else{
            return ['code'=>-1,'msg'=>'删除失败'];
        }
    }
    function backup()
    {
        $id = input('id/d',0);
        if(!$id)
        {
            return ['code'=>-1,'msg'=>'缺少参数'];
        }
        $info = db('bespeak')->field('id,backup')->where('id',$id)->find();
        return view('backup',compact('info'));
        
    }
    function doBackup()
    {
        $data = input('post.');
        $res = db('bespeak')->update($data);
        if($res)
        {
            return ['code'=>1,'msg'=>'修改成功'];
        }else{
            return ['code'=>-1,'msg'=>'修改失败'];
        }
    
    }
    
    
    
}