$("document").ready(function(){
	var fwId = $("input[name=fwId]").val();
	var spType = $("input[name=spType]").val();
	$("#addBtn").click(function(){
		$.link("fw/sp/add?fwId="+fwId+"&spType="+spType);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			name:/^[\u4e00-\u9fa5]{2,8}$/,
			"money":/^[0-9]{1,20}(\.\d*)?$|^-?d^(\.\d*)?$/,  //验证小数
		},  
		tipmsg:{
			w:{
				name:"请输入姓名(2-8个汉字)",
				"money":"请输入正确的金额！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("fw/sp/list?fwId="+fwId+"&spType="+spType);
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
					url:$.SmartUI.PATH+"fw/sp/"+checked.val()+"/del?spType="+spType,
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
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("fw/"+checked.val()+"/sp/update?fwId="+fwId+"&spType="+spType);
		}else{
			alert("请选择一条信息！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("fw/"+checked.val()+"/sp/chakan?fwId="+fwId+"&spType="+spType);
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			fwName:/^[\u4e00-\u9fa5]{2,8}$/,
			"money":/^[0-9]{1,20}(\.\d*)?$|^-?d^(\.\d*)?$/,  //验证小数
		}, 
		tipmsg:{
			w:{
				fwName:"请输入姓名(2-8个汉字)",
				"money":"请输入正确的金额！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("fw/sp/list?fwId="+fwId+"&spType="+spType);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("fw/sp/list?fwId="+fwId+"&spType="+spType);
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