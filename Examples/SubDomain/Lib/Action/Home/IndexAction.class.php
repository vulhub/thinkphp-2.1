<?php
class IndexAction extends Action{

	public function index(){
        header("Content-Type:text/html; charset=utf-8");
	    echo '这是在home分组下';
	}
}
?>