<?php
session_start();
?>


<!DOCTYPE html>

<html>
	<head>
		<title>URL Shortener</title>

		<meta charset="UTF-8" />

		<!-- IE Compatibility Meta -->
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">

	    <!-- First Mobile Meta -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">


	    <link rel="stylesheet" href="css\bootstrap.min.css" type="text/css">
		<link rel="stylesheet" href="css\normalize.css" type="text/css" />
		<link rel="stylesheet" href="css\style.css" type="text/css" />
		<link rel="stylesheet" href="css\media.css" type="text/css" />



		

	    <!--[if lt IE 9]>
	        <script src="js/html5shiv.min.js"></script>
	        <script src="js/respond.min.js"></script>
	    <![endif]-->

		
	</head>

	<body>

	<div class="container">
		
		<h1 class="title">Shorten Your URL.</h1>


		<form action="shorten.php" method="post">

			<input type="url" name="url" placeholder="http://www.example.com" autocomplete="off">

			<input type="submit" value="Shorten">

		</form>

		<p>
		<?php 

			if(isset($_SESSION['shortened'])) {

				echo "{$_SESSION['shortened']}";

				unset($_SESSION['shortened']);
			}

		 ?>
		 </p>

	</div>

	<script type="text/javascript" src="js\jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="js\bootstrap.min.js" ></script>


	</body>


</html>