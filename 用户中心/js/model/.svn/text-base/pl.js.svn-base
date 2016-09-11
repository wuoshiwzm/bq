$("document").ready(function(){
	var smallType = $("input[name=smallType]").val();
	var plPid = $("input[name=plPid]").val();
	var lawsType = $("input[name=lawsType]").val();
	$("#addBtn").click(function(){
		if(smallType == 1){
			$.link("mworker/pl/add?smallType=1&plPid="+plPid);
		}
		if(smallType == 2){
			if(lawsType == ''){
				$.link("mworker/pl/add?smallType=2&plPid="+plPid);
			}else{
				$.link("mworker/pl/add?smallType=2&plPid="+plPid+"&lawsType="+lawsType);
			}
		}
	});
	$("#addBtnT").click(function(){
		$.link("mworker/pl/add?smallType=2&plPid="+plPid+"&lawsType="+(parseInt(lawsType)+1));
	});
	$("#addForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			title:/[\w\W]+/
		},  
		tipmsg:{
			w:{
				title:"请输入请输入标题！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//给树添加新节点
				var tree = window.parent.frames['treelist'].tree;
				var parentNode = tree.getNodeByParam("id",data.plPid+"",null);
				var node;
				var href;
				if(data.smallType == '1'){
					href="mworker/pl/list?smallType="+smallType+"&plPid="+plPid;
					node = {id:data.plId,code:data.plPid, pId:data.plPid, name:data.plTitle,icon:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",iconOpen:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s.png",iconClose:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",target:'info',url:$.SmartUI.PATH+'mworker/pl/z/'+data.plId+'/show'};
				}
				if(data.smallType == '2'){
					if(data.lawsType != '4'){
						node = {id:data.plId,code:data.plPid, pId:data.plPid, name:data.plTitle,icon:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",iconOpen:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s.png",iconClose:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",target:'info',url:$.SmartUI.PATH+'mworker/pl/list?smallType='+smallType+'&plPid='+data.plId+'&lawsType='+data.lawsType};	
					}else{
						node = {id:data.plId,code:data.plPid, pId:data.plPid, name:data.plTitle,icon:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",iconOpen:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s.png",iconClose:$.SmartUI.PATH+"resources/js/zTree/zTreeStyle/img/s1.png",target:'info',url:$.SmartUI.PATH+'mworker/pl/show?smallType='+smallType+'&plPid='+data.plId+'&lawsType='+data.lawsType};
					}
					href="mworker/pl/list?smallType="+smallType+"&plPid="+plPid+"&lawsType="+lawsType;
				}
				tree.addNodes(parentNode, node);
				$.link(href);
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
					url:$.SmartUI.PATH+"mworker/pl/"+checked.val()+"/del",
					type:"post",
					dataType:"json",
					success:function(data){
						alert(data.msg);
						if(data.code == 1){
							//删除树节点
							var tree = window.parent.frames['treelist'].tree;
							var node = tree.getNodeByParam("id",data.plId+"",null);
							tree.removeNode(node,false);
							
							var form = _this.parents("form");
							form.submit();
						}
					}
				});
			}
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#upBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		if(checked.length==1){
			$.link("mworker/pl/"+checked.val()+"/update?smallType="+smallType);
		}else{
			alert("请选择一条信息！");
		}
	});
	$("#updateForm").validate({
		tipType:"right", 
		ajaxPost:true, 
		dataType:{
			title:/[\w\W]+/
		},  
		tipmsg:{
			w:{
				title:"请输入请输入标题！"
			}
		}, 
		callback:function (curform, data) {
			alert(data.msg);
			if(data.code == 1){
				//跟新树节点
				var tree = window.parent.frames['treelist'].tree;
				var node = tree.getNodeByParam("id",data.plId+"",null);
				node.name=data.plTitle;
				tree.updateNode(node);
				if(lawsType == null){
					$.link("mworker/pl/list?smallType="+smallType+"&plPid="+plPid);
				}else{
					if(lawsType == 1){
						$.link("mworker/pl/list?smallType=2&plPid="+plPid);
					}else{
						$.link("mworker/pl/list?smallType=2&plPid="+plPid+"&lawsType="+(parseInt(lawsType)-1));
					}
				}
			}
		}
	});
	$("a[id=backBtn]").click(function(){
		if(smallType == 1){
			var tree = window.parent.frames['treelist'].tree;
			var node = tree.getNodeByParam("id","2",null);
			tree.selectNode(node,false);
			$.link("mworker/pl/list?smallType=1&plPid="+plPid);
		}
		if(smallType == 2){
			if(lawsType == ''){
				$.link("mworker/pl/list?smallType=2&plPid="+plPid);
			}else{
				$.link("mworker/pl/list?smallType=2&plPid="+plPid+"&lawsType="+lawsType);
			}
		}
	});
	$("a[id=backBtn1]").click(function(){
		if(lawsType == 1){
			$.link("mworker/pl/list?smallType=2&plPid="+plPid);
		}else{
			$.link("mworker/pl/list?smallType=2&plPid="+plPid+"&lawsType="+(parseInt(lawsType)-1));
		}
	});
	$("#search_btn").click(function(){
		//设置为第一页，如果需要分页，此行必须存在。
		$("input[name=pageNo]").val("1");
		$("#userForm").submit();
	});
	$("#checkBtn").click(function(){
		var checked = $(".list-content table tbody").find("input[type=checkbox]:checked");
		var _this = $(this);
		if(checked.length==1){
			if(smallType == 1){
				$.link("mworker/pl/z/"+checked.val()+"/show");
			}else if(smallType == 2){
				$.link("mworker/pl/f/"+checked.val()+"/show?lawsType="+lawsType);
			}
		}else{
			alert("请选择一条信息！");
		}
	});
});
function selectNode(plId){
	var tree = window.parent.frames['treelist'].tree;
	var node = tree.getNodeByParam("id",plId,null);
	tree.selectNode(node,false);
}