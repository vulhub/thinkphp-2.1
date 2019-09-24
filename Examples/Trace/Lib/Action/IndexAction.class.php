<?php
class IndexAction extends Action{
	// 首页
	public function index(){
		$Form	= M("Form");
		// 随便进行几个查询，来显示页面的SQL查询记录
		$Form->field('id,title')->order('id desc')->limit('0,6')->findAll();
		$vo	=	$Form->find();
		$Form->field('id,title')->order('id desc')->limit(3)->select();

		// 增加自己的调试Trace信息
		$this->trace('调试数据',dump($vo,false));
		$this->trace('Cookie信息',dump($_COOKIE,false));
		$this->display();
	}

}
?>