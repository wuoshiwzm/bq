$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var workerId = $("input[name=workerId]").val();
	$("#addBtn").click(function(){
		$.link("mworker/rest/add?workerId="+workerId+"&guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/,
			"money":/^[0-9]{1,20}(\.\d*)?$|^-?d^(\.\d*)?$/,  //验证小数
		},  
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)",
				"money":"请输入正确的金额！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/"+workerId+"/rest/list?guildId="+guildId);
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
					url:$.SmartUI.PATH+"mworker/rest/"+checked.val()+"/del",
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
			alert("请选择一条信息！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/"+checked.val()+"/rest/update?guildId="+guildId+"&workerId="+workerId);
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/,
			"money":/^[0-9]{1,20}(\.\d*)?$|^-?d^(\.\d*)?$/,  //验证小数
		}, 
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)",
				"money":"请输入正确的金额！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/"+workerId+"/rest/list?guildId="+guildId);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("mworker/"+workerId+"/rest/list?guildId="+guildId);
	});
});