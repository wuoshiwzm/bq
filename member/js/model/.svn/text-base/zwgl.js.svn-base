$("document").ready(function() {
	var guildId = $("input[name=guildId]").val();
	//跳转到添加页面
		$("#addBtn").click(function() {
			$.link("zwgl/add?guildId=" + guildId);
		});

		$("a[id=backBtn]").click(function() {
			$.link("zwgl/" + guildId + "/list");
		});
		$("a[id=btn]").click(function() {
			$.link("zw/" + guildId + "/zwglList");
		});
		
	$("#delBtn").click(
				function() {
					var checked = $(".list-content table tbody").find(
							"input[type=checkbox]:checked");
					var _this = $(this);
					if (checked.length == 1) {
						if (confirm("您确定要删除吗？")) {
							var id = checked.attr("value");
							$.ajax( {
								url : $.SmartUI.PATH + "zw/" + id + "/del",
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
						alert("请选择一个角色！");
					}
				});
		$("#upBtn").click(
				function() {
					
					var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
					if (checked.length == 1) {
						$.link("zw/" + checked.val() + "/update?guildId="
								+ guildId);
					} else {
						alert("请选择一个角色！");
					}
				});
		$("#chakan").click(
				function() {
					
					var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
					if (checked.length == 1) {
						$.link("zw/" + checked.val() + "/chakan?guildId="
								+ guildId);
					} else {
						alert("请选择一个角色！");
					}
				});
		$("#updateForm").validate( {
			tipType : "right",
			ajaxPost : true,
			dataType : {
				zwglName : /^[\u4e00-\u9fa5]{2,12}$/
			},
			tipmsg : {
				w : {
					zwglName : "请输入2-12个汉字"
				}
			},
			callback : function(curform, data) {
				alert(data.msg);
				if (data.code == 1) {
					$.link("zw/" + guildId + "/zwglList");
				}
			}
		});
	});
