$(function(){
$(document).on('keypress','#test',function(){
	console.log(event.keyCode)
})
$('.modal').on('shown.bs.modal', function () {//set focus
	$('.first').focus()
})
$(document).on('click','#jinawa',function(){//show jinawa modal
	$('#modal_title').html('Jinawa Value');
	$('#form_input').html(
		'<input type="text" id="k_width" class="form-control" value="160" />' +
		'<br />' +
		'<div class="form-inline">' +
			'<input type="text" id="x_1" class="form-control first" maxlength="5" />' +
			'<input type="text" id="x_2" class="form-control" maxlength="5" />' +
		'</div>' +
		'<div class="form-inline">' +
			'<input type="text" id="y_1" class="form-control" maxlength="5" />' +
			'<input type="text" id="y_2" class="form-control" maxlength="5" />' +
		'</div>');
	$('#modal_footer').html(
	'<button type="button" id="calc_jinawa" class="btn btn-primary">Calculate</button>' +
	'<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>');
	$('#result').html('');
	$('.modal').modal('show');
})
$(document).on('click','#calc_jinawa',function(){//calculate jinawa
	var x_1 = $('#x_1').val();
	var x_2 = $('#x_2').val();
	var y_1 = $('#y_1').val();
	var y_2 = $('#y_2').val();
	var a_1 = (x_2 - x_1)* 910;
	var b_1 = (y_2 - y_1)* 910;
	var a_2 = positive(x_2 - x_1) * 910 + 210;
	var b_2 = positive(y_2 - y_1) * 910 + 210;
	var c_1 = Math.round(Math.sqrt( (a_1 * a_1) + (b_1 * b_1)));
	var c_2 = Math.round(Math.sqrt( (a_2 * a_2) + (b_2 * b_2)));
	var prompt = '';
	if ( !check_val(x_1) || !check_val(x_2) || !check_val(y_1) || !check_val(y_2) || !check_diff(x_1,x_2) || !check_diff(y_1,y_2) ){
		prompt += 'invalid input'
	}else{
		prompt += '<div class="result">' 
		prompt += 'J1 value = ' + c_1.toLocaleString()
		prompt += '<br />'
		prompt += 'J2 value = ' + c_2.toLocaleString()
		prompt += '<br />'
		prompt += '</div>'
	}
	$('#result').html(prompt)
})
$(document).on('keypress','#x_1,#x_2,#y_1,#y_2',function(){//validate number
	return isNumber(event);
})
})
function positive(num){
	if(num < 0){
		num *= -1;	
	}
	return num;
}
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode = 47 && (charCode < 46 || charCode > 57)) {
        return false;
    }
    return true;
}
function check_val(num){
	if( !num || isNaN(Math.abs(num)) ){
		return false;
	}
	return true;
}
function check_diff(num1,num2){
	if ( num1-num2 == 0 ){
		return false;
	}
	return true;
}
