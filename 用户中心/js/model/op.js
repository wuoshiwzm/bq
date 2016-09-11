$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var back_guildId = $("input[name=back_guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("op/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			opName:/^[\w\W]{2,20}$/,
			opNumber:/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/,
			ershi:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				opName:"请输入2-20个字符",
				opNumber:"请输入正确的身份证号",
				ershi:"请输入2-20个字符"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/list?guildId="+guildId);
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
			$.link("op/"+checked.val()+"/"+$("#guildId").val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("op/"+checked.val()+"/"+$("#guildId").val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			opName:/^[\w\W]{2,20}$/,
			opNumber:/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/,
			ershi:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				opName:"请输入2-20个字符",
				opNumber:"请输入正确的身份证号",
				ershi:"请输入2-20个字符"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("op/list?guildId="+back_guildId);
			}
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("op/list?guildId="+guildId);
	});
});
