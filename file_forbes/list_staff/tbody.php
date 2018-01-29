<?php
//print_r($_REQUEST);

try {
	//Make class intance object...
	$pdo = new PDO( 'mysql:host=hrdapps40;dbname=forbes;charset=utf8;', 'root', 'admin' );
	$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	//ASC/DESC
	$stmt = $pdo->prepare(
		"SELECT * FROM fd_staff ORDER by id desc"
		
	);
	
	$stmt->execute();
	echo $stmt->rowCount() .' item/s found.';
	//loop
	//[id,name,email,password,created_at];
	$tbody = '';
	while( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
		//echo implode(',',$row);
		//echo '<hr>';
		$tbody .= '<tr>';
		$tbody .= '<td>'.$row["id"].'</td>';
		$tbody .= '<td>'.$row["id_num"].'</td>';
		$tbody .= '<td>'.$row["f_name"].'</td>';
		$tbody .= '<td>'.$row["m_name"].'</td>';
		$tbody .= '<td>'.$row["l_name"].'</td>';
		$tbody .= '<td>'.$row["j_pos"].'</td>';
		$tbody .= '<td>'.$row["e_status"].'</td>';
		$tbody .= '</tr>';
	}
 
} catch( PDOException $e ) {
	echo $e->getMessage();
}
//Destroy object
$pdo = null;
?>
<table class="table table-condensed table-bordered table-hover table-striped table-sm">
	<thead>
		<tr class="bg-primary">
			<th>data_id</th>
			<th>Id number</th>
			<th>first name</th>
			<th>middle name</th>
			<th>last name</th>
			<th>job desc</th>
			<th>emp stat</th>
		</tr>
	</thead>
	<tbody>
		<?php echo $tbody; ?>
	</tbody>
</table>