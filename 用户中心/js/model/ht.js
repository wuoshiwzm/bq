$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var back_guildId = $("input[name=back_guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("op/ht/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/ht/list?guildId="+guildId);
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
	
	
	
	$("#pyBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(confirm("您确定要重新聘用吗？")){
				var id = checked.attr("value");
				$.ajax({
					url:id+"/py",
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
			$.link("op/ht/"+checked.val()+"/"+$("#guildId").val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("op/ht/"+checked.val()+"/"+$("#guildId").val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/ht/list?guildId="+guildId);
			}
		}
	});
	$("#jpBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("op/ht/"+checked.val()+"/"+$("#guildId").val()+"/jp");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#jpForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/ht/list?guildId="+guildId);
			}
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	$("#zdBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("op/ht/"+checked.val()+"/"+$("#guildId").val()+"/zd");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#zdForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/ht/list?guildId="+guildId);
			}
		}
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("op/ht/list?guildId="+guildId);
	});
	
	
	$("#selectOp").click(function(){
		var opInfo = window.showModalDialog($.SmartUI.PATH+"common/opList?guildId="+guildId+"&temp="+Math.random(),window,"dialogWidth:600px;dialogHeight:500px;center:yes;");
		if(opInfo != undefined){
			$("#opName").attr("value",opInfo.value);
			$("#opId").attr("value",opInfo.id);
		}
	});
});
