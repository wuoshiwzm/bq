$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var workerId = $("input[name=workerId]").val();
	$("#addBtn").click(function(){
		$.link("mworker/death/add?workerId="+workerId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/death/list?workerId="+workerId);
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
					url:$.SmartUI.PATH+"mworker/death/"+checked.val()+"/del",
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
			alert("请选择一条去逝信息！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/death/"+checked.val()+"/update");
		}else{
			alert("请选择一条去逝信息！");
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/death/list?workerId="+workerId);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("mworker/death/list?workerId="+workerId);
	});
});