<?php

namespace Home\Model;
use Think\Model\ViewModel;

class  OfficeViewModel extends ViewModel {
	public $viewFields=array(
		'Office'=>array('*'),
		'SystemFolder'=>array('name'=>'folder_name','_on'=>'Office.folder=SystemFolder.id')
		);
}
?>