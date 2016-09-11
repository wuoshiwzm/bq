$("document").ready(function() {
	var basicId = $("input[name=basicId]").val();
	var studyType = $("input[name=studyType]").val();
	//跳转到添加页面
	$("#addBtn").click(function() {
		$.link("study/add?basicId=" + basicId + "&studyType=" + studyType);
	});
	$("a[id=backBtn]").click(function() {
		$.link("study/studyList?basicId=" + basicId + "&studyType="
				+ studyType);
	});

	$("#addForm").validate({
		tipType : "right",
		ajaxPost : true,
		dataType : {
			studyName : /^[\w\W]{2,40}$/,
			studyParentName : /^[\w\W]{2,20}$/,
			studyStudentName : /^[\w\W]{2,20}$/,
			studySchoolName : /^[\w\W]{2,40}$/,
			studySignName : /^[\w\W]{2,20}$/
		},
		tipmsg : {
			w : {
				studyName : "请输入2-40个汉字",
				studyParentName : "请输入2-20个汉字",
				studyStudentName : "请输入2-20个汉字",
				studySchoolName : "请输入2-40个汉字",
				studySignName : "请输入2-20个汉字"
			}
		},
		callback : function(curform, data) {
			alert(data.msg);
			if (data.code == 1) {
				$.link("study/studyList?basicId=" + basicId
						+ "&studyType=" + studyType);
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
			$.link("study/" + $("#basicId").val() + "/"
					+ checked.val() + "/update" + "?studyType="
					+ studyType);
		} else {
			alert("请选择一个选项！");
		}
	});
	
	$("#chakan").click(function() {
		var checked = $(".list-content table tbody").find(
				"input[type=checkbox]:checked");
		if (checked.length == 1) {
			$.link("study/" + $("#basicId").val() + "/"
					+ checked.val() + "/chakan" + "?studyType="
					+ studyType);
		} else {
			alert("请选择一个选项！");
		}
	});
	
	$("#updateForm").validate({
		tipType : "right",
		ajaxPost : true,
		dataType : {
			studyName : /^[\w\W]{2,40}$/,
			studyParentName : /^[\w\W]{2,20}$/,
			studyStudentName : /^[\w\W]{2,20}$/,
			studySchoolName : /^[\w\W]{2,40}$/,
			studySignName : /^[\w\W]{2,20}$/
		},
		tipmsg : {
			w : {
				studyName : "请输入2-40个汉字",
				studyParentName : "请输入2-20个汉字",
				studyStudentName : "请输入2-20个汉字",
				studySchoolName : "请输入2-40个汉字",
				studySignName : "请输入2-20个汉字"
			}
		},
		callback : function(curform, data) {
			alert(data.msg);
			if (data.code == 1) {
				$.link("study/studyList?basicId=" + basicId
						+ "&studyType=" + studyType);
			}
		}
	});
	
	$("#exportBtn").click(function(){
		var form = $("#userForm");
		form.attr("action","studyListExport");
		form.attr("target","_blank");
		form.submit();
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		var form = $("#userForm");
		form.attr("action","studyList");
		form.attr("target","");
		form.submit();
	});

});
