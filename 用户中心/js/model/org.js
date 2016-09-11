$("document").ready(function(){
	var guildId = $('input[name=guildId]').val();
	var guildPid = $('input[name=guildPid]').val();
	var guildType = $('input[name=guildType]').val();
	window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"org/tree/"+guildId);
	
	$("#add").click(function(){
		$.link("org/"+guildId+"/add?guildType=1");
	});
	$("#add_quxian").click(function(){
		$.link("org/"+guildId+"/add?guildType=5");
	});
	$("#add_org").click(function(){
		$.link("org/"+guildId+"/add?guildType=6");
	});
	
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			guildName:/^[\u4e00-\u9fa5]{2,16}$/,
			guildCode:/^YL[0-9]{8}$/,
			givenOrg:/^[\u4e00-\u9fa5]{2,16}$/
		}, 
		tipmsg:{
			w:{
				guildName:"请输入2-16个汉字",
				guildCode:"请输入前缀为YL的8位数字编号，如：YL88888888",
				givenOrg:"请输入颁发单位！颁发单位由2-16个汉字组成！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//将获取baseurl的方法加入jquery静态方法中
				window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"org/tree/"+data.id);
				window.location.replace($.SmartUI.PATH+"org/"+data.id+"/info");
			}
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			guildName:/^[\u4e00-\u9fa5]{2,16}$/,
			guildCode:/^YL[0-9]{8}$/,
			givenOrg:/^[\u4e00-\u9fa5]{2,16}$/
		}, 
		tipmsg:{
			w:{
				guildName:"请输入2-16个汉字",
				guildCode:"请输入前缀为YL的8位数字编号，如：YL88888888",
				givenOrg:"请输入颁发单位！颁发单位由2-16个汉字组成！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//将获取baseurl的方法加入jquery静态方法中
				window.parent.frames['treelist'].location.replace($.SmartUI.PATH+"org/tree/"+guildId);
				window.location.replace($.SmartUI.PATH+"org/"+guildId+"/info");
			}
		}
	});
	$("#delete").click(function(){
		if(confirm("确定要删除该功能吗？")){
			if(confirm("提示：删除工会，同时会删除该工会的所有用户、角色和权限等信息，且无法恢复，您确定要删除吗？")){
				$.ajax({
					url:$.SmartUI.PATH+'org/delete/'+guildId,
					type:"post",
					dataType:"json",
					success:function(data){
						alert(data.msg);
						if(data.code == 1){
							$.link("org/"+guildPid+"/info");
						}
					}
				});
			}
		}
	});
	//是否成立工会委员会
	$('input[name=ifBuidGuildCommittee]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=ifBuidGuildCommittee]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否成立经费审查委员会
	$('input[name=ifBuidReviewCommittee]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=ifBuidReviewCommittee]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否成立女职工委员会
	$('input[name=ifBuidFemaleCommittee]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=ifBuidFemaleCommittee]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否拥有职工之家
	$('input[name=guildHome]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=guildHome]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否拥有职工小家
	$('input[name=guildSh]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=guildSh]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否拥有职工书屋
	$('input[name=guildBh]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=guildBh]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	
	//年度是否召开职代会
	$('input[name=guildWorkersCongress]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=guildWorkersCongress]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//是否召开全委会
	$('input[name=committee]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=committee]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	
	//厂务公开星级评定
	$('input[name=guildOpenDemocracy]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=guildOpenDemocracy]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	
	//是否拥有职工书屋
	$('input[name=ifBuidReviewOffice]').click(function(){
		var checked = $(this).val();
		var subproperty = $("tr[property=ifBuidReviewOffice]");
		if(checked == 1){
			subproperty.animate({
				opacity:'show'
			},20);
		}else{
			subproperty.animate({
				opacity:'hide'
			},20);
		}
	});
	//工会类别
	$('input[name=levelTop]').click(function(){
		var checked = $(this).val();
		var levelTop3 = $("tr[belongingTo=levelTop3]");
		var levelTop2 = $("tr[belongingTo=levelTop2]");
		var levelTop1 = $("tr[belongingTo=levelTop1]");
		if(checked == 1){
			levelTop1.animate({
				opacity:'show'
			},20);
			levelTop2.animate({
				opacity:'hide'
			},20);
			levelTop3.animate({
				opacity:'hide'
			},20);
		}else if(checked == 2){
			levelTop1.animate({
				opacity:'hide'
			},20);
			levelTop2.animate({
				opacity:'show'
			},20);
			levelTop3.animate({
				opacity:'hide'
			},20);
		}else if(checked == 3){
			levelTop1.animate({
				opacity:'hide'
			},20);
			levelTop2.animate({
				opacity:'hide'
			},20);
			levelTop3.animate({
				opacity:'show'
			},20);
		}
		$('input[name=guildHome]').trigger('click');
		$('input[name=guildSh]').trigger('click');
		$('input[name=guildBh]').trigger('click');
		$('input[name=guildWorkersCongress]').trigger('click');
		$('input[name=guildOpenDemocracy]').trigger('click');
		$('input[name=committee]').trigger('click');
	});
	
	$("#back").click(function(){
		$.link("org/"+guildId+"/info/");
	});
	
	//工会统计列表，查看详细信息
	$("#selectInfo").click(function() {
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if (checked.length == 1) {
			$.link("org/"+checked.val() + "/info?sn=1");
		} else {
			alert("请选择一个选项！");
		}
	});
	
	
});
