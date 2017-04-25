<?php
 echo "php deployed<br>";

 include './config/config.php';

 if (isset($config)) {
	 echo 'included $config is:<br>';
	 var_dump($config);
 }
 else {
	 echo '$config is not set';
 }
 
