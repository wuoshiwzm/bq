$("document").ready(function(){
	var fwId = $("input[name=fwId]").val();
	$("#addBtn").click(function(){
		$.link("fw/ca/add?fwId="+fwId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		before:function(){
			var reasonBox = $("input[name=reason]:checked");
			if(reasonBox.length>3){
				alert("致困原因最多选择三项！");
				return false
			}
			if(reasonBox.length == 0){
				alert("请最少选择一项致困原因！");
				return false
			}
			return true;
		},
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("fw/ca/list?fwId="+fwId);
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
					url:$.SmartUI.PATH+"fw/ca/"+checked.val()+"/del",
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
			$.link("fw/"+checked.val()+"/ca/update?fwId="+fwId);
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("fw/"+checked.val()+"/ca/chakan?fwId="+fwId);
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#updateForm").validate({
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
				$.link("fw/ca/list?fwId="+fwId);
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		$.link("fw/ca/list?fwId="+fwId);
	});
	
	//是否拥有职工书屋
	$('input[name=ifAssistanceCenterRecordWomen]').click(function(){
		var checked = $(this).val();
		var ifAssistanceCenterRecordWomen = $("tr[property=ifAssistanceCenterRecordWomen]");
		if(checked == 1){
			ifAssistanceCenterRecordWomen.animate({
				opacity:'show'
			},20);
		}else{
			ifAssistanceCenterRecordWomen.animate({
				opacity:'hide'
			},20);
		}
	});
	$("#expBtn").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","listExp");
		form.attr("target","_blank");
		form.submit();
	});
	$("#gatjexpBtn").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","listtjExp");
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