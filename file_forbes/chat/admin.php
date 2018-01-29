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
	<body style= "background-color:#d3d3d3;">
		<div class="container-fluid">
		<?php
			//echo date("Y-m-d h-i-s")
		?>
			<textarea  style= "margin-top:10px;height:800px;" id="chat_value" class="form-control input-md" placeholder="Type your message here..."></textarea>
			<button id="send" class="btn btn-danger btn-md pull-right">Send</button>
		</div>
		<script src="../bootstrap/js/jquery-1.11.3.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>
		<script src="index.js"></script>
	</body>
</html>