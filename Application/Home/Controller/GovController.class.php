<?php


namespace Home\Controller;

class GovController extends HomeController {
	protected $config = array('app_type' => 'public' );

	function _search_filter(&$map) {
		$map['is_del'] = array('eq', '0');
		$keyword = I('keyword');
		if (!empty($keyword)) {
			$map['name'] = array('like', "%" . $keyword . "%");
		}
	}

	function index() {
		$plugin['jquery-ui'] = true;
		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);

		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$folder = "index";
		$this -> assign("folder", $folder);
		$this -> _flow_auth_filter($folder, $map);


		$sort = $_GET['sort'];
		$by = $_GET['by'];
		$order = $this -> sortVoList($sort, $by);


		$model = D("GovView");

		if ($order === '') {
			$order = 'create_time desc';
		}
		$this -> _list($model, $map, $order);

		$this -> display();
	}

	function _flow_auth_filter($folder, &$map) {
		$emp_no = get_emp_no();
		$user_id = get_user_id();
		switch ($folder) {
			case 'index' :
				$this -> assign("folder_name", '公文列表');
				$map['recieve_user_id'] = $user_id;
				$map['recieve_is_del'] = 0;


				$map['is_tmp'] = 0;
				$map['is_del'] = 0;
				break;
			case 'out_recieve' :
				$this -> assign("folder_name", '师市公文接收列表');

				$map['recieve_user_id'] = $user_id;
				$map['recieve_is_del'] = 0;


				$map['inside'] = 0;
				$map['is_tmp'] = 0;
				$map['is_del'] = 0;
				break;
			case 'in_recieve' :
				$this -> assign("folder_name", '内部公文接收列表');
				$map['recieve_user_id'] = $user_id;
				$map['recieve_is_del'] = 0;


				$map['inside'] = 1;
				$map['is_tmp'] = 0;
				$map['is_del'] = 0;
				break;
			case 'out_send' :
				$this -> assign("folder_name", '师市公文发送列表');
				$map['user_id'] = $user_id;
				$map['inside'] = 0;
				$map['is_tmp'] = 0;
				$map['is_del'] = 0;
				break;
			case 'in_send' :
				$this -> assign("folder_name", '内部公文发送列表');
				$map['user_id'] = $user_id;
				$map['inside'] = 1;
				$map['is_tmp'] = 0;
				$map['is_del'] = 0;
				break;
			case 'out_darft' :
				$this -> assign("folder_name", '师市公文草稿箱');
				$map['user_id'] = $user_id;
				$map['inside'] = 0;
				$map['is_tmp'] = 1;
				$map['is_del'] = 0;
				break;
			case 'in_darft' :
				$this -> assign("folder_name", '内部公文草稿箱');
				$map['user_id'] = $user_id;
				$map['inside'] = 1;
				$map['is_tmp'] = 1;
				$map['is_del'] = 0;
				break;
		}
	}

	function folder($fid) {
		$plugin['date'] = true;
		$this -> assign("plugin", $plugin);

		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$folder = $fid;
		$this -> assign("folder", $folder);
		$this -> _flow_auth_filter($folder, $map);

		$model = D("Gov");
		if($fid=='in_recieve' or $fid=='out_recieve')
			$model = D("GovView");


		$sort = $_GET['sort'];
		$by = $_GET['by'];
		$order = $this -> sortVoList($sort, $by);

		$this -> _list($model, $map, $order);

		$this -> display();
	}

	function out_send() {
		$plugin['jquery-ui'] = true;

		$plugin['date'] = true;
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);

		$this -> display();
	}

	function in_send() {
		$plugin['jquery-ui'] = true;
		$plugin['date'] = true;
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);


		$model = D("User");
		$userlist = $model->get_accepter();
		$userlist = json_encode($userlist);
		$this->assign('userlist',$userlist);

		
		$this -> display();
	}


	function read($id) {
		$plugin['date'] = true;
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);

		$user_id = get_user_id();

		$model = D("Gov");
		$map['id'] = $id;		
				
		$vo = $model -> where($map) -> find();
		if (empty($vo)) {
			$this -> error("系统错误");
		}


		$this -> assign('vo', $vo);

		$model = D("GovLog");
		unset($map);
		$map['gov_id'] = $id;
		$map['user_id'] = $user_id;
		
		$log = $model -> where($map) -> find();
		$this -> assign("is_read",$log['is_read']);
		$this -> assign("confirm_id",$log['id']);
		
		$model = D("GovView");
		unset($map);
		$map['id'] = $id;

		$this -> _list($model, $map, 'recieve_update_time');

		$model = D("User");
		$userlist = $model->get_accepter();
		$userlist = json_encode($userlist);
		$this->assign('userlist',$userlist);

		$this -> display();
	}

	function edit($id) {
		$plugin['jquery-ui'] = true;
		$plugin['date'] = true;
		$plugin['uploader'] = true;
		$plugin['editor'] = true;
		$this -> assign("plugin", $plugin);

		$user_id = get_user_id();

		$model = D("Gov");
		$map['id'] = $id;		
				
		$vo = $model -> where($map) -> find();
		if (empty($vo)) {
			$this -> error("系统错误");
		}
		$this -> assign('vo', $vo);
		
		$this -> display();
	}


	function del($id){
		$this->_del($id);
	}
	


	public function approve() {

		$model = D("GovLog");
		$map['id'] = $_POST['confirm_id'];
		if ($model -> where($map) -> setField( array('is_read' => 1, 'update_time' => time(), 'comment' => $_POST['comment'])) !== false) {//保存成功

			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}

	public function reject() {

		$model = D("GovLog");
		$map['id'] = $_POST['confirm_id'];
		if ($model -> where($map) -> setField( array('is_read' => 1, 'is_del' => 1, 'update_time' => time(), 'comment' => $_POST['comment'])) !== false) {//保存成功

			$this -> success('操作成功!');
		} else {
			//失败提示
			$this -> error('操作失败!');
		}
	}


	function down($attach_id) {
		$this -> _down($attach_id);
	}

	public function upload() {
		$this -> _upload();
	}


	function batch_download($downname){
		date_default_timezone_set("Asia/Shanghai");
		
		$id = explode(",", $downname); 
		$path = "Uploads/Download/";
		$filename = "Uploads/Download/batch.zip";
		//$filename = "批量下载-".date("Y-m-d H:i:s");
		$zip = new \ZipArchive;


		$zip->open($filename, \ZipArchive::CREATE);
		$zip->addEmptyDir('batch_download');
		//$downname = $_POST['downname'];
		foreach ($id as $value) {
			$model = D("File");
			if ($value === "") {continue;}
			
			$savepath = $model -> batch_download(think_decrypt($value));
			$fileData = file_get_contents( $path . $savepath[0]['savepath'] . $savepath[0]['savename'] );
			
			if ($fileData) {
        		$zip->addFromString('batch_download/' . $savepath[0]['savepath'] . $savepath[0]['savename'] , $fileData);
    		}
		}
		$zip->close();
		
		$this ->downLocalFile($filename);

		// $file = fopen($filename, "r");
		// header('Content-Description: File Transfer');
		// Header("Content-type: application/octet-stream");
		// Header("Accept-Ranges: bytes");
		// Header("Accept-Length: " . filesize($filename));
		// Header("Content-Disposition: attachment; filename=");
		// $buffer = 1024;

		// while (!feof($file)) {
		// 	$file_data = readfile($file, $buffer);
		// 	echo $file_data;
		// }
		// fclose($file);

		// unlink($filename);
	}

	function downLocalFile($file) {
		if (is_file($file)) {
			/* 执行下载 */ //TODO: 大文件断点续传
			header("Content-Description: File Transfer");
			header('Content-type: application/octet-stream');
			header('Content-Length:' . filesize($file));
			header('Content-Disposition: attachment; filename="' .date("Y-m-d H:i:s").'.zip"');
			readfile($file);
			unlink($file);
			exit ;
		} else {
			$this -> error('文件已被删除!') ;
			return false;
		}
	}


	function sortVoList($sort,$by)
	{
		$order = "";
		if ($sort != "" && $by != "") {
			switch ($sort) {
				case 'sortByImportant':
					$order = "important ";
					break;
				case 'sortByUrge':
					$order = "urge ";
					break;
				case 'sortBySendTime':
					$order = "create_time ";
					break;
				default:
					return "";
			}

			if ($by == 'd') {
				$order = $order . "desc";
				$array = array('sort' => $sort, 'by' => $by);
				$this -> assign('sortState', $array);
				return $order;
			}elseif ($by == 'a'){
				$order = $order . "asc";
				$array = array('sort' => $sort, 'by' => $by);
				$this -> assign('sortState', $array);
				return $order;
				}else{
					return "";
				}
		}else{
			return "";
		}
	}

}
