<?php 
session_start();

include "connect.php";
include "functions.php";

if(isset($_POST['url'])) {

	$url = $_POST['url'];

	if(formatCode($url)) { // Code Generated

		$code = formatCode($url);

		$_SESSION['shortened'] = "Succeed, The shortened URL is: <a href='http://localhost/urlshortener/{$code}'>http://localhost/urlshortener/{$code}</a>";

	} else { // Problem
		
		$_SESSION['shortened'] = "There was a problem. Invalid URL, perhaps ?";

	}


header("LOCATION: index.php");
}

