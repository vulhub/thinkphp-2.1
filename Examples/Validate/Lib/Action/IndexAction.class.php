<?php
class IndexAction extends Action{
	// 首页
	public function index(){
		$Form	= D("Form");
        // 按照id排序显示前5条记录
		$list	=	$Form->order('id desc')->limit(5)->findAll();
		$this->assign('list',$list);
		$this->display();
	}
	// 检查标题是否可用
	public function checkTitle() {
		if(!empty($_POST['title'])) {
			$Form	=	D("Form");
			if($Form->getByTitle($_POST['title'])) {
				$this->error('标题已经存在');
			}else{
				$this->success('标题可以使用!');
			}
		}else{
			$this->error('标题必须');
		}
	}
	// 处理表单数据
	public function insert() {
		$Form	=	D("Form");
		//验证码验证
		if($_SESSION['verify'] != md5($_POST['verify'])) {
                $this->error('验证码错误！');
        }
		if($vo = $Form->create()) {
			if($Form->add()){
				$vo['create_time']	 =	 date('Y-m-d H:i:s',$vo['create_time']);
				$vo['content']	=	nl2br($vo['content']);
				$this->ajaxReturn($vo,'表单数据保存成功！',1);
			}else{
				$this->error('数据写入错误！');
			}
		}else{
			$this->error($Form->getError());
		}
	}
	public function verify() 
    {
		$type	 =	 isset($_GET['type'])?$_GET['type']:'gif';
        import("@.ORG.Image");
        Image::buildImageVerify(4,1,$type);
    }

}
?>