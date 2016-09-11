$(document).ready(function () {
	var Browser = (function(ua){
        var b = {
            msie: /msie/.test(ua) && !/opera/.test(ua),
            opera: /opera/.test(ua),
            safari: /webkit/.test(ua) && !/chrome/.test(ua),
            firefox: /firefox/.test(ua),
            chrome: /chrome/.test(ua)
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
        
        return b;
    })(window.navigator.userAgent.toLowerCase());
    var bg_div = $('#bg');
    var bg='<div class="s-skin-container" style="z-index: -100;background-color: rgb(64, 64, 64); background-image: url(resources/images/bg_c.jpg);"></div>';
    if(Browser.ie){
    	bg = '<img style="z-index: -100;position: fixed; width: 100%; height: 100%; top: 0px; left: 0px;" src="resources/images/bg_c.jpg"/>';
    }
    bg_div.html(bg);

	$("#loginForm").validate({
		tipType:"error", 
		ajaxPost:true, 
		entrySub:true,
		dataType:{
			loginName:/^[a-zA-Z0-9]{6,16}$/, 
			pwd:/^[a-zA-Z0-9]{6,18}$/,
			checkCode:/[\w\W]+/
		}, 
		tipmsg:{
			w:{
				loginName:"登录名必须由6-16个字母或者数字！",
				pwd:"密码必须由6-18个数字或字母组成！",
				checkCode:"验证码不能为空"
			}
		}, 
		callback:function (curform, data) {
			//将获取baseurl的方法加入jquery静态方法中
			if (data.code == 3) {
				$(".error").hide();
				window.location.replace($.SmartUI.PATH + "index");
			}else{
				$(".error .error-message").html(data.msg);
				$(".error").show();
			}
		}
	});
	
	//判断浏览器
  	if(navigator.userAgent.indexOf("Firefox")!=-1||navigator.userAgent.indexOf("Chrome") > -1){
		//正常
	}else{
		//安装谷歌浏览器
		if(confirm("您使用的浏览器不是本软件所推荐的火狐浏览器，点击确定安装火狐浏览器。")){
			$.link("upload/browser/Firefox-latest.exe");
		}
	}
	 
});

