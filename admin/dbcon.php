<?php
mysql_query('SET NAMES UTF-8');
$cn=mysql_connect('localhost','root','');
mysql_select_db('capstone',$cn)or die(mysql_error());
mysql_set_charset('utf8',$cn);

?>