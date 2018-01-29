<?php
	//print_r($_REQUEST);
	
	try{
	// make class instance object
	$pdo = new PDO('mysql:host=hrdapps40;dbname=forbes;charset=utf8;','root','admin');
	$pdo->setattribute (PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
	
	$stmt = $pdo->prepare(
		"UPDATE note_table 
			Set
			chat_admin = :chat_value"
	);
	$stmt->bindValue(':chat_value', $_REQUEST["chat_value"], PDO::PARAM_INT);
	$stmt->execute();
	
}catch( PDOException $e ){
	echo $e->getMessage();
	
}
//destroy object
$pdo = null;