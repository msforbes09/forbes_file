$(function(){
	
	function load() {
		
		//console.log('load')
		$.ajax({
			type: 'post',
			url: 'tbody.php',
			data: {}
		}).done(function(data){
			//console.log(u_name)
			//console.log('hi')
			$("#content").html(data)
		}).fail(function(data){
			alert('Failed.')
		})
	}
	
	load()
	
	$(document).on('click','#save',function(){
		
		$.ajax({
			type: 'post',
			url: 'ajax_insert.php',
			data: {
				id_num: $("#id_num").val(),
				f_name: $("#f_name").val(),
				m_name: $("#m_name").val(),
				l_name: $("#l_name").val(),
				j_pos: $("#j_pos").val(),
				e_status: $("#e_status").val(),
				team: $("#team").val(),
				section: $("#section").val(),
				picture: $("#picture").val(),
				password: $("#id_num").val()
			}
		}).done(function(data){
			//alert(data)
			console.log(data)
			alert('The record has been successfully inserted.')
			//load()
			location.href = './'
		}).fail(function(data){
			alert('fail')
		})
	})
	
})