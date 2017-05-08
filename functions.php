<?php 

	function getURL($code) {		
		global $con;


		$stmt = $con->prepare("SELECT URL FROM urls WHERE Code = ? LIMIT 1");

		$stmt->execute(array($code));

		$row = $stmt->fetch();

		$count = $stmt->rowCount();

		if($count) {
			return $row['URL'];
		}

		return '';
	}
	

	function formatCode($url) {
		global $con;

		$url = trim($url);

		if(!filter_var($url, FILTER_VALIDATE_URL)){ // Check if valid URL or not
			return "";
		}

		$select = $con->prepare("SELECT Code FROM urls WHERE URL = ? LIMIT 1");

		$select->execute(array($url));

		$row = $select->fetch();

		$count = $select->rowCount();


		if($count){ // If the URL already exists return Code

			return $row['Code'];
		
		} else {

			// Insert URL to the database !!
			$insert = $con->prepare("INSERT INTO urls(URL, Created) VALUES (:xurl, now())");

			$insert->execute(array("xurl" => $url));

			$select = $con->prepare("SELECT ID FROM urls WHERE URL = ? LIMIT 1");

			$select->execute(array($url));

			$row = $select->fetch();

			// Generate Code !!
			$code = base_convert($row['ID'], 10, 36);



			// Update The Database With The New Code

			$update = $con->prepare("UPDATE urls SET Code = ? WHERE URL = ?");

			$update->execute(array($code, $url));

			return $code;



		}


	} 

	

 ?>