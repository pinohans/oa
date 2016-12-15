<?php

namespace Home\Controller;
use Think\Controller;

class EmptyController extends Controller {
	protected $config = array('app_type' => 'public');
	//过滤查询字段
	public function index() {
		$this->display();

	}
}
?>