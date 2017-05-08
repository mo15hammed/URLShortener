<?php 
require_once "connect.php";
require_once "functions.php";


if(isset($_GET['code'])) {

	$code = $_GET['code'];

	if($url = getURL($code)) {
		
		//echo $url;

		header("LOCATION: {$url}");
		die();
	}
}

header("LOCATION: index.php");
exit();
?>