$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("peace/add?guildId="+guildId);
	});
	$("a[id=backBtn]").click(function(){
		$.link("peace/peaceList?guildId="+guildId);
	});
	
	
	
	$("#addForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			warmPhone: /(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)|(13\d{9}$)|(15[0135-9]\d{8}$)|(18[267]\d{8}$)/
		}, 
		tipmsg:{
			w:{
				warmPhone:"请输入正确的联系方式"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("peace/peaceList?guildId="+guildId);
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
			$.link("peace/"+guildId+"/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("peace/"+guildId+"/"+checked.val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	

