$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("farmer/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			farmerName:/^[\w\W]{2,20}$/,
			farmerNumber:/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/,
			ershi:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				farmerName:"请输入2-20个字符",
				farmerNumber:"请输入正确的身份证号",
				ershi:"请输入2-20个字符"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("farmer/farmerList?guildId="+guildId);
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
			$.link("farmer/"+checked.val()+"/"+$("#guildId").val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("farmer/"+checked.val()+"/"+$("#guildId").val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			financeName:/^[\w\W]{2,50}$/,
			financeInstitution:/^[\w\W]{2,40}$/
		}, 
		tipmsg:{
			w:{
				financeName:"请输入2-50个汉字",
				financeInstitution:"请输入2-40个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("farmer/farmerList?guildId="+guildId);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("farmer/farmerList?guildId="+guildId);
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
		form.attr("action", "farmerList");
		form.attr("target", "");
		form.submit();
	});
});

