$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("user/add?guildId="+guildId);
	});
	$("#pwdResetForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			oldPwd:/^[a-zA-Z0-9]{6,18}$/,
			newPwd:/^[a-zA-Z0-9]{6,18}$/
		}, 
		tipmsg:{
			w:{
				oldPwd:"请输入原始的密码！",
				newPwd:"密码必须由6-18个数字或字母组成！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
		}
	});
	
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			userName:/^[\u4e00-\u9fa5]{2,20}$/,
			loginName:/^[a-zA-Z0-9]{6,16}$/
		}, 
		tipmsg:{
			w:{
				userName:"请输入正确格式",
				loginName:"登录名格式不正确，必须由6-16个数字或者英文字母组成！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("user/userList?guildId="+guildId);
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
			alert("请选择一个用户！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("user/"+checked.val()+"/update");
		}else{
			alert("请选择一个用户！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			userName:/^[\u4e00-\u9fa5]{2,20}$/,
			loginName:/^[a-zA-Z0-9]{6,16}$/
		}, 
		tipmsg:{
			w:{
				userName:"请输入正确格式",
				loginName:"登录名格式不正确，必须由6-16个数字或者英文字母组成！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("user/userList?guildId="+guildId);
			}
		}
	});
//	$(".list-content table tbody tr").dblclick(function(){
//		var checked = $(this).find("input[type=checkbox]");
//		$.link(checked.val()+"/update");
//	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	$("#allocBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("user/"+checked.val()+"/alloc");
		}else{
			alert("请选择一个用户！");
		}
	});
	$("a[id=btn_alloc_sub]").click(function(){
		var checked = $("input[type=checkbox]:checked");
		var formDate = $("#allocForm").serialize();
		$.ajax({
			url: $.SmartUI.PATH+"user/alloc",
			type: "post",
			data: formDate,
			dataType: "json",
			success: function(data){
				alert(data.msg);
			}
		});
	});
	
	$("#pwdResetBtn").click(function(){
		var checked = $("input[type=checkbox]:checked");
		if(checked.length>0){
			if(confirm("您确定要初始化该用户的密码吗？")){
				$.ajax({
					url: $.SmartUI.PATH+"user/"+checked.val()+"/pwdreset",
					type: "post",
					dataType: "json",
					success: function(data){
						alert(data.msg);
					}
				});
			}
		}else{
			alert("请至少选择一个用户！");
		}
	});
	$("#leader").click(function(){
		var checked = $("input[type=checkbox]:checked");
		if(checked.length>0){
			if(confirm("您确定要设置该用户为主席吗？")){
				$.ajax({
					url: $.SmartUI.PATH+"user/"+checked.val()+"/"+guildId+"/guildLeader",
					type: "post",
					dataType: "json",
					success: function(data){
						alert(data.msg);
					}
				});
			}
		}else{
			alert("请至少选择一个用户！");
		}
	});
	$("#leader2").click(function(){
		var checked = $("input[type=checkbox]:checked");
		if(checked.length>0){
			if(confirm("您确定要设置该用户为副主席吗？")){
				$.ajax({
					url: $.SmartUI.PATH+"user/"+checked.val()+"/"+guildId+"/guildLeader2",
					type: "post",
					dataType: "json",
					success: function(data){
						alert(data.msg);
					}
				});
			}
		}else{
			alert("请至少选择一个用户！");
		}
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("user/userList?guildId="+guildId);
	});
	
	$("#index").click(function(){
		window.location.replace($.SmartUI.PATH+"right");
	});
});
