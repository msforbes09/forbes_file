$(function(){
load()
$('.modal').on('shown.bs.modal', function () {//modal set focus
	$('#txt_team').focus()
})
$(document).on('click','#show_modal',function(){//show modal
	$('.modal-body').html(
		'<input id="txt_team" type="text" class="form-control" />')
	$('.modal').modal('show')
})
$(document).on('click','#add_team',function(){//add team
	if( !$('#txt_team').val() ){
		alert('Please input complete data.')
		return false
	}
	if(!confirm('Do you want to save?')){
		return false
	}
	$.ajax({
		type: 'post',
		url: 'team_php/new_team.php',
		data: {
			txt_team: $('#txt_team').val()
		}
	}).done(function(data){
		$('.modal').modal('hide')
	}).fail(function(data){
		console.log(data)
		alert('fail')
	})
})
})
function load(){//load data
	$.ajax({
		type: 'post',
		url: 'team_php/team_list.php',
	}).done(function(data){
		$("#team_list").html(data)
	}).fail(function(data){
		console.log(data)
		alert('fail')
	})
}