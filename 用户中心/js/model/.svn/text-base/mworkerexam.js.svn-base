$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var workerId = $("input[name=workerId]").val();
	$("#addBtn").click(function(){
		$.link("mworker/exam/add?workerId="+workerId+"&guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/
		},  
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/"+workerId+"/exam/list?guildId="+guildId);
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
					url:$.SmartUI.PATH+"mworker/exam/"+checked.val()+"/del",
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
			alert("请选择一条转调信息！");
		}
	});
	
	//认证
	$("#rzBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(confirm("您确定要认证吗？")){
				var id = checked.attr("value");
				$.ajax({
					url:$.SmartUI.PATH+"mworker/exam/"+checked.val()+"/rz",
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
	
	
	//认证
	$("#qxrzBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(confirm("您确定要取消认证吗？")){
				var id = checked.attr("value");
				$.ajax({
					url:$.SmartUI.PATH+"mworker/exam/"+checked.val()+"/qxrz",
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
			$.link("mworker/"+checked.val()+"/exam/update?guildId="+guildId+"&workerId="+workerId);
		}else{
			alert("请选择一条转调信息！");
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/
		}, 
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/"+workerId+"/exam/list?guildId="+guildId);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("mworker/"+workerId+"/exam/list?guildId="+guildId);
	});
	
	$("a[id=backBtn1]").click(function(){
		$.link("mworker/mworkerList?guildId="+guildId_back);
	});
	
});