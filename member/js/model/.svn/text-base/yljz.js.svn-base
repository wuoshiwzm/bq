$("document").ready(function(){
	var basicId = $("input[name=basicId]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("yljz/add?basicId="+basicId);
	});
	$("a[id=backBtn]").click(function(){
		$.link("yljz/yljzList?basicId="+basicId);
	});
	
	
	
	$("#addForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			yljzPhone: /(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)|(13\d{9}$)|(15[0135-9]\d{8}$)|(18[267]\d{8}$)/
		}, 
		tipmsg:{
			w:{
				yljzPhone:"请输入正确的联系方式"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("yljz/yljzList?basicId="+basicId);
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
			$.link("yljz/"+$("#basicId").val()+"/"+checked.val()+"/update");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("yljz/"+$("#basicId").val()+"/"+checked.val()+"/chakan");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#see").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("yljz/"+$("#basicId").val()+"/"+checked.val()+"/info");
		}else{
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			studyName:/^[\w\W]{2,40}$/,
			studyParentName:/^[\w\W]{2,20}$/,
			studyStudentName:/^[\w\W]{2,20}$/,
			studySchoolName:/^[\w\W]{2,40}$/,
			studySignName:/^[\w\W]{2,20}$/
		}, 
		tipmsg:{
			w:{
				studyName:"请输入2-40个汉字",
				studyParentName:"请输入2-20个汉字",
				studyStudentName:"请输入2-20个汉字",
				studySchoolName:"请输入2-40个汉字",
				studySignName:"请输入2-20个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("yljz/yljzList?basicId="+basicId);
				
			}
		}
	});
	
	});
	
	

