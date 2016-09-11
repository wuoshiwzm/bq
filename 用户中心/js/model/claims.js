$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();

	$("a[id=backBtn]").click(function(){
		$.link("claims/list?guildId="+guildId);
	});
	
	
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			insuredName:/^[\w\W]{2,20}$/,
		}, 
		tipmsg:{
			w:{
				insuredName:"请输入2-20个字符",
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("claims/list?guildId="+guildId);
			}
		}
	});
	$("#delBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(confirm("您确定要删除吗？")){
				var id = checked.attr("value");
				$.ajax({
					url:id+"/del",
					type:"post",
					dataType:"json",
					success:function(data){
						alert(data.msg);
						if(data.code == 1){
							var form = _this.parents("form");
							form.submit();
						}
					}
				});
			}
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("claims/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	
		$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("claims/"+checked.val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			insuredName:/^[\w\W]{2,20}$/,
		}, 
		tipmsg:{
			w:{
				insuredName:"请输入2-20个字符",
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("claims/list?guildId="+guildId);
			}
		}
	});
	
	
	$("#expBtn").click(function() {
		var form = $("#userForm");
		form.attr("action", "export");
		form.attr("target", "_blank");
		form.submit();
	});
	$("#search_btn").click(function() {
	//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action", "list");
		form.attr("target", "");
		form.submit();
	});
});

