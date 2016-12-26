<?php

namespace Home\Model;
use Think\Model;

class  GovModel extends CommonModel {
	// 自动验证设置
	protected $_validate = array(
		array('doc_no', 'require', '编号必须', 1),
		array('name', 'require', '标题必须', 1),
		array('content', 'require', '内容必须', 1),
		array('type_name', 'require', '类型必须', 1)
	);

	function _after_insert($data, $options) {
		$id = $data['id'];
		$scope_user_id = $data['scope_user_id'];
		if(!$data['is_tmp'])
			$this -> _save_scope($data, $id, $scope_user_id);
	}

	function _after_update($data, $options) {
		$id = $data['id'];
		$scope_user_id = $data['scope_user_id'];
		if(!$data['is_tmp'])
			$this -> _save_scope($data, $id, $scope_user_id);
	}

	private function _save_scope($data, $id, $user_list) {
		$user_list = array_filter(explode(",", $user_list));
		$return_user_list = array();
		foreach ($user_list as $val) {
			if (strpos($val, "dept_") !== false) {
				$dept_id = str_replace("dept_", '', $val);
				$dept_user = $this -> _get_user_list_by_dept_id($dept_id);
				if ($dept_user) {
					$return_user_list = array_merge($return_user_list, $dept_user);
				}
			} else {
				$return_user_list[] = $val;
			}
		}
		if (!empty($return_user_list)) {

			$return_user_list = implode(",", $return_user_list);
			$where = 'a.id in (' . $return_user_list . ') and b.id=\'' . $id . '\' and ((a.id,b.id) not in (select user_id,gov_id from think_gov_log)) ';
			$sql = 'insert into ' . $this -> tablePrefix . 'gov_log (user_name,gov_id,from_user,advice,is_read,user_id,create_time) ';
			$sql .= ' select a.name,b.id,\''. $data['user_id'].'\',\''. $data['advice'] . '\',0,a.id,'. time() .'  from ' . $this -> tablePrefix . 'user a, ' . $this -> tablePrefix . 'gov b where ' . $where;

			$result = $this -> execute($sql);
			if ($result === false) {
				return false;
			} else {
				return true;
			}

		} else {
			return true;
		}
	}

	private function _get_user_list_by_dept_id($id) {

		$dept = tree_to_list(list_to_tree( M("Dept") -> where('is_del=0') -> select(), $id));
		$dept = rotate($dept);

		if (empty($dept)) {
			$dept = array($id);
		} else {
			$dept = explode(",", implode(",", $dept['id']) . ",$id");
		}

		$model = M("User");
		$where['dept_id'] = array('in', $dept);
		$where['is_del'] = array('eq', 0);

		$data = $model -> where($where) -> getField('id', true);
		return $data;
	}
}
?>