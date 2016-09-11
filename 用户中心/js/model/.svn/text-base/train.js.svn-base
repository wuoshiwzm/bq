$("document").ready(function() {
	var basicId = $("input[name=basicId]").val();
	var trainStep = $("input[name=trainStep]").val();
	//跳转到添加页面
	$("#addBtn").click(function() {
		$.link("train/add?basicId=" + basicId + "&&trainStep="
				+ trainStep);
	});

	$("a[id=backBtn]").click(function() {
		$.link("train/trainList?basicId=" + basicId+ "&&trainStep=" + trainStep);
	});
	$("#addForm").validate({
		tipType : "right",
		ajaxPost : true,
		dataType : {
			trainName : /^[\w\W]{2,20}$/,
			trainAge : /^[\w\W]{2,30}$/,
			trainAddress : /^[\w\W]{2,40}$/,
			trainSignUser : /^[\w\W]{2,40}$/
		},
		tipmsg : {
			w : {
				trainName : "请输入2-20个汉字",
				trainAge : "请输入2-30个汉字",
				trainAddress : "请输入2-40个汉字",
				trainSignUser : "请输入2-40个汉字"
			}
		},
		callback : function(curform, data) {
			alert(data.msg);
			if (data.code == 1) {
				$.link("train/trainList?basicId=" + basicId
						+ "&&trainStep=" + trainStep);
			}
		}
	});
	$("#delBtn").click(function() {
		var checked = $(".list-content table tbody").find(
				"input[type=checkbox]:checked");
		var _this = $(this);
		if (checked.length == 1) {
			if (confirm("您确定要删除吗？")) {
				var id = checked.attr("value");
				$.ajax( {
					url : id + "/del",
					type : "post",
					dataType : "json",
					success : function(data) {
						alert(data.msg);
						if (data.code == 1) {
							var form = _this.parents("form");
							form.submit();
						}
					}
				});
			}
		} else {
			alert("请选择一个选项！");
		}
	});
	$("#upBtn").click(function() {
		var checked = $(".list-content table tbody").find(
				"input[type=checkbox]:checked");
		if (checked.length == 1) {
			$.link("train/" + $("#basicId").val() + "/"+ checked.val() + "/update?trainStep="+ trainStep);
		} else {
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function() {
		var checked = $(".list-content table tbody").find(
				"input[type=checkbox]:checked");
		if (checked.length == 1) {
			$.link("train/" + $("#basicId").val() + "/"+ checked.val() + "/chakan?trainStep="+ trainStep);
		} else {
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType : "right",
		ajaxPost : true,
		dataType : {
			trainName : /^[\w\W]{2,20}$/,
			trainAge : /^[\w\W]{2,30}$/,
			trainAddress : /^[\w\W]{2,40}$/,
			trainSignUser : /^[\w\W]{2,40}$/
		},
		tipmsg : {
			w : {
				trainName : "请输入2-20个汉字",
				trainAge : "请输入2-30个汉字",
				trainAddress : "请输入2-40个汉字",
				trainSignUser : "请输入2-40个汉字"
			}
		},
		callback : function(curform, data) {
			alert(data.msg);
			if (data.code == 1) {
				$.link("train/trainList?basicId=" + basicId+ "&&trainStep=" + trainStep);
			}
		}
	});

	$("#expBtn").click(function() {
		var form = $("#userForm");
		form.attr("action", "trainListExp");
		form.attr("target", "_blank");
		form.submit();
	});
	$("#search_btn").click(function() {
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action", "trainList");
		form.attr("target", "");
		form.submit();
	});
});
