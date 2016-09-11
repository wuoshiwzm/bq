$("document").ready(function(){
	var funId = $('input[name=funId]').val();
	var funPid = $('input[name=funPid]').val();
	var funType = $('input[name=funType]').val();
	
	$("#add").click(function(){
		$.link("fun/add/"+funId+"/"+funType);
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			funName:/^[\u4e00-\u9fa5]{2,20}$/
		}, 
		tipmsg:{
			w:{
				funName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				var pnode = window.parent.frames['treelist'].tree.getNodeByParam('id',data.pid,null)
				window.parent.frames['treelist'].tree.reAsyncChildNodes(pnode, "refresh");
				
				window.location.replace($.SmartUI.PATH+"fun/"+data.id+"/info");
				window.parent.frames['treelist'].tree.selectNode(pnode,false);
			}
		}
	});
	$("#delete").click(function(){
		if(confirm("确定要删除该功能吗？")){
			$.ajax({
				url:$.SmartUI.PATH+'fun/delete/'+funId,
				type:"post",
				dataType:"json",
				success:function(data){
					alert(data.msg);
					if(data.code == 1){
						//将获取baseurl的方法加入jquery静态方法中
						var pnode = window.parent.frames['treelist'].tree.getNodeByParam('id',funPid,null)
						window.parent.frames['treelist'].tree.reAsyncChildNodes(pnode, "refresh");
						window.parent.frames['treelist'].tree.selectNode(pnode,false);
						$.link("fun/"+funPid+"/info/");
					}
				}
			});
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			funName:/^[\u4e00-\u9fa5]{2,20}$/
		}, 
		tipmsg:{
			w:{
				funName:"请输入2-12个汉字"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//将获取baseurl的方法加入jquery静态方法中
				var pnode = window.parent.frames['treelist'].tree.getNodeByParam('id',data.pid,null)
				window.parent.frames['treelist'].tree.reAsyncChildNodes(pnode, "refresh");
				
				window.location.replace($.SmartUI.PATH+"fun/"+data.id+"/info");
				window.parent.frames['treelist'].tree.selectNode(pnode,false);
			}
		}
	});
	
	$("#back").click(function(){	
		$.link("fun/"+funPid+"/info/");
	});
	
	var upload_setting = {
		upload_url : $.SmartUI.PATH+"upload/fun/uploadImage",
		flash_url : $.SmartUI.PATH+"resources/uploadfile/swfupload_fp9.swf",
		file_types : "*.jpg;*.gif;*.png",
		file_size_limit : "1 MB",
		file_upload_limit : 0,
		prevent_swf_caching:true,
		debug: false,
		button_placeholder_id : "uploadButton",
		button_image_url:$.SmartUI.PATH+"resources/images/upload_button.jpg",
		button_width : 62,
		button_height : 24,
		file_dialog_start_handler: fileDialogStart,
		file_dialog_complete_handler: fileDialogComplete,
		upload_success_handler: uploadSuccess,
		upload_complete_handler: uploadComplete
	};
	var swfu = new SWFUpload(upload_setting);
});
