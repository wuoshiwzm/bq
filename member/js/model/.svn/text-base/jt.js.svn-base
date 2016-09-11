$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var guildId_back = $("input[name=guildId_back]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("mworker/jt/add?guildId="+guildId);
	});
	$("#selfaddForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			unitName:/^[\w\W]{2,50}$/
		}, 
		tipmsg:{
			w:{
				unitName:"请输入单位名称！"
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
			unitName:/^[\w\W]{2,50}$/
		}, 
		tipmsg:{
			w:{
				unitName:"请输入单位名称！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/jt/"+guildId_back+"/list");
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
					url:$.SmartUI.PATH+"mworker/jt/"+checked.val()+"/del",
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
			$.link("mworker/jt/"+checked.val()+"/update?guildId="+guildId);
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/jt/"+checked.val()+"/chakan?guildId="+guildId);
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType : "right",
		ajaxPost : true,
		dataType : {
			unitName : /^[\w\W]{2,40}$/,
		},
		tipmsg : {
			w : {
				unitName : "请输入2-40个汉字",
			}
		},
		callback : function(curform, data) {
			alert(data.msg);
			if (data.code == 1) {
				$.link("mworker/jt/"+guildId_back+"/list");
			}
		}
	});
	
	$("#downloadBtn").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","listexp");
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
	
	$("a[id=backBtn]").click(function(){
		$.link("mworker/jt/"+guildId_back+"/list");
	});
	
	$("#selectGuild").click(function(){
		var guildInfo = window.showModalDialog($.SmartUI.PATH+"common/guildList?guildIdBack="+guildId_back+"&temp="+Math.random(),window,"dialogWidth:600px;dialogHeight:500px;center:yes;");
		if(guildInfo != undefined){
			$("#guildId").attr("value",guildInfo.guildId);
			$("#guildName").attr("value",guildInfo.guildName);
		}
	});
});
