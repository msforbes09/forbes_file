<?php
	require_once '../../homes/home/control.php';
?>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Foundation</title>
		<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body style="background-color:#d3d3d3;">
		<div class="container-fluid">
			<textarea  style= "margin-top:10px;height:800px;"class="form-control input-md" readonly><?php
				try {
					$pdo = new PDO( 'mysql:host=hrdapps40;dbname=forbes;charset=utf8;', 'root', 'admin' );
					$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
					$stmt = $pdo->prepare(
						"SELECT chat_admin FROM note_table
						WHERE
						
						id = 1"
					);
					$stmt->execute();
					$row = $stmt->fetch(PDO::FETCH_ASSOC);
					print $row["chat_admin"];
				 
				} catch( PDOException $e ) {
					echo $e->getMessage();
				}
				$pdo = null;
			?></textarea>
		</div>
		<script src="../bootstrap/js/jquery-1.11.3.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>