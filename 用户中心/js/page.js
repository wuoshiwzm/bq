$("document").ready(function(){
	$("#pageGo").click(function(){
		var path = $(this).attr("url");
		window.location.replace(path+$('#currentPage').val())
	});
});
	


