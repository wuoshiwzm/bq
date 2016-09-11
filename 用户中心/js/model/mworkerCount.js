$("document").ready(function(){
	var guildId = $("input[name=guildId]").val();
	var guildId_back = $("input[name=guildId_back]").val();
	
	
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#mworkerForm");
		form.attr("action","list");
		form.attr("target","");
		form.submit();
	});
	
	$("#downloadBtn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#mworkerForm");
		form.attr("action","list?print=1");
		form.attr("target","");
		form.submit();
	});
	
		$("a[id=backBtn]").click(function(){
		$.link("mworker/mworkerList?guildId="+guildId);
	});
	
});
