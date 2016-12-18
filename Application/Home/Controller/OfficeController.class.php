<?php


namespace Home\Controller;

class OfficeController extends HomeController {

	protected $config = array('app_type' => 'folder', 'read' => 'my_sign,my_office,sign_office,folder,sign', 'admin' => 'mark,move_to,folder_manage', 'write' => 'sign_report,upload');

	//过滤查询字段
	function _search_filter(&$map) {
		$map['is_del'] = array('eq', '0');
		$keyword = I('keyword');
		if (!empty($keyword) && empty($map['name'])) {
			$map['name'] = array('like', "%" . $keyword . "%");
		}
	}

	public function index() {

		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);

		$unread_office = $this -> _unread_office();
		$this -> assign("unread_office", $unread_office);

		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$user_id = get_user_id();
		$dept_id = get_dept_id();

		$map['_string'] = " Office.is_public=1 or Office.dept_id=$dept_id ";

		$where_scope['user_id'] = $user_id;
		$office_list = M("OfficeScope") -> where($where_scope) -> getField('office_id', true);
		
		if (!empty($office_list)) {
			$office_list = implode(",", $office_list);
			$map['_string'] .= "or Office.id in ($office_list)";
		}

		$folder_list = D("SystemFolder") -> get_authed_folder();
		if ($folder_list) {
			$map['folder'] = array("in", $folder_list);
		} else {
			$map['_string'] = '1=2';
		}

		$model = D("OfficeView");
		if (!empty($model)) {
			$this -> _list($model, $map, 'id desc');
		}

