<?php
class BlogAction extends Action{
	public function category() {
		$this->assign('vars',!empty($_GET)?$_GET:'');
		$this->display('Index:index');
	}
	public function archive() {
		$this->assign('vars',!empty($_GET)?$_GET:'');
		$this->display('Index:index');
	}
	public function read(){
		$this->assign('vars',!empty($_GET)?$_GET:'');
		$this->display('Index:index');
	}
}
?>