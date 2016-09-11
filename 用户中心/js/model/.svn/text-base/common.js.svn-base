$("document").ready(function(){
	//菜单默认#menu7
	$('.main-menu').menu('#menu7');
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
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#guildForm").submit();
	});
	
	$("#ok").click(function(){
		var radio = $(".list-content table tbody").find("input[type=radio]:checked");
		if(radio.length == 1){
			var guildId = radio.val();
			var guildName = radio.attr("guildName");
			window.returnValue = {guildId:guildId,guildName:guildName};
			window.close();
		}else{
			alert("请选择一个工会！");
		}
	});
	$("#commonOk").click(function(){
		var radio = $(".list-content table tbody").find("input[type=radio]:checked");
		if(radio.length == 1){
			var id = radio.val();
			var opName = radio.attr("opName");
			window.returnValue = {id:id,value:opName};
			window.close();
		}else{
			alert("请选择一个组织员！");
		}
	});
	$("#cancle").click(function(){
		window.close();
	});
});
