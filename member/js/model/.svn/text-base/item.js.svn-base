$("document").ready(function(){
	var itemId = $('input[name=itemId]').val();
	var itemPid = $('input[name=itemPid]').val();
		window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"item/tree/"+itemId);
	
	$("#add").click(function(){
		$.link("item/"+itemId+"/add");
	});
	$("#addSub").click(function(){
		$.link("item/"+itemId+"/add?itemType=2");
	});
	
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			itemName:/^[\w\W]{2,16}$/,
			itemCode:/^[A-Z]+[_]?[A-Z]+$/
		}, 
		tipmsg:{
			w:{
				itemName:"请输入2-16个字符的项名称！",
				itemCode:"请输入正确的编号。编号只能是大写字母和下划线！如：YLZGH或YLZGH_XTGL"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//将获取baseurl的方法加入jquery静态方法中
				window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"item/tree/"+data.id);
				window.location.replace($.SmartUI.PATH+"item/"+data.id+"/info");
			}
		}
	});
	$("#delete").click(function(){
		if(confirm("确定要删除该子数据项吗？")){
			$.ajax({
				url:$.SmartUI.PATH+'item/delete/'+itemId,
				type:"post",
				dataType:"json",
				success:function(data){
					alert(data.msg);
					if(data.code == 1){
						$.link("item/"+itemPid+"/info");
					}
				}
			});
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			itemName:/^[\w\W]{2,16}$/,
			itemCode:/^[A-Z]+[_]+[A-Z]+$/
		}, 
		tipmsg:{
			w:{
				itemName:"请输入2-16个汉字",
				itemCode:"请输入正确的编号。编号只能是大写字母和下划线！如：YLZGH或YLZGH_XTGL"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//将获取baseurl的方法加入jquery静态方法中
				window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"item/tree/"+itemId);
				window.location.replace($.SmartUI.PATH+"item/"+itemId+"/info");
			}
		}
	});
	$("#back").click(function(){
		$.link("item/"+itemId+"/info/");
	});
});
