$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var guildId_back = $("input[name=guildId_back]").val();
	//跳转到添加页面
	$("#addBtn").click(function(){
		$.link("mworker/add?guildId="+guildId);
	});
	$("#addForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/,
			workerNo:/[\w\W]+/,
			county:/[\w\W]+/,
			nunit:/[\w\W]+/,
			punit:/[\w\W]+/,
			maxHonour:/[\w\W]+/,
			belongName:/[\w\W]+/,
			speciality:/[\w\W]+/
		},  
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)",
				workerNo:"请输入劳模编号",
				county:"请输入所在县",
				nunit:"请输入现单位名称",
				punit:"请输入评选时单位名称",
				maxHonour:"请输入最高荣誉",
				belongName:"请选择所属工会",
				speciality:"请输入本人专长"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/mworkerList?guildId="+guildId_back);
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
			alert("请选择一个劳动模范！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/"+checked.val()+"/update?guildId="+guildId);
		}else{
			alert("请选择一个劳动模范！");
		}
	});
	$("#detailBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/"+checked.val()+"/detail?guildId="+guildId);
		}else{
			alert("请选择一个劳动模范！");
		}
	});
	$("#updateForm").validate({
		tipType:"pop", 
		ajaxPost:true, 
		dataType:{
			mworkerName:/^[\u4e00-\u9fa5]{2,8}$/,
			county:/[\w\W]+/,
			nunit:/[\w\W]+/,
			punit:/[\w\W]+/,
			maxHonour:/[\w\W]+/,
			belongName:/[\w\W]+/,
			speciality:/[\w\W]+/
		}, 
		tipmsg:{
			w:{
				mworkerName:"请输入姓名(2-8个汉字)",
				county:"请输入所在县",
				nunit:"请输入现单位名称",
				punit:"请输入评选时单位名称",
				maxHonour:"请输入最高荣誉",
				belongName:"请选择所属工会",
				speciality:"请输入本人专长"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				$.link("mworker/mworkerList?guildId="+guildId_back);
			}
		}
	});
	
	$("#exportBtn").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","export");
		form.attr("target","_blank");
		form.submit();
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#mworkerForm");
		form.attr("action","mworkerList");
		form.attr("target","");
		form.submit();
	});
	$("#allocBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/"+checked.val()+"/alloc");
		}else{
			alert("请选择一个劳动模范！");
		}
	});
	
	$("#selectBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/"+checked.val()+"/chakan?guildId="+guildId+"&&workerId="+checked.val());
		}else{
			alert("请选择一个劳动模范！");
		}
	});
	
	$("a[id=btn_alloc_sub]").click(function(){
		var checked = $("input[type=checkbox]:checked");
		var formDate = $("#allocForm").serialize();
		$.ajax({
			url: $.SmartUI.PATH+"mworker/alloc",
			type: "post",
			data: formDate,
			dataType: "json",
			success: function(data){
				alert(data.msg);
			}
		});
	});
	
	$("#pwdResetBtn").click(function(){
		var checked = $("input[type=checkbox]:checked");
		if(checked.length>0){
			if(confirm("您确定要初始化该劳动模范的密码吗？")){
				$.ajax({
					url: $.SmartUI.PATH+"mworker/"+checked.val()+"/pwdreset",
					type: "post",
					dataType: "json",
					success: function(data){
						alert(data.msg);
					}
				});
			}
		}else{
			alert("请至少选择一个劳动模范！");
		}
	});
	

	
	$("a[id=backBtn]").click(function(){
		$.link("mworker/mworkerList?guildId="+guildId_back);
	});
	
	$("#selectGuild").click(function(){
		var guildInfo = window.showModalDialog($.SmartUI.PATH+"common/guildList?guildIdBack="+guildId_back+"&haveSelf=true"+"&temp="+Math.random(),window,"dialogWidth:600px;dialogHeight:500px;center:yes;");
		if(guildInfo != undefined){
			$("#belong").attr("value",guildInfo.guildId);
			$("#belongName").attr("value",guildInfo.guildName);
		}
	});
	
	var upload_setting1 = {
		upload_url : $.SmartUI.PATH+"upload/mworker/uploadImage",
		flash_url : $.SmartUI.PATH+"resources/uploadfile/swfupload_fp9.swf",
		file_types : "*.jpg;*.png",
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
		upload_success_handler: uploadSuccess1,
		upload_complete_handler: uploadComplete
	};
	var swfu = new SWFUpload(upload_setting1);
	
});
var uploadSuccess1  = function(file,serverData){
	serverData = eval('('+serverData+')');
	$("#pic").attr("src",$.SmartUI.PATH+serverData.filePath);
	$("#picpath").val(serverData.filePath);
	console.log($.SmartUI.PATH+serverData.filePath);
}