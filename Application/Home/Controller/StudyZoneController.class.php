<?php

namespace Home\Controller;
use Think\Controller;
class StudyZoneController extends HomeController{
	function index(){
		$article=M("studyzone_article");
		$condition="is_draft!=1";
		$list=$article->where($condition)->select();
		$this->assign('list',$list);
		$this -> display();
	}
    function upload_doc(){    
   		if (IS_POST) {
   			$article=M("studyzone_article")->field("title,discribe,author_id,is_draft,content");
   			$array['title']=$_POST['title'];
   			$array['discribe']=$_POST['discribe'];
   			$array['author_id']=get_user_id();
        $array['content']=$_POST['content'];
   			if ($_POST['article_ok']) {
   				$array['is_draft']=0;
   			}else{
   				$array['is_draft']=1;
   			}

   			$article->add($array);

   			$this->success("上传成功");
   		}
    }
    function add(){
    	$this->display();
    }

    function draft(){
    	$article=M("studyzone_article");
		$condition="is_draft!=0";
		$list=$article->where($condition)->select();
		$this->assign('list',$list);
		$this -> display();
    }
    function test(){
      $this->display();
    }

    function upload_pic(){
      $upload=new \Think\Upload();
      $upload->maxSize=3145728;
      $upload->exts=array('jpg','gif','png','jpeg');
      $upload->rootPath='./Uploads/';
      $upload->savePath='emp_pic/studyzone/';
      $upload->saveName=time().'_'.mt_rand();
      $info=$upload->uploadOne($_FILES['pic']);
      $pic_url=$upload->rootPath.$upload->savePath.$upload->saveName;
      if (!$info) {
        $this->error($upload->getError());
      }else{
        $this->assign($pic_url);
      }
    }
}