$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("v/add?guildId="+guildId);
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
				$.link("v/list?guildId="+guildId);
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
			$.link("v/"+checked.val()+"/"+$("#guildId").val()+"/update");
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
				$.link("v/list?guildId="+guildId);
			}
		}
	});
	$("#renzhiTimeForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("v/list?guildId="+guildId);
			}
		}
	});
	$("#tozhuxiBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/zx");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#tofuzhuxiBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/fzx");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#tojszrBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/jszr");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#tojsfzrBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/jsfzr");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#tonzwzrBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/nzwzr");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#tonzwfzrBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.link("v/"+id+"/"+$("#guildId").val()+"/nzwfzr");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#ptBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			var id = checked.attr("value");
			$.ajax({
				url:id+"/pt",
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
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#downloadBtn").click(function(){
		var form = $("#userForm");
		form.attr("action","export");
		form.attr("target","_blank");
		form.submit();
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action","list");
		form.attr("target","");
		form.submit();
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("v/list?guildId="+guildId);
	});
});
