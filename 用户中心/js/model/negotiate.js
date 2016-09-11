$("document").ready(function(){
	var basicId = $("input[name=basicId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("negotiate/add?basicId="+basicId);
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("negotiate/negotiateList?basicId="+basicId);
	});
	
	$("#addForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("negotiate/negotiateList?basicId="+basicId);
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
			$.link("negotiate/"+$("#basicId").val()+"/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("negotiate/"+$("#basicId").val()+"/"+checked.val()+"/chakan");
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
				$.link("negotiate/negotiateList?basicId="+basicId);
			}
		}
	});
	
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	

