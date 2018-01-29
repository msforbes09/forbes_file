$(function(){
load()
$('.modal').on('shown.bs.modal', function () {//modal set focus
	$('#txt_section').focus()
})
$(document).on('click','#show_modal',function(){//show modal
	$('.modal-body').html(
		'<input id="txt_section" type="text" class="form-control" />')
	$('.modal').modal('show')
})
$(document).on('click','#add_section',function(){//add section
	if( !$('#txt_section').val() ){
		alert('Please input complete data.')
		return false
	}
	if(!confirm('Do you want to save?')){
		return false
	}
	$.ajax({
		type: 'post',
		url: 'section_php/new_section.php',
		data: {
			txt_section: $('#txt_section').val()
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
		url: 'section_php/section_list.php',
	}).done(function(data){
		$("#section_list").html(data)
	}).fail(function(data){
		console.log(data)
		alert('fail')
	})
}