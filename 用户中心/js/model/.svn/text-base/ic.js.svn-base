$("document").ready(function(){
	var fwId = $("input[name=fwId]").val();
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
				window.location.replace($.SmartUI.PATH+"fw/ic/info?fwId="+fwId);
			}
		}
	});
	
	$("#export").click(function(){
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