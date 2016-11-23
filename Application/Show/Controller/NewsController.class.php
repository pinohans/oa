<?php

namespace Show\Controller;
use Think\Controller;
class NewsController extends Controller {
	public function index(){
		var_dump($_GET['page']);
		$page=intval(I('get.page'))*10;
		$data=M('info as a,think_system_folder as b')->field('a.id,a.name,a.create_time,a.update_time,a.user_name,b.name as type')->where('a.is_public = 1 and a.is_del = 0 and a.folder = b.id')->order('update_time desc')->limit(sprintf("%d,10",$page))->select();
		echo json_encode($data);
	}
	public function read()
	{
		$id=$_GET['id'];
		$data=M('info as a,think_system_folder as b')->where('a.id = %d and a.folder = b.id',$id)->field('a.name,a.create_time,a.update_time,a.user_name,a.content,b.name as type')->find();
		echo json_encode($data);
	}
}