$("document").ready(function(){
	var fwId = $("input[name=fwId]").val();
	$("#addBtn").click(function(){
		$.link("fw/qt/add?fwId="+fwId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			unit:/[\w\W]+/
		},  
		tipmsg:{
			w:{
				unit:"请输入单位名称"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("fw/qt/list?fwId="+fwId);
			}
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			unit:/[\w\W]+/
		},  
		tipmsg:{
			w:{
				unit:"请输入单位名称"
			}
		}, 
		callback:function (curform, data) {
			
			alert(data.msg);
			if(data.code == 1){
				$.link("fw/qt/list?fwId="+fwId);
				
				
			}
		}
	});
	
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("fw/qt/update?id="+checked.val());
		}else{
			alert("请选择一条信息！");
		}
	});
	
		$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("fw/qt/chakan?id="+checked.val());
		}else{
			alert("请选择一条信息！");
		}
	});
	
	$("#delBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(confirm("您确定要删除吗？")){
				var id = checked.attr("value");
				$.ajax({
					url:$.SmartUI.PATH+"fw/qt/"+checked.val()+"/del",
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
	$("a[id=backBtn]").click(function(){
		$.link("fw/qt/list?fwId="+fwId);
	});
	
	
	$("#expBtn").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","listExp");
		form.attr("target","_blank");
		form.submit();
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#mworkerForm");
		form.attr("action","list");
		form.attr("target","");
		form.submit();
	});
});