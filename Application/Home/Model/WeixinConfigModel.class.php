<?php
namespace Home\Model;
use Think\Model;

class  WeixinConfigModel extends CommonModel {
	protected $_validate = array( array('controller', 'check_controller', '已经存在', 0, 'callback'), );

	public function check_controller() {
		$map['controller'] = I('controller');
		$result = $this -> where($map) -> find();
		if ($result) {
			return false;
		} else {
			return true;
		}
	}
}
?>