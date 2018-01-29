<?php
//print_r($_REQUEST);
try{
	$pdo = new PDO('mysql:host=hrdapps40;dbname=forbes;charset=utf8;','root','admin');
	$pdo->setattribute (PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
	
	$stmt = $pdo->prepare(
		"SELECT * from hrd_section"
	);
	$stmt->execute();
	echo $stmt->rowCount() .' item/s found.';
	$tbody = '';
	while( $row = $stmt->fetch(PDO::FETCH_ASSOC) ){
		$tbody .= '<tr>';
		$tbody .= '<td>'.$row["id"].'</td>';
		$tbody .= '<td>'.$row["section_name"].'</td>';
		$tbody .= '</tr>';
	}
	
}catch( PDOException $e ){
	echo $e->getMessage();
}
$pdo = null; 
/*
*/
?>
<table class="table table-condensed table-bordered table-hover table-striped table-sm">
	<thead>
		<tr class="bg-primary">
			<th>Data ID</th>
			<th>Section Name</th>
		</tr>
	</thead>
	<tbody>
		<?php echo $tbody; ?>
	</tbody>
</table>