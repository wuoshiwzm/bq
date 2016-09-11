$("document").ready(function(){
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("auth/add");
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			authName:/^[\u4e00-\u9fa5]{2,12}$/
		}, 
		tipmsg:{
			w:{
				authName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("auth/list");
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
			alert("请选择一个权限！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("auth/"+checked.val()+"/update");
		}else{
			alert("请选择一个权限！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			authName:/^[\u4e00-\u9fa5]{2,12}$/
		}, 
		tipmsg:{
			w:{
				authName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("auth/list");
			}
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#authForm").submit();
	});
	$("#allocBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("auth/"+checked.val()+"/alloc");
		}else{
			alert("请选择一个权限！");
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("auth/list");
	});
});
