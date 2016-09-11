$(document).ready(function() {
	var browser = $.browser();
	var initWin = function() {
		var winWidth = document.body.clientWidth;
		var bg_div = $('.main-content');
		var bg_height = bg_div.height();
		var width = winWidth > 960 ? winWidth : 960;
		if (bg_height > document.body.clientHeight && winWidth > 960) {
			width = width - 17;
		}
		var main_menu = $('.main-menu');
		var main_menu_height = main_menu.height();
		if (document.body.clientHeight > bg_height) {
			bg_div.css('height', document.body.clientHeight - 20)
		}else{
			bg_div.css('height', bg_height + 20)
		}
		bg_div.show();
	}
	if(!browser.ie6 && !browser.ie9){
		window.onresize = function() {
			initWin();
		}
	}else{
		$.wresize(initWin,300);
	}
	initWin();
	if(browser.ie8){
		$('.content-view').find('.container .row .col-md-6').css('width','49%');
	}
	//菜单默认#menu7
	$('.main-menu').menu('#menu100');
	//列表斑马线
	$('.list-content table tbody tr:even').addClass('list-content-td-even');
	$('.list-content table tbody tr:odd').addClass('list-content-td-odd');
	//点击行选中
	$('.list-content table tbody tr').click(function(){
		var check = $(this).find("input[type=checkbox]");
		var radio = $(this).find("input[type=radio]");
		if(check.html() != undefined){
			check.attr("checked",!check.attr("checked"));
		}
		if(radio.html() != undefined){
			radio.attr("checked",!check.attr("checked"));
		}
	});
	$('.list-content table tbody tr input[type=checkbox]').click(function(event){
		event.stopPropagation();
	});
	var btnH = 56;
	var windowH = $(window).height();
	$('#showTrigger').css("top",((windowH)/2-btnH)+"px");
	
	$('#showTrigger').click(function(event){
		var frameset = $(window.parent.document).find("frameset");
		if(frameset.attr("cols") == "0,*"){
			frameset.attr("cols","15%,75%"); 
			$('#showTrigger').css("background-image","url("+$.SmartUI.PATH+"resources/images/z.png)");
			$('#showTrigger').attr("title","隐藏");
		}else{
			frameset.attr("cols","0,*"); 
			$('#showTrigger').css("background-image","url("+$.SmartUI.PATH+"resources/images/y.png)");
			$('#showTrigger').attr("title","展开");
		}
	});
}); 