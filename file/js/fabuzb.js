///富文本编辑
KindEditor.ready(function (K) {
    editor = K.create('textarea[name="txtContent"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: false,
        items: [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'link'],
        afterBlur: function () { this.sync(); }
    });
});
//绑定报名截止时间
var jzsj = {
    elem: '#gsjzsj',
    format: 'YYYY/MM/DD hh:mm',
    min: laydate.now(),
    istime: true,
    festival: true
};
$(".bmks").on("click", function () {
    laydate(jzsj);
})
//验证方法
var isvc = {
    //ID变量
    vid: '',
    //长度
    len: 4,
    //是否为空
    isempty: function () {
        if ($("#" + this.vid).val() != "" && $("#" + this.vid).attr("placeholder") != $("#" + this.vid).val())
            return true;
        else
            return false;
    },
    //是否够长度
    islength: function () {
        if ($("#" + this.vid).val().length >= this.len)
            return true;
        else
            return false;
    },
    //公司名称
    iscompanyName: function () {
        var s = $("#" + this.vid).val();
        var str_key = "办事处,公司,小学,中学,学校,中心,局,银行,分行,社,总队,处,电站,院,酒店,矿,政府,所,部,协会,厂,场,集团,馆,行,会,署,网";
        var key = str_key.split(",");
        var r = 0;
        for (var i = 0; i < str_key.length; i++) {
            if (s.indexOf(key[i]) > -1) {
                return true;
            }
        }
        return false;
    },
    ///是否是手机号
    isphoneno: function () {
        var pre = /(^1[3|5|8][0-9]{9}$)/;
        return pre.test($("#" + this.vid).val());
    },
    ///弹出右边边tips
    alerttip: function (msg) {
        layer.tips(msg, $("#" + this.vid), { style: ['background-color:#4595e6;font-weight: 700;font-family:微软雅黑; color:#FFF!important', '#4595e6'], guide: 1, time: 4 });
    },
    ///弹出下方tips
    alerttipbottom: function (msg) {
        layer.tips(msg, $("#" + this.vid), { style: ['background-color:#4595e6;font-weight: 700;font-family:微软雅黑; color:#FFF!important', '#4595e6'], guide: 2, time: 4 });
    },
    ///弹出右边tips
    alerttipbyid: function (msg, id) {
        layer.tips(msg, $("#" + id), { style: ['background-color:#4595e6;font-weight: 700;font-family:微软雅黑; color:#FFF!important', '#4595e6'], guide: 1, time: 4 });
    },
    alert: function (msg) {
        layer.alert(msg);
    }
}
//将form中的值转换为键值对。
function getFormJson(frm) {
    var o = {};
    var a = $(frm).serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value == $(document.getElementsByName(this.name)).attr("placeholder") ? "" : this.value);
        } else {
            o[this.name] = (this.value == $(document.getElementsByName(this.name)).attr("placeholder") ? "" : this.value);
        }
    });

    return o;
}
//显示消息方法
function showtips(name, msg, ret) {
    var obj = $("#" + name);
    var posgu = 1;
    if (name == "phoneno")
        posgu = 2;
    layer.tips(msg, obj, { style: ['background-color:#4595e6;font-weight: 700;font-family:微软雅黑; color:#FFF!important', '#4595e6'], guide: posgu, time: 4 });
    if (ret)
        obj.focus();
}
///标题
function checkbt(focus) {
    isvc.vid = "txt_bt";
    isvc.len = 4;
    if (!isvc.isempty())
        isvc.alerttip("标题不能为空");
    else if (!isvc.islength())
        isvc.alerttip("标题长度必须大于四个字符");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///业主名称
function checkdw(focus) {
    isvc.vid = "txt_dw";
    isvc.len = 4;
    if (!isvc.isempty())
        isvc.alerttip("业主单位不能为空");
    else if (!isvc.islength())
        isvc.alerttip("输入业主单位长度必须大于四个字符");
        //else if (!isvc.iscompanyName())
        //    isvc.alerttip("请输入正确的公司名称");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
//地区
function checkdq(focus) {
    isvc.vid = "diqu";
    if (!isvc.isempty())
        isvc.alerttip("所在地不能为空");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///中标单位名称
function checkzbdw(focus) {
    isvc.vid = "txt_zbdw";
    isvc.len = 4;
    if (!isvc.isempty())
        isvc.alerttip("中标单位不能为空");
    else if (!isvc.islength())
        isvc.alerttip("输入中标单位长度必须大于四个字符");
        //else if (!isvc.iscompanyName())
        //    isvc.alerttip("请输入正确的公司名称");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///中标内容
function checkzbnr(focus) {
    isvc.vid = "txtContent";
    isvc.len = 20;
    if (!isvc.isempty())
        isvc.alert("中标内容不能为空");
    else if (!isvc.islength())
        isvc.alert("中标内容长度必须大于二十个字符");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
//中标金额
function checkzbje(focus) {
    isvc.vid = "zbje";
    if (!isvc.isempty())
        isvc.alerttip("中标金额不能为空");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
//公示截止时间
function checkgsjzsj(focus) {
    isvc.vid = "gsjzsj";
    if (!isvc.isempty())
        isvc.alerttip("公示时间不能为空");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///验证用户姓名
function checkusername(focus) {
    isvc.vid = "lxrname";
    if (!isvc.isempty())
        isvc.alerttip("姓名不能为空");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///验证手机号码
function checkphoneno(focus) {
    isvc.vid = "phoneno";
    if (!isvc.isempty())
        isvc.alerttipbottom("手机号码不能为空");
    else if (!isvc.isphoneno())
        isvc.alerttipbottom("手机号码格式错误");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///验证验证码
function checkyzm(focus) {
    isvc.vid = "noyzm";
    if (!isvc.isempty())
        isvc.alerttip("验证码不能为空,请获取手机验证码");
    else
        return true;
    if (focus)
        $("#" + isvc.vid).focus();
    return false;
}
///倒计时按钮
function daojishi(sz) {
    $("#Getphoneyz").attr("disabled", "disabled");
    var djs = setInterval(function () {
        var djszs = sz--;
        if (djszs <= 0) {
            clearInterval(djs);
            $("#Getphoneyz").removeAttr("disabled");
            $("#Getphoneyz").val("重新发送");
        }
        $("#Getphoneyz").val(djszs + "秒后重新发送");
    }, 1000);
}
//是否是第一次提交
var firstSub = true;
//提交验证
function subform() {
    if (firstSub) {
        if (checkbt(true) && checkdw(true) && checkdq(true) && checkzbdw(true) && checkzbje(true) && checkgsjzsj(true) && checkzbnr(true)) {
            firstSub = false;
            if ($("input[name='radbtn_lxr']").length > 0) {
                if ($("input[name='radbtn_lxr']:checked").val() == "0") {
                    if (subinfo()) {
                        return true;
                    }
                    else {
                        firstSub = true;
                        return false;
                    }
                }
                else {
                    return true;
                }
            }
            else {
                if (subinfo()) {
                    return true;
                }
                else {
                    firstSub = true;
                    return false;
                }
            }
        }
        else {
            firstSub = true;
            return false;
        }
    } else {
        alert("正在提交，请勿重复操作");
        return false;
    }
}
///提交手机短信验证
function subinfo() {
    if (checkusername(true) && checkphoneno(true) && checkyzm(true))
        return true;
    else
        return false;
}
//post提交
function postsubmit() {
    var dataPara = getFormJson($("#form1"));
    $.ajax({
        type: "POST",
        url: "/JsonHandler/submitzbHandler.aspx",
        data: dataPara,
        dataType: "json",
        beforeSend: function (data) {
            $("#tjfb").html("提交中..");
        },
        success: function (data) {
            if (data != null) {
                if (data.Ret) {
                    location.href = data.SUrl;
                    return true;
                } else {
                    switch (data.Msgtype) {
                        case 0:
                            showtips(data.Name, data.Msg, true);
                            break;
                        case 1:
                            layer.alert(data.Msg, 8);
                            break;
                        case 2:
                            layer.alert(data.Msg, 0, function () { data.Fn });
                            break;
                    }
                    $("#tjfb").html("提交发布");
                    firstSub = true;
                    return false;
                }
            } else {
                layer.alert("服务器未响应", 8);
                $("#tjfb").html("提交发布");
                firstSub = true;
                return false;
            }
        },
        error: function () {
            layer.alert("网络出错 ，请检查网络是否正常");
            $("#tjfb").html("提交发布");
            firstSub = true;
            return false;
        }
    });
}

//提交全部
function allsub() {
    if (subform())
        return postsubmit();
}