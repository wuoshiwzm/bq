$("document").ready(function(){
	$("#exit").click(function(){
		window.parent.location.replace($.SmartUI.PATH+"loginout");
	});
	$("#index").click(function(){
		window.parent.frames["right"].location.replace($.SmartUI.PATH+"right");
	});
	$("#pwdrest").click(function(){
		window.parent.frames["right"].location.replace($.SmartUI.PATH+"user/pwd/reset");
	});
	$("#pwdrests").click(function(){
		window.parent.frames["right"].location.replace($.SmartUI.PATH+"user/pwd/reset");
	});
});
	


