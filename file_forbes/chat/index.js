$(function(){
//add new	
	$(document).on('click','#send',function(){

		if( !$("#chat_value").val() ){
				alert('Please input complete data.')
				return false
		}
		
		if(!confirm('Send message?')){
			return false
		}
		
		$.ajax({
			type: 'post',
			url: 'chat.php',
			data: {
				chat_value: $("#chat_value").val(),
			}
		}).done(function(data){
			//$(".modal").modal('hide')
			location.href = 'admin.php'
		}).fail(function(data){
			alert('fail')
		})
		/*
		*/
	})

})