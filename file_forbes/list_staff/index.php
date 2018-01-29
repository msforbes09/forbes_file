<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Adding Staff</title>
		<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
	
			<h1>Adding Staff</h1>
			<br>
			<b>ID number:</b> 0*****<br>
			<b>Job Desc:</b><br>
			0: Office Assistant<br>
			1: Office Staff<br>
			2: Senior Staff<br>
			3: Team Leader<br>
			4: Technical Staff<br>
			5: Section Head<br>
			6: Department Head<br>
			8: Japanese Adviser<br>
			<b>Emp. Status:</b><br>
			0: Regular<br>
			1: Contractual<br>
			
			<br><br>
			<input type="text" id="id_num"  placeholder="ID number">
			<input type="text" id="f_name" placeholder="First Name">
			<input type="text" id="m_name" placeholder="Middle Name">
			<input type="text" id="l_name" placeholder="Last Name">
			<input type="text" id="j_pos" placeholder="Job Description"><br>
			<input type="text" id="e_status" placeholder="e_status">
			<input type="text" id="team" placeholder="team">
			<input type="text" id="section" placeholder="section">
			<input type="text" id="picture" placeholder="picture">
			<button id="save">Save</button>
			<div id="content"></div>
			
			<!-- Modal -->
			<div class="modal fade">
			  <div class="modal-dialog modal-lg">
				<div class="modal-content">
				  <div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title">Modal title</h4>
				  </div>
				  <div class="modal-body"></div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				  </div>
				</div><!-- /.modal-content -->
			  </div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			
			<script src="../bootstrap/js/jquery-1.11.3.js"></script>
			<script src="../bootstrap/js/bootstrap.min.js"></script>
			<script src="index.js"></script>
			
	</body>
</html>