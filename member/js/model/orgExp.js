$("document").ready(function(){
	$("#exportBtn").click(function(){
		console.log("asdf");
		var form = $("#userForm");
		form.attr("action","jcExp");
		form.attr("target","_blank");
		form.submit();
	});
	$("#exportBtn1").click(function(){
		var form = $("#userForm");
		form.attr("action","jcysExp");
		form.attr("target","_blank");
		form.submit();
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action","jc");
		form.attr("target","");
		form.submit();
	});
});
