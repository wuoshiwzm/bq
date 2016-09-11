(function($){
	//form验证
	var forms_config = {
		btnSubmit:"#btn_sub", 					//提交按钮id，默认为#btn_sub
		btnReset:"#btn_reset",					//提交按钮id，默认为#btn_reset
		ajaxPost:false,							//表单是否为ajax提交
		tipType:"right",						//提示信息类型，可以为right,pop(则allCheck系统默认为false)
		allCheck:false,							//提交的时候是否一次行检测玩所有的字段。默认为逐行检测
		subMsg:false,							//提交时是否显示提示信息，如：努力加载中..。默认为不提示
		entrySub:false,							//按回车键提交表单，默认为false，建议只用作登陆表单
		dataType:{								//表单验证类型
			"*":/[\w\W]+/,						//不能为空！
			"*6-16":/^[\w\W]{6,16}$/,			//请输入6到16位任意字符！
			"n":/^([-][0-9]+)|([0-9]+)$/, 		//请输入数字！
			"+n":/^[1-9][0-9]*$/, 				//请输入非零正整数！
			"n+":/^[1-9][0-9]*|0$/, 				//请输入非零正整数！
			"xiaoshu":/^-?[0-9]{1,20}(\.\d*)?$|^-?d^(\.\d*)?$/,  //验证小数
			"ch":/^[\u4e00-\u9fa5]+$/, 			//请输入汉字！
			"en":/^[a-zA-Z]+$/, 				//请输入字母！
			"s":/^[a-zA-Z0-9]+$/, 				//请输入数字或者字母！
			"s6-18":/^[a-zA-Z0-9]{6,18}$/, 		//请输入6-18个数字或者字母！
			"zj":/^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/, //验证电话号码
			"p":/^[0-9]{6}$/, 					//请填正确的写邮政编码！
			"m":/^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|18[0-9]{9}$/,	//请填写正确的手机号码！
			"e":/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,	//请填写正确的电子邮件！
			"url":/^(\w+:\/\/)?\w+(\.\w+)+.*$/,						//请填写正确的网址地址！
			"sysUrl":/^[a-zA-z0-9]+[\/]*[a-zA-z0-9\/]*[?]*[[a-zA-z0-9\=]*[a-zA-z0-9]*]*[&]*[[a-zA-z0-9\=]*[a-zA-z0-9]*]*$/,			//系统内部URL
			"idCard":/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/,			//身份证号码
			"qq":/^\d{5,11}$/,										//QQ号码
			"date":/((^((1[8-9]\d{2})|([2-9]\d{3}))([-\/\._])(10|12|0?[13578])([-\/\._])(3[01]|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))([-\/\._])(11|0?[469])([-\/\._])(30|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))([-\/\._])(0?2)([-\/\._])(2[0-8]|1[0-9]|0?[1-9])$)|(^([2468][048]00)([-\/\._])(0?2)([-\/\._])(29)$)|(^([3579][26]00)([-\/\._])(0?2)([-\/\._])(29)$)|(^([1][89][0][48])([-\/\._])(0?2)([-\/\._])(29)$)|(^([2-9][0-9][0][48])([-\/\._])(0?2)([-\/\._])(29)$)|(^([1][89][2468][048])([-\/\._])(0?2)([-\/\._])(29)$)|(^([2-9][0-9][2468][048])([-\/\._])(0?2)([-\/\._])(29)$)|(^([1][89][13579][26])([-\/\._])(0?2)([-\/\._])(29)$)|(^([2-9][0-9][13579][26])([-\/\._])(0?2)([-\/\._])(29)$))/,
			"bankAccount":/^[1-9]{1}[0-9]{15,18}$/,				//银行账号
			"methods": /(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)|(13\d{9}$)|(15[0135-9]\d{8}$)|(18[267]\d{8}$)/      //手机和座机联合验证
		},
		callback:function(curform,data){},
		before:function(curform,data){return true}
	};
	var tipmsg={
		w:{
			"*":"不能为空！",
			"*6-16":"请输入6到16位任意字符！",
			"n":"请输入数字！",
			"+n":"请输入非零正整数！",
			"n+":"请输入正整数！",
			"xiaoshu":"请输入整数或小数",
			"ch":"请输入汉字！",
			"en":"请输入字母！",
			"s":"请输入数字或者字母！",
			"s6-18":"请输入6-18个数字或者字母！",
			"p":"请填正确的写邮政编码！",
			"m":"请填写正确的手机号码！",
			"e":"请填写正确的电子邮件！",
			"url":"请填写正确的网址！",
			"sysUrl":"请输入正确的地址！",
			"idCard":"请输入正确的身份证号码！",
			"qq":"请输入正确的QQ号码",
			"date":"请输入正确的日期！如：1990-01-01",
			"zj":"请输入正确的电话号码！",
			"bankAccount":"请输入正确的银行账号！",
			"methods":"请输入正确的联系电话"
		},
		def:"请填写正确信息！",
		reck:"两次输入的内容不一致！",
		passed:"已通过验证！",
		p:"努力载入中…"
	};
	var validate = function(forms,settings){
		//覆盖默认配置
		var _settings = $.extend(true, {},forms_config, settings);
		var brothers = this;
		brothers.setting = _settings;
		brothers.tipmsg = $.extend(true,{}, tipmsg, settings.tipmsg);
		if(_settings.tipType != "right"){
			//如果是pop那么一次全部验证就会为false，必须为逐行验证
			brothers.setting.allCheck = false;
		}
		if(_settings.tipType == "pop" || _settings.subMsg){
			//如果为pop或者提交信息显示，则创建pop
			validate.util.createPop.call(this);
		}
		if(_settings.entrySub){
			$(document).keyup(function(event){
				if(event.keyCode ==13){
					forms.find(_settings.btnSubmit).trigger("click");
				}
			});
		}
		//提交按钮事件绑定
		forms.find(_settings.btnSubmit).click(function(){
			var allowsub = true;
			if(!_settings.before()){
				return;
			}
			forms.find("[datatype]").each(function(index,obj){
				var curform = this;
				curform.setting = $.extend({},_settings);
				curform.tipmsg = $.extend(true,{}, tipmsg, settings.tipmsg);
				//如果有没通过验证的直接跳出，并且不能提交
				var passed = validate.util.check.call(this,curform,$(this))
				if(passed){
					var isrecheck = false;
					if ($(this).attr('recheck')) {
						isrecheck = true;
						var rcvalue = $("input[name="+$(this).attr('recheck')+"]").val();
						passed = validate.util.recheck.call(this,$(this),rcvalue);
					}
					validate.util.renderUI.call(this,curform,$(this),passed,false,isrecheck);
				}else{
					validate.util.renderUI.call(this,curform,$(this),passed,false);
				}
				if(!passed){
					allowsub = false;
					if(!brothers.setting.allCheck){
						return false;
					}
				}
			});
			if(allowsub){//表单验证通过
				if (_settings.ajaxPost) {
					if(_settings.subMsg) validate.util.renderUI.call(this,brothers,null,200,_settings.subMsg);
					var _url = validate.util.getURL.call(this,forms);
					var param = validate.util.getFormData.call(this,forms);
					$.ajax({
						url:_url,
						data:param,
						type:"post",
						dataType:"json",
						success:function(data){
							_settings.callback(forms,data);
						},
						error:function(data){
							_settings.callback(forms,data);
						}
					});
				}else{
					validate.util.subForm.call(forms,forms);
				}
			}
		});
		//重置按钮事件绑定
		$(_settings.btnReset).click(function(){
			forms[0].reset();
		});
		//绑定datatype的事件
		forms.each(function(){
			$(this).delegate("[datatype]","blur",function(){
				var curform = this;
				curform.setting = $.extend({},_settings);
				curform.tipmsg = $.extend(true,{}, tipmsg, settings.tipmsg);
				
				//判断是否是在提交表单操作时触发的验证请求；先验证datatype，通过后验证recheck
				var ispass = validate.util.check.call(this,curform,$(this));
				if(ispass){
					var isrecheck = false;
					if ($(this).attr('recheck')) {
						isrecheck = true;
						var rcvalue = $("input[name="+$(this).attr('recheck')+"]").val();
						ispass = validate.util.recheck.call(this,$(this),rcvalue);
					}
					validate.util.renderUI.call(this,curform,$(this),ispass,false,isrecheck);
				}else{
					validate.util.renderUI.call(this,curform,$(this),ispass,false);
				}
			});
		});
	};
	
	validate.util = {
		getBasePath:function(){
		    var curWwwPath=window.document.location.href;  
		    var pathName=window.document.location.pathname;  
		    var pos=curWwwPath.indexOf(pathName);  
		    var localhostPaht=curWwwPath.substring(0,pos);  
		    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
		    //开发路径 ：
		    //path = localhostPaht+projectName+"/";
			//服务器部署路径
		    path = localhostPaht+"/";
		    return path;
		},
		renderUI :function(curform,obj,ispass,issubmsg,isrecheck){
			if(curform.setting.tipType =="right" || curform.setting.tipType =="pop"){
				if(curform.setting.tipType =="right" && !issubmsg){
					var validatemsgDiv = "";
					obj.parents('td').next('td').find('.error-msg').remove();
					if(!ispass){
						if(!isrecheck){
							validatemsgDiv = '<span class="validate_checktip validate_wrong">'+curform.tipmsg.w[obj.attr('datatype')]+'</span>';	
						}else{
							validatemsgDiv = '<span class="validate_checktip validate_wrong">'+curform.tipmsg.reck+'</span>';
						}
					}else{
						validatemsgDiv = '<span class="validate_checktip validate_right">'+curform.tipmsg["passed"]+'</span>';
					}
					obj.parents('td').next('td').html(validatemsgDiv);
				}else if(curform.setting.tipType =="pop" || issubmsg){
					if(!issubmsg){
						if(!ispass){
							validate.util.setPopCenter.call(curform,200);
							$(curform).css("border","1px solid #b94a48");
							if(!isrecheck){
								$("#validate_msg").find(".validate_info").html(curform.tipmsg.w[obj.attr('datatype')]);	
							}else{
								$("#validate_msg").find(".validate_info").html(curform.tipmsg.reck);
							}
						}else{
							$(curform).css("border","1px solid #a7b5bc");
						}
					}else{
						validate.util.setPopCenter.call(curform,200);
						$("#validate_msg").find(".validate_info").html(curform.tipmsg.p);
					}
				}
			}else{
				var error=$('.'+curform.setting.tipType);
				var msg = error.find('.error-message');
				if(!ispass){
					if(!isrecheck){
						msg.html(curform.tipmsg.w[obj.attr('datatype')]);
					}else{
						msg.html(curform.tipmsg.reck);
					}
					error.show();
				}else{
					error.hide();
				}
			}
		},
		createPop :function(){
			if($("#validate_msg").length!==0){return false;}
			var msgdiv = $('<div id="validate_msg"><div class="validate_info"></div></div>').appendTo("body");
		},
		showPop : function(msg){
			validate.util.createPop();
			validate.util.setPopCenter(200);
			$("#validate_msg").find(".validate_info").html(msg);
		},
		setPopCenter:function(time){
			var obj = $("#validate_msg");
			if(obj.css("display")=="block"){
				obj.stop(true);
			}
			var left=($(document.body).width()-obj.outerWidth())/2,
				top=30;
			obj.css({left:left}).show()
			.animate({top : top},{ duration:time , queue:false })
			.animate({opacity:1},{duration:2000})
			.animate({opacity:0},{duration:100,complete:function(){
				$(this).hide().css({top:0,opacity:1});
			}});
		},
		getFormData :function(curform){
			var param = curform.serialize();
			return param;
		},
		subForm :function(curform){
			curform.attr("action",validate.util.getBasePath.call(curform)+curform.attr("action"));
			curform[0].submit();
		},
		getURL :function(curform){
			var baseurl = validate.util.getBasePath();
			return baseurl+curform.attr("action");
		},
		getValue:function(obj){
			var inputval,
				curform=this;
				
			if(obj.is(":radio")){
				inputval=curform.find(":radio[name='"+obj.attr("name")+"']:checked").val();
			}else if(obj.is(":checkbox")){
				inputval="";
				curform.find(":checkbox[name='"+obj.attr("name")+"']:checked").each(function(){ 
					inputval +=$(this).val()+','; 
				})
			}else{
				inputval=obj.val();
			}
			inputval=$.trim(inputval);
			
			return validate.util.isEmpty.call(obj,inputval) ? "" : inputval;
		},
		isEmpty:function(val){
			return val==="" ? true:false;
		},
		recheck:function(gets,obj){
			return gets.val()==obj;
		},
		_check:function(curform,datatype,inputval){
			if (curform.setting.dataType[datatype]!=undefined) {
				if(curform.setting.dataType[datatype].constructor  == RegExp){
					return curform.setting.dataType[datatype].test(inputval);
				}
			}
		},
		check :function(curform,obj){
			var datatype = obj.attr("datatype");
			var settings = curform.setting;
			var inputval = validate.util.getValue.call(curform,$(this));
			//隐藏表单对象不做验证;
			if($(this).is(":hidden")){
				return true;
			}
			return validate.util._check.call(curform,curform,datatype,inputval);
		}
	};
	//定义SmartUI包
	$.extend({"SmartUI":{}});
	//定义jquery静态方法showPop，显示用户信息。
	$.SmartUI.showPop = function(msg){
		validate.util.createPop();
		validate.util.setPopCenter(200);
		$("#validate_msg").find(".validate_info").html(msg);
	}
	$.SmartUI.PATH = validate.util.getBasePath();
	$.link=function(url){
		window.location.replace($.SmartUI.PATH+url);
	};
	//扩展jquery对象方法
	$.fn.validate=function(settings){
		return new validate(this,settings);
	};
	var browser = (function(ua) {
		var b = {
			msie : /msie/.test(ua) && !/opera/.test(ua),
			opera : /opera/.test(ua),
			safari : /webkit/.test(ua) && !/chrome/.test(ua),
			firefox : /firefox/.test(ua),
			chrome : /chrome/.test(ua)
		};
		var vMark = "";
		for (var i in b) {
			if (b[i]) {
				vMark = i;
			}
		}
		if (b.safari) {
			vMark = "version";
		}
		b.version = RegExp("(?:" + vMark + ")[\\/: ]([\\d.]+)").test(ua) ? RegExp.$1 : "0";

		b.ie = b.msie;
		b.ie6 = b.msie && parseInt(b.version) == 6;
		b.ie7 = b.msie && parseInt(b.version) == 7;
		b.ie8 = b.msie && parseInt(b.version) == 8;
		b.ie9 = b.msie && parseInt(b.version) == 9;

		return b;
	})(window.navigator.userAgent.toLowerCase());
	$.browser = function(ua) {
		return browser;
	}
	$.wresize = function debounce(callback, delay, context) {
		if ( typeof (callback) !== "function") {
			return;
		}
		delay = delay || 150;
		context = context || null;
		var timeout;
		var runIt = function() {
			callback.apply(context);
		};
		return (function() {
			window.clearTimeout(timeout);
			timeout = window.setTimeout(runIt, delay);
		});
	}
	$.fn.menu = function(activeId) {
		var _this = $(this);
		//设置主菜单点击事件
		_this.find('.menu-header').click(function() {
			$(this).parent('li').find('ul').show(200);
			$(this).parent('li').siblings().find('ul').hide(200);
		});
		//设置菜单选中样式
		_this.find('li > ul > li').click(function() {
			_this.find('li > ul > li').removeClass('active');
			$(this).addClass('active');
		});
		if (activeId) {
			//取消所有的active
			_this.find('li > ul > li').removeClass('active');
			//隐藏所有的子菜单
			_this.find('li > ul').hide(200);
			//获取激活菜单的子li
			$(activeId).parents('li ul').show(200);
			$(activeId).addClass('active');
		}
	}
})(jQuery);
