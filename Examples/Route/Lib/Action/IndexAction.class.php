<?php
class IndexAction extends Action{
    public function index()
    {
		$this->assign('vars',!empty($_GET)?$_GET:'');
		$this->display('Index:index');
    }
}
?>