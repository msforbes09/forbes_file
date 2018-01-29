<?php
	//print_r($_REQUEST);
	
	
	try{
	// make class instance object
	$pdo = new PDO('mysql:host=hrdapps40;dbname=forbes;charset=utf8;','root','admin');
	$pdo->setattribute (PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
	
	$stmt = $pdo->prepare(
		"INSERT INTO fd_staff
			(id_num,f_name,m_name,l_name,j_pos,e_status,team,section,picture,password)
			VALUES
			(:id_num,:f_name,:m_name,:l_name,:j_pos,:e_status,:team,:section,:picture,:password)
		"
	);
	$stmt->bindValue(':id_num', $_REQUEST["id_num"], PDO::PARAM_STR);
	$stmt->bindValue(':f_name', $_REQUEST["f_name"], PDO::PARAM_STR);
	$stmt->bindValue(':m_name', $_REQUEST["m_name"], PDO::PARAM_STR);
	$stmt->bindValue(':l_name', $_REQUEST["l_name"], PDO::PARAM_STR);
	$stmt->bindValue(':j_pos', $_REQUEST["j_pos"], PDO::PARAM_STR);
	$stmt->bindValue(':e_status', $_REQUEST["e_status"], PDO::PARAM_STR);
	$stmt->bindValue(':team', $_REQUEST["team"], PDO::PARAM_STR);
	$stmt->bindValue(':section', $_REQUEST["section"], PDO::PARAM_STR);
	$stmt->bindValue(':picture', $_REQUEST["picture"], PDO::PARAM_STR);
	$stmt->bindValue(':password', md5($_REQUEST["password"]), PDO::PARAM_STR);
	
	$stmt->execute();
	
}catch( PDOException $e ){
	echo $e->getMessage();
	
}
//destroy object
$pdo = null; 