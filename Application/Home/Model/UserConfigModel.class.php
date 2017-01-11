<?php
namespace Home\Model;
use Think\Model;

class  UserConfigModel extends CommonModel {
	function get_config(){		
		$config = session('config'. get_user_id());		
		if(empty($config)){
			$id=get_user_id();
			$config= $this->find($id);
		}
		return $config;
	}

	function set_config($data){
		$id=get_user_id();
		$data['id']=$id;
		$model=M("UserConfig");
		$count=$model->where("id=$id")->count();
		if(empty($count)){			
			return $model->add($data);
		}else{
			return $model->save($data);
		}
	}
}
?>