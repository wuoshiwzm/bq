$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("finance/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			financeName:/^[\w\W]{2,50}$/,
			financeHeadName:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				financeName:"请输入2-50个汉字",
				financeHeadName:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("finance/guildlist?guildId="+guildId);
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
			$.link("finance/"+guildId+"/update?financeId="+checked.val());
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("finance/"+guildId+"/chakan?financeId="+checked.val());
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			financeName:/^[\w\W]{2,50}$/,
			financeInstitution:/^[\w\W]{2,40}$/
		}, 
		tipmsg:{
			w:{
				financeName:"请输入2-50个汉字",
				financeInstitution:"请输入2-40个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("finance/guildlist?guildId="+guildId);
			}
		}
	});
	
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action","guildlist");
		form.attr("target","");
		form.submit();
	});
	
	$("#search_btns").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#finanForm");
		form.attr("action","financeList");
		form.attr("target","");
		form.submit();
	});
	
	$("#exportBtn").click(function(){
		var form = $("#userForm");
		form.attr("action","financeListExport");
		form.attr("target","_blank");
		form.submit();
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("finance/guildlist?guildId="+guildId);
	});
	
	//是否拥有职工书屋
	$('input[name=financeNotFunds]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=financeNotFunds]");
		
		if(checked == 0){
			subproperty.animate({
				opacity:'show'
			},500);
		}else{
			subproperty.animate({
				opacity:'hide'
			},500);
		}
	});
	
});
