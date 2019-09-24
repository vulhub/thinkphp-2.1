<?php
if (!defined('THINK_PATH')) exit();
$config  =   require '../config.php';
$array   =  array(
    'APP_DEBUG'=>TRUE,
    'DATA_CACHE_TYPE'=>'file', // 数据缓存方式 文件
    'DATA_CACHE_TIME'=>10,   // 数据缓存有效期 10 秒
    );
return array_merge($config,$array);
?>