<?php
if (!defined('THINK_PATH')) exit();
$config  =   require '../config.php';
$array   =  array(
		'APP_DEBUG'=>TRUE,
        );
return array_merge($config,$array);

?>