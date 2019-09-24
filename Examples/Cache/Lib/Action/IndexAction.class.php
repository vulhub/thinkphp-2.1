<?php
class IndexAction extends Action{
	public function index(){
		if(S('list')) {
			$list	=	S('list');
		}else{
			$Form	=	M("Form");
			$list	=	$Form->select();
			S('list',$list);
		}
		$this->assign('list',$list);
		$this->display();
	}
}
?>