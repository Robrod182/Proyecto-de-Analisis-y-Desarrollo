<?php 
	require("data.class.php");

	$server="160.153.146.67";
	$user="roudrobin";
	$db="ventas1";
	$pass="Alfanet*01/";


	$link = mysql_connect($server, $user, $pass);
	mysql_set_charset('utf8');
		mysql_select_db($db, $link);
			if (!$link) {
    				echo 'No pudo conectarse: ' . mysql_error();
			}

			$db = new mysqli($server,$user,$pass,$db);
			if(mysqli_connect_errno()){
    				echo 'No pudo conectarse: Improved:' .mysqli_connect_error();
			}
		
 
 
?>
