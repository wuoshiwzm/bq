$("document").ready(function(){
	var basicId = $("input[name=basicId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("person/add?basicId="+basicId);
	});
	$("a[id=backBtn]").click(function(){
		$.link("person/personList?basicId="+basicId);
	});
	
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			name:/^[\w\W]{2,20}$/,
			position:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				name:"请输入2-20个汉字",
				position:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("person/personList?basicId="+basicId);
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
			$.link("person/"+$("#basicId").val()+"/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("person/"+$("#basicId").val()+"/"+checked.val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			name:/^[\w\W]{2,20}$/,
			position:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				name:"请输入2-20个汉字",
				position:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("person/personList?basicId="+basicId);
			}
		}
	});
	
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	

