<?php
//print_r($_REQUEST);
try{
	$pdo = new PDO('mysql:host=hrdapps40;dbname=forbes;charset=utf8;','root','admin');
	$pdo->setattribute (PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
	
	$stmt = $pdo->prepare(
		"INSERT INTO hrd_section
			(section_name)
			VALUES
			(:section_name)"
	);
	$stmt->bindValue(':section_name', $_REQUEST["txt_section"], PDO::PARAM_STR);
	$stmt->execute();
}catch( PDOException $e ){
	echo $e->getMessage();
}
$pdo = null; 
/*
*/