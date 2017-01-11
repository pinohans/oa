<?php

namespace Home\Model;
use Think\Model;

class OfficeSignModel extends CommonModel {
	// 自动验证设置
       
	function get_office($id){
		
		$where['office_id']=$id;		
		$where['user_id']=get_user_id();
		$data=$this->where($where)->select();
		return $data;		
	}
}	
?>