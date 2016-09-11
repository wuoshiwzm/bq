$("document").ready(function(){
	var basicId = $("input[name=basicId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("contact/add?basicId="+basicId);
	});
	$("a[id=backBtn]").click(function(){
		$.link("contact/contactList?basicId="+basicId);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			contactAddress:/^[\w\W]{2,40}$/,
			contactHead:/^[\w\W]{2,20}$/,
			contactPosition:/^[\w\W]{2,20}$/,
			contactLiaison:/^[\w\W]{2,20}$/,
			contactLiaisonPosition:/^[\w\W]{2,20}$/,
			contactFax:/^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/
		}, 
		tipmsg:{
			w:{
				contactAddress:"请输入2-40个汉字",
				contactHead:"请输入2-20个汉字",
				contactPosition:"请输入2-20个汉字",
				contactLiaison:"请输入2-20个汉字",
				contactLiaisonPosition:"请输入2-20个汉字",
				contactFax:"请输入正确的传真号"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("contact/contactList?basicId="+basicId);
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
			$.link("contact/"+$("#basicId").val()+"/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("contact/"+$("#basicId").val()+"/"+checked.val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			contactAddress:/^[\w\W]{2,40}$/,
			contactHead:/^[\w\W]{2,20}$/,
			contactPosition:/^[\w\W]{2,20}$/,
			contactLiaison:/^[\w\W]{2,20}$/,
			contactLiaisonPosition:/^[\w\W]{2,20}$/,
			contactFax:/^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/
		}, 
		tipmsg:{
			w:{
				contactAddress:"请输入2-40个汉字",
				contactHead:"请输入2-20个汉字",
				contactPosition:"请输入2-20个汉字",
				contactLiaison:"请输入2-20个汉字",
				contactLiaisonPosition:"请输入2-20个汉字",
				contactFax:"请输入正确的传真号"
			}
		},  
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("contact/contactList?basicId="+basicId);
			}
		}
	});
	
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	
	

