<?php
namespace app\admin\controller;
use app\admin\validate\Activity as ActivityV;
class Activity extends Error{
    function index()
    {
        return $this->fetch();
    }
    
    //列表
    function lists()
    {
        $username = input('activity_name/s','');
        $start_time = input('start_time/s','');
        $end_time = input('end_time/s','');
        $map = [];
        if($username)
        {
            $map[] = ['activity_name','like','%'.$username.'%'];
        }
        if($start_time)
        {
            $start_time = strtotime($start_time);
            $map[] = ['start_time','egt',$start_time];
        }
        if($end_time)
        {
            $end_time = strtotime($end_time);
            $map[] = ['end_time','elt',$end_time];
        }
        $limit = input('limit/d',1);
        $page = input('page/d',1);
        $data['data'] = db('activity')
                    ->where($map)
                    ->page($page)
                    ->limit($limit)
                   ->select();
        $data['count'] = db('activity')->where($map)->count();
        $data['code'] = 0;
        return $data;
    }
    
    function changeStatus()
    {
        $id = input('id/d',0);
        $status = input('status/d',1);
        if($status == 2)
        {
            $map[] = ['status','eq',2];
            $map[] = ['id','neq',$id];
            $have = db('activity')->where($map)->find();
            if($have)
            {
                return ['code'=>-1,'msg'=>'活动最多只能开启一个'];
            }
        }
        $data['id'] = $id;
        $data['status'] = $status;
        $res = db('activity')->update($data);
        if($res)
        {
            return ['code'=>1,'msg'=>'操作成功'];
        }else{
            return ['code'=>-1,'msg'=>'操作失败'];
        }
        
    }
    //添加
    function add()
    {
        return $this->fetch();
    }
    
    function doAdd()
    {
        $data = input('post.');
        $validate = new ActivityV();
        if (!$validate->check($data)) {
            return ['code'=>-1,'msg'=>$validate->getError()];
        }
        if($data['status'] == 2){ 
            $map[] = ['status','eq',2];
            $have = db('activity')->where($map)->value('id');
            if($have)
            {
                return ['code'=>-1,'msg'=>'活动只能开启 一个'];
            }
        }
        $data['start_time'] = strtotime($data['start_time']);
        $data['end_time'] = strtotime($data['end_time']);
        $res = db('activity')->insert($data);
        if($res)
        {
            return ['code'=>1,'msg'=>'操作成功'];
        }else{
            return ['code'=>-1,'msg'=>'操作失败'];
        }
        
        
        
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
        $res = db('activity')->delete($id);
        if($res)
        {
            $is_have = db('activity')->page($cur)->limit($limit)->field('id')->select();
            if(empty($is_have))
            {
                $cur = (($cur - 1))>0?($cur - 1):1;
            }
            return ['code'=>1,'msg'=>'删除成功','ccur'=>$cur];
        }else{
            return ['code'=>-1,'msg'=>'删除失败'];
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}