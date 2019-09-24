<?php

if (!defined('THINK_PATH'))	exit();

$config = require("../config.php");

$array = array(
    'URL_ROUTER_ON' => true,
	'DEFAULT_MODULE' =>	'Blog',
    'TOKEN_ON'  => false,
    'URL_ROUTE_RULES' => array(
        array('cate','Blog/category','id'),
        array('/^Blog\/(\d+)$/is','Blog/show','id'),
        array('/^Blog\/(\d+)\/(\d+)/is','Blog/archive','year,month'),
    ),
);
return array_merge($config,$array);
?>