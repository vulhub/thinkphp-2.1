<?php
if (!defined('THINK_PATH')) exit();
$config  =   require '../config.php';
$array   =  array(
		'SHOW_RUN_TIME'=>TRUE,	 //		显示运行时间
		'SHOW_ADV_TIME'=>TRUE,	 // 显示高级运行时间
		'SHOW_DB_TIMES'=>TRUE,	 // 显示数据库操作次数
		'SHOW_USE_MEM'=>TRUE,	// 显示内存开销
        );
return array_merge($config,$array);
?>