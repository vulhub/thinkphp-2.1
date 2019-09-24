<?php
class IndexAction extends Action{
    public function index() {
		    //自定义
			$Form=M('Form');
			import("@.ORG.Page"); //导入分页类
			$count = $Form->count();    //计算总数
			$p = new Page ( $count, 5 );
			$list=$Form->limit($p->firstRow.','.$p->listRows)->order('id desc')->findAll();
			$p->setConfig('header','篇记录');
			$p->setConfig('prev',"<");
			$p->setConfig('next','>');
			$p->setConfig('first','<<');
			$p->setConfig('last','>>');
			$page = $p->show ();
			$this->assign( "page", $page );
			$this->assign ( "list", $list );
			$this->display();
    }

	public function Mypage(){
			//普通方式实现分页
			$Form=M('Form');
			import("@.ORG.Page"); //导入分页类
			$count = $Form->count();    //计算总数
			$p = new Page ( $count, 5 );
			$list=$Form->limit($p->firstRow.','.$p->listRows)->order('id desc')->findAll();
			$page = $p->show ();
			$this->assign ( "page", $page );
			$this->assign ( "list", $list );
			$this->display();
	}
}
?>
