<?php
return array(
    array('Category','Blog/category','id'),
    array('/^Blog\/(\d+)$/is','Blog/read','id'),
    array('/^Blog\/(\d+)\/(\d+)/is','Blog/archive','year,month'),
);
?>