		$this -> display();
	}

	public function my_office() {

		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);

		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$user_id = get_user_id();
		$map['user_id'] = array('eq', $user_id);

		$model = D("OfficeView");
		if (!empty($model)) {
			$this -> _list($model, $map);
		}
		$this -> display();
	}

	public function my_sign() {

		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);

		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$user_id = get_user_id();
		$where['user_id'] = array('eq', $user_id);
		$sign_list = M("OfficeSign") -> where($where) -> getField('office_id', true);

		if ($sign_list) {
			$map['id'] = array('in', $sign_list);

			$model = D("OfficeView");
			if (!empty($model)) {
				$this -> _list($model, $map);
			}
		}
		$this -> display();
	}

	public function del($id) {
		$this -> _del($id);
	}

	public function move_to($id, $val) {
		$where['id'] = array('in', $id);
		$folder = M("Office") -> distinct(true) -> where($where) -> field("folder") -> select();
		if (count($folder) == 1) {
			$auth = D("SystemFolder") -> get_folder_auth($folder[0]["folder"]);
			if ($auth['admin'] == true) {
				$field = 'folder';
				$this -> _set_field($id, $field, $val);
			}
			$return['office'] = '操作成功';
			$return['status'] = 1;
			$this -> ajaxReturn($return);
		} else {
			$return['office'] = '操作成功';
			$return['status'] = 1;
			$this -> ajaxReturn($return);
		}
	}

	function sign($id) {
		$user_id = get_user_id();

		$model = M("Office");
		$folder_id = $model -> where("id=$id") -> getField('folder');

		$Form = D('OfficeSign');
		$data['office_id'] = $id;
		$data['user_id'] = $user_id;
		$data['folder'] = $folder_id;
		$data['user_name'] = get_user_name();
		$data['dept_id'] = get_dept_id();
		$data['dept_name'] = get_dept_name();

		$data['is_sign'] = '1';
		$data['sign_time'] = time();
		$result = $Form -> add($data);
		if ($result) {
			$this -> _readed($id);
			$return['status'] = 1;
			$return['office'] = "签收成功";
			$this -> ajaxReturn($return);
		} else {
			$return['status'] = 0;
			$return['office'] = "签收失败";
			$this -> ajaxReturn($return);
		}
	}

	function sign_office($id) {

		$row_office = M('Office') -> find($id);
		$this -> assign('row_office', $row_office);

		$model = M("OfficeSign");
		$where['office_id'] = array('eq', $id);
		$where['user_id'] = array('eq', get_user_id());
		$list = $model -> where($where) -> find();
		$this -> assign('vo', $list);
		$this -> display();
	}

	function sign_report($id) {

		$row_office = M("Office") -> find($id);
		//dump($row_office);
		$this -> assign('row_office', $row_office);

		//签收人员
		$signed_user = M("OfficeSign") -> where("office_id=$id") -> getField('user_id', true);

		//发布范围
		$sign_time = M("OfficeSign") -> where("office_id=$id") -> getField('user_id,sign_time');
		$this->assign('sign_time',$sign_time);
		
		//发布范围
		$actor_user = M("OfficeScope") -> where("office_id=$id") -> getField('user_id', true);

		//未签收人员
		if (!empty($signed_user)) {
			$un_sign_user = array_diff($actor_user, $signed_user);
		} else {
			$un_sign_user = $actor_user;
		}

		$model = D("UserView");
		if (!empty($signed_user)) {
			$where_signed['id'] = array('in', $signed_user);
			$signed_user_office = $model -> where($where_signed) -> select();
			$this -> assign('signed_user_office', $signed_user_office);
		}

		if (!empty($un_sign_user)) {
			$where_un_sign['id'] = array('in', $un_sign_user);
			$un_sign_user_office = $model -> where($where_un_sign) -> select();
			$this -> assign('un_sign_user_office', $un_sign_user_office);
		}

		$this -> display();
	}

	function add() {
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);

		$fid = I('fid');
		$this -> assign('folder', $fid);
		$folder_name = D("SystemFolder") -> get_folder_name($fid);
		$this -> assign("folder_name", $folder_name);
		$this -> display();
	}

	public function edit($id) {
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);
		$this -> _edit($id);
	}

	public function read($id) {
		$user_id = get_user_id();
		$this -> assign('user_id', $user_id);

		$model = M('Office');
		$vo = $model -> find($id);
		$this -> assign('vo', $vo);
	//	echo(del_html_tag($vo['content']));

		$where_scope['office_id'] = array('eq', $id);
		$scope_user = M("OfficeScope") -> where($where_scope) -> getField('user_id', true);
		$this -> assign('is_sign', 0);
		if (!empty($scope_user)) {
			if (in_array($user_id, $scope_user)) {
				if ($vo['is_sign']) {
					$sign_office = D("OfficeSign") -> get_office($id);
					$this -> assign('sign_office', $sign_office);
					$this -> assign('is_sign', 1);
				} else {
					$this -> _readed($id);
				}
			} else {
				$this -> _readed($id);
			}
		}

		$where['id'] = array('eq', $id);
		$folder_id = $model -> where($where) -> getField('folder');
		$auth = $auth = D("SystemFolder") -> get_folder_auth($folder_id);

		$this -> assign("auth", $auth);

		$admin = M("SystemFolder") -> where("id=$folder_id") -> getField('admin');

		$this -> assign('admin', $admin);

		$this -> display();
	}

	public function folder($fid) {
		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);
		$this -> assign('auth', $this -> config['auth']);

		$this -> assign('fid', $fid);

		$unread_office = $this -> _unread_office();
		$this -> assign("unread_office", $unread_office);

		$model = D("OfficeView");
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$map['folder'] = array('eq', $fid);

		$dept_id = get_dept_id();
		$map['_string'] = " Office.is_public=1 or Office.dept_id=$dept_id ";

		$user_id = get_user_id();
		$where_scope['user_id'] = array('eq', $user_id);
		$scope_list = M("OfficeScope") -> where($where_scope) -> getField('office_id', true);
		$scope_list = implode(",", $scope_list);

		if (!empty($scope_list)) {
			$map['_string'] .= "or Office.id in ($scope_list)";
		}

		if (!empty($model)) {
			$this -> _list($model, $map, 'id desc');
		}

		$this -> assign("folder_name", D("SystemFolder") -> get_folder_name($fid));
		$this -> _assign_folder_list();
		$this -> display();
	}

	public function folder_manage() {
		$this -> _system_folder_manage("信息管理");
	}

	public function upload() {
		$this -> _upload();
	}

	function down($attach_id) {
		$this -> _down($attach_id);
	}

	private function _unread_office() {

		$map['is_del'] = array('eq', '0');
		$map['create_time'] = array("egt", time() - 3600 * 24 * 30);

		$user_id = get_user_id();
		$where_scope['user_id'] = array('eq', $user_id);
		$scope_list = M("OfficeScope") -> where($where_scope) -> getField('office_id', TRUE);

		if (!empty($scope_list)) {
			$map['id'] = array('in', $scope_list);
		} else {
			$map['_string'] = " 1=2";
		}

		$model = D("OfficeView");
		$office_list = $model -> where($map) -> getField('id', true);

		$readed_office = M("UserConfig") -> where("id=$user_id") -> getField('readed_office');
		$readed_office = array_filter(explode(',', $readed_office));

		if (!empty($office_list)) {
			$un_read_doc = array_diff($office_list, $readed_office);
		} else {
			$un_read_doc = array();
		}
		return $un_read_doc;
	}

	private function _readed($id) {
		$user_id = get_user_id();
		$folder_list = D("SystemFolder") -> get_authed_folder();

		$where_readed['folder'] = array("in", $folder_list);
		$where_readed['create_time'] = array("egt", time() - 3600 * 24 * 30);

		$readed_list = array_filter(explode(",", get_user_config("readed_office") . "," . $id));

		$where_readed['id'] = array('in', $readed_list);

		$readed_office = M("Office") -> where($where_readed) -> getField("id", true);
		$readed_office = implode(",", $readed_office);

		$where_config['id'] = array('eq', $user_id);
		if (!empty($readed_office)) {
			M("UserConfig") -> where($where_config) -> setField('readed_office', $readed_office);
		}
	}

}
