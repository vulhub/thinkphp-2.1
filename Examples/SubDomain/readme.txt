
二级域名配置,可以使项目中的多个分组呈现为二级域名的形式
例如: http://domain.cc/index.php/Admin 变为 http://admin.domain.cc/index.php

1.先配置域名
 以apache为例 
  配置虚拟主机 DocumentRoot 为项目目录,ServerName 域名
  #主域名
  <VirtualHost *:80>
    DocumentRoot  D:\xampp\htdocs\demo2 
    ServerName domain.cc
 </VirtualHost>
 #子域名
 <VirtualHost *:80>
    DocumentRoot  D:\xampp\htdocs\demo2
    ServerName admin.domain.cc
</VirtualHost>
2.配置host
  以windows为例 
  在C:\WINDOWS\system32\drivers\etc\hosts中添加 
  127.0.0.1	domain.cc
  127.0.0.1	admin.domain.cc
3.修改程序的配置文件config.php如下

    'APP_GROUP_LIST'     => 'Home,Test,Admin',
    'DEFAULT_GROUP'=>'Home',

    'APP_SUB_DOMAIN_DEPLOY'=>1, //激活子域名
    /*子域名配置
    *格式如: '子域名'=>array('分组名/[模块名]','var1=a&var2=b');
    */
    'APP_SUB_DOMAIN_RULES'=>array(  
        'admin'=>array('Admin/'),
        'test'=>array('Test/'),
    ),
  