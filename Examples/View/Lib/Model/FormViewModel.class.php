<?php
// Form视图模型
import('ViewModel');
class FormViewModel extends ViewModel {
    protected $viewFields = array(
        'Form'=>array('id','content','title','create_time'),
        'User'=>array('account'=>'username', '_on'=>'Form.user_id=User.id'),
    );
}
?>