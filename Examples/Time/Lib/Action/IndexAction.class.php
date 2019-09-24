<?php
class IndexAction extends Action{
	// 首页
	public function index(){
		$Form	= M("Form");
		// 随便进行几个查询，来显示页面的SQL查询记录
		$Form->findAll();
		$Form->getById(1);
		$Form->field('id,title')->order('id desc')->select();
		$this->display();
	}
}
?>