$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var guildId_back = $("input[name=guildId_back]").val();

	$("#daoru").click(function(){
		
		$.link("insured/daoru?guildId="+guildId);
	});
	
//导入
	var upload_setting = {
		upload_url : $.SmartUI.PATH+"upload/uploadExcel",
		flash_url : $.SmartUI.PATH+"resources/uploadfile/swfupload_fp9.swf",
		file_types : "*.xls",
		file_size_limit : "50 MB",
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