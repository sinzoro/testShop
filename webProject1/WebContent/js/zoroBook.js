


$(document).ready(function(){

	/*$('.outer-menu-item').hover(function (){
		$(this).find('.inner-menu').show();
	}, function(){
		$(this).find('.inner-menu').hide();
	});*/
	
	// login
	$("#login-line").keypress(function(e){
		if(e.keyCode === 13){
			/*e.preventDefault();*/
			login_ck();
		}
	});

	//login
	
});

// login
function login_ck(){
	$('#sub_login').attr('action','./member/sub_login_ck.jsp').submit();
}
function join_move(){
	$('#sub_login').attr('action','./index.jsp?main_action=sub_member_join').submit();
}
function id_search(){
	$('#id-search').toggle(1000);
}
function pass_search(){
	$('#pw-search').toggle(1000);
}

//login





// sub_join

//sub_join


