<?php
namespace Home\Model;
use Think\Model;

class  UserModel extends CommonModel {
	public $_validate	=	array(
		array('emp_no','','编号已存在！',0,'unique',1),
		array('password','require','密码必须'),
		array('nickname','require','昵称必须'),
		array('repassword','require','确认密码必须'),
		);

	function get_user_list($keyword='')
	{		
		$sql= " SELECT user .* , dept.name AS dept_name, position.name AS position_name";
		$sql.= " FROM ".$this->tablePrefix."user AS user";
		$sql.= " LEFT JOIN ".$this->tablePrefix."position AS position ON user.position_id = position.id";		
		$sql.= " LEFT JOIN ".$this->tablePrefix."dept dept ON user.dept_id = dept.id";
		$sql.= " WHERE user.is_del=0 ";
		if(!empty($keyword)){
			$sql.= " and (user.emp_no like '%$keyword%' or user.name like '%$keyword%') ";
		}
		$rs = $this->db->query($sql);
		return $rs;
	}

	function get_accepter(){
		$sql = "SELECT id,name,letter FROM ".$this->tablePrefix."user WHERE is_del=0";
		$rs = $this->db->query($sql);
		return $rs;
	}
}
?>