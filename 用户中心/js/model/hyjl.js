$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			xm:/^[\w\W]{2,20}$/,
		}, 
		tipmsg:{
			w:{
				xm:"请输入2-20个字符",
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("v/list?guildId="+guildId);
			}
		}
	});

	$("a[id=backBtn]").click(function(){
		$.link("v/list?guildId="+guildId);
	});
});
	