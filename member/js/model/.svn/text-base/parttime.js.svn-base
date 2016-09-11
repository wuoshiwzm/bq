$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("parttime/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			parttimeName:/^[\w\W]{2,50}$/,
			parttimeWageFinance:/^[\w\W]{1,10}$/,
			parttimeWageUnit:/^[\w\W]{1,10}$/,
			parttimeRememberName:/^[\w\W]{2,20}$/,
			parttimeCashierName:/^[\w\W]{2,20}$/,
			financeHeadName:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				parttimeName:"请输入2-50个汉字",
				parttimeWageFinance:"请输入1-10个字符",
				parttimeWageUnit:"请输入1-10个字符",
				parttimeRememberName:"请输入2-10个汉字",
				parttimeCashierName:"请输入2-10个汉字",
				financeHeadName:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("parttime/"+guildId+"/guildlist");
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
					url:$.SmartUI.PATH+"/parttime/"+id+"/del",
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
			$.link("parttime/"+checked.val()+"/update?guildId="+guildId);
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			parttimeName:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				parttimeName:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("parttime/"+guildId+"/update");
			}
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#parttimeForm");
		form.attr("action","parttimeList");
		form.attr("target","");
		form.submit();
	});
	
	
	$("#search_btnss").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#parttimeForm");
		form.attr("action","parttimeList");
		form.attr("target","");
		form.submit();
	});
	
	$("#search_btns").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#guildForm");
		form.attr("action","guildlist");
		form.attr("target","");
		form.submit();
	});
	
	$("#exportBtn").click(function(){
		var form = $("#parttimeForm");
		form.attr("action","parttimeListExport");
		form.attr("target","_blank");
		form.submit();
	});
	
	$("a[id=backBtn]").click(function(){
		$.link("parttime/"+guildId+"/guildlist");
	});
});



