$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			unit:/[\w\W]+/,
			name:/^[\u4e00-\u9fa5]{2,8}$/,
			age:/^[1-9]+[0-9]+$/
			
		}, 
		tipmsg:{
			w:{
				unit:"请输入单位名称！",
				name:"请输入姓名(2-8个汉字)！",
				age:"请输入正确的年龄！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				window.location.replace($.SmartUI.PATH+"fw/info/"+guildId);
			}
		}
	});
	
	$('input[name=femaleNum]').change(function(){
		var num = parseInt($(this).val());
		if(num <= 10){
			$('tr[belong=ifcommittee]').hide(100);
			$('tr[belong=ifmember]').show(100);
		}else{
			$('tr[belong=ifcommittee]').show(100);
			$('tr[belong=ifmember]').hide(100);
			if($('input[name=ifcommittee]:checked').val() == 0){
				$('tr[property=ifcommittee]').hide(100);
			}
		}
	});
	$('input[name=ifcommittee]').click(function(){
		var num = parseInt($(this).val());
		if(num == 0){
			$('tr[property=ifcommittee]').hide(100);
		}else{
			$('tr[property=ifcommittee]').show(100);
		}
	});
	
	
	$("#export").click(function(){
		var form = $("#mworkerForm");
		form.attr("action","listExp");
		form.attr("target","_blank");
		form.submit();
	});
});