<?php

namespace Home\Model;
use Think\Model\ViewModel;

class  GovViewModel extends ViewModel {
	public $viewFields=array(
		'Gov'=>array('*'),
		'GovLog'=>array('is_read','advice','comment','user_name'=>'recieve_user_name','user_id'=>'recieve_user_id','create_time'=>'recieve_create_time','update_time'=>'recieve_update_time','is_del'=>'recieve_is_del','_on'=>'Gov.id=GovLog.gov_id')
		);
}
?>