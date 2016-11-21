<?php

namespace Show\Controller;
use Think\Controller;
class NewsController extends Controller {
	public function index(){
		$page=$_GET['page'];
		$data=M('info')->where('is_public = 1 and is_del = 0')->order('update_time')->limit('%d,%d',$page*10,$page*10+10)->field('name,content,update_time,user_name')->select();
		echo json_encode($data);
	}
}