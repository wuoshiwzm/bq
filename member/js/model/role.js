$("document").ready(function(){
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("role/add");
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			roleName:/^[\u4e00-\u9fa5]{2,12}$/
		}, 
		tipmsg:{
			w:{
				roleName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("role/list");
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
			alert("请选择一个角色！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("role/"+checked.val()+"/update");
		}else{
			alert("请选择一个角色！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			roleName:/^[\u4e00-\u9fa5]{2,12}$/
		}, 
		tipmsg:{
			w:{
				roleName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("role/list");
			}
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#roleForm").submit();
	});
	$("#allocBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("role/"+checked.val()+"/alloc");
		}else{
			alert("请选择一个角色！");
		}
	});
	$("a[id=btn_alloc_sub]").click(function(){
		var checked = $("input[type=checkbox]:checked");
		var formDate = $("#allocForm").serialize();
		$.ajax({
			url: $.SmartUI.PATH+"role/alloc",
			type: "post",
			data: formDate,
			dataType: "json",
			success: function(data){
				alert(data.msg);
			}
		});
	});
	$("a[id=backBtn]").click(function(){
		$.link("role/list");
	});
});
