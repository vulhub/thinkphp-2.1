<?php
if (!defined('THINK_PATH')) exit();
$config  =   require '../config.php';
$array   =  array(
    'APP_DEBUG'=>TRUE, //		开启调试模式
  );
return array_merge($config,$array);
?>