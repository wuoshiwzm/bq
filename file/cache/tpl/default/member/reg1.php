<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<style type="text/css">
.tl{width:150px;text-align:right;padding-right:20px;}
.reg_title {border-bottom:#CCCCCC 1px solid;font-weight:bold;padding:0 0 10px 10px;margin:15px 55px 0 55px;font-size:14px;color:#FF6600;}
.reg_inp {border:#7F9DB9 1px solid;padding:3px 0 3px 0;}
.tips {position:absolute;z-index:1000;width:300px;background:url('image/tips_bg.gif') no-repeat 0 bottom;overflow:hidden;margin:-5px 0 0 -10px;}
.tips div{background:url('image/tips_top.gif') no-repeat;line-height:22px;padding:8px 10px 8px 35px;}
</style>
   <div class="ny_banner">
    
    </div>
    <style>
            .reg_flow1 {
                height: 35px;
                line-height: 35px;
                margin: 15px 0
            }
            
            .reg_flow1 ul li {
                float: left;
                width: 232px;
                font-family: "微软雅黑";
                font-size: 16px;
                color: #000;
                padding-left: 30px;
            }
            
            .reg_flow1 ul li.current {
                color: red;
                font-weight: bold;
            }
    </style>
    <div class="wrapper">
            <div class="reg_flow1">
                <ul id="tabs">
                    <li id="1" class="current">
                        1.填写用户名和密码
                    </li>
                    <li id="2">
                        2.完善资料
                    </li>
                    <li id="3">
                        3.注册成功
                    </li>
                </ul>
            </div>

            <div class="reg_info reg_step1">
                <form id="regbasicForm" action="/member/register.php"  method="post" >
                    <input type="hidden" name="post[regid]" value="<?php echo $gid;?>" />
<input name="action" type="hidden" id="action" value="<?php echo crypt_action('register');?>"/>
<input name="forward" type="hidden" value="<?php echo $forward;?>"/>
 
                    <div class="reg_info_l" id="tab0">
                        <ul>
                            <li>
                                <label>
                                    <i class="red">*</i>用户名：
                                </label>
                                <input  id="username" name="post[username]" class="k" type="text" onblur="validator('username');" autocomplete="off" <?php if($username) { ?> value="<?php echo $username;?>" readonly<?php } ?>
 maxlength="18">
                                <span class="prompt" id="dusername">* 请输入6-18位由字母和（或）数字组成的字符串</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>密码：
                                </label>
                                <input  id="password" class="k" type="password" name="post[password]" onblur="validator('password');" autocomplete="off"<?php if($password) { ?> value="<?php echo $password;?>" readonly<?php } ?>
maxlength="16">
                                <span class="prompt" id="dpassword">* 请输入6-16位任意字符</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>确认密码：
                                </label>
                                <input   class="k" type="password" name="post[cpassword]" id="cpassword" onblur="validate('cpassword');" autocomplete="off"<?php if($password) { ?> value="<?php echo $password;?>" readonly<?php } ?>
 maxlength="16">
                                <span class="prompt"  id="dcpassword">* 请重复输入您的密码</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>邮箱：
                                </label>
                                <input   class="k" type="text" name="post[email]" id="email" onblur="validator('email');"<?php if($email) { ?> value="<?php echo $email;?>" readonly<?php } ?>
 maxlength="50">
                                <span class="prompt" id="demail">* 请填写常用邮箱地址</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>手机号码：
                                </label>
                                <input  class="k" type="text"  name="post[mobile]" id="mobile"<?php if($could_mobilecode) { ?> onblur="validator('mobile');"<?php } ?>
 maxlength="11">
                                <span class="prompt" id="dmobile">* 请输入11位手机号码</span>
                            </li>
                            <li>
                                <label></label>
                                <span id="msg"></span>
<input type="button"  id="btn_sub" value="下一步" class="reg_btn" onclick="return chktab1();">
                                <!-- <a href="javascript:void(0);" >下一步</a> -->
                            </li>
                        </ul>
                    </div>
<!-- 二步开始 -->
<div class="reg_info_l" id="tab1" style="display:none">
                        <ul>
                            <li>
                                <label>
                                    <i class="red">*</i>单位名称：
                                </label>
                                <input name="post[company]" id="company" class="k" type="text" onblur="validator('company');" maxlength="100">
                                <span class="prompt" id="dcompany">* 请填写单位全称</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>单位性质：
                                </label>
<?php echo dselect($COM_TYPE, 'post[type]', '请选择', '', 'id="type" class="k_select"', 0);?>
                                <!-- <select name="orgProperty" id="orgProperty" >
                                    <option value="">--请选择--</option>
                                    
                                        <option value="其他">其他</option>
                                    
                                        <option value="51">企业</option>
                                    
                                        <option value="167">个体工商户</option>
                                    
                                        <option value="168">事业单位</option>
                                    
                                        <option value="169">社会团体</option>
                                    
                                        <option value="170">民办非企业</option>
                                    
                                </select> -->
                                <span class="prompt" id="dtype">* 请选择单位性质</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>联系人：
                                </label>
                                <input   class="k" type="text"  name="post[truename]" id="truename" onblur="validate('truename');" maxlength="10">
                                <span class="prompt" id="dtruename">* 请填写联系人姓名</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red"></i>固定电话：
                                </label>
                                <input  class="k" type="text"  name="post[telephone]" id="telephone" onblur="validate('telephone');"  maxlength="20">
                                <span class="prompt" id="dtelephone">* 请输入正确的座机号码，如：区号-XXXXXXXX</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red"></i>传真：
                                </label>
                                <input name="post[fax]" id="fax" class="k" type="text" onblur="checkFax()" maxlength="20">
                                <span class="prompt" id="dfax">* 请输入正确的传真号码，如：区号-XXXXXXXX</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>地区：
                                </label>
<?php echo ajax_area_select('post[areaid]', '请选择', $areaid, '', 2);?>
                                <!-- <select name="province" id="province" class="k_select">
                                    <option value="">--请选择--</option>
                                    <option value="211">甘肃省</option>
                                    
                                        <option value="3">北京市</option>
                                    
                                        <option value="5">天津市</option>
                                    
                                        <option value="6">河北省</option>
                                    
                                        <option value="7">山西省</option>
                                    
                                        <option value="8">内蒙古自治区</option>
                                    
                                        <option value="9">辽宁省</option>
                                    
                                        <option value="10">吉林省</option>
                                    
                                        <option value="11">黑龙江省</option>
                                    
                                        <option value="1017">上海市</option>
                                    
                                        <option value="1035">江苏省</option>
                                    
                                        <option value="1149">浙江省</option>
                                    
                                        <option value="1271">安徽省</option>
                                    
                                        <option value="1393">福建省</option>
                                    
                                        <option value="1488">江西省</option>
                                    
                                        <option value="1600">山东省</option>
                                    
                                        <option value="1757">河南省</option>
                                    
                                        <option value="1934">湖北省</option>
                                    
                                        <option value="2051">湖南省</option>
                                    
                                        <option value="2246">广东省</option>
                                    
                                        <option value="2389">广西壮族自治区</option>
                                    
                                        <option value="2514">海南省</option>
                                    
                                        <option value="2541">重庆市</option>
                                    
                                        <option value="2578">四川省</option>
                                    
                                        <option value="2783">贵州省</option>
                                    
                                        <option value="2881">云南省</option>
                                    
                                        <option value="3027">西藏自治区</option>
                                    
                                        <option value="4">陕西省</option>
                                    
                                        
                                    
                                </select>
                                <select name="areaCounty" id="city" class="k_select">
                                    <option value="">
                                        ---请选择---
                                    </option>
                                </select>
                                <select name="county" id="county" class="k_select">
                                    <option value="">
                                        ---请选择---
                                    </option>
                                </select> -->
                                <span class="prompt" id="dareaid">* 请选择地区</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>通讯地址：
                                </label>
                                <input name="post[address]" id="address" class="k" type="text"  maxlength="100">
                                <span class="prompt" id="daddress">* 请填写详细的街道地址，如金昌南路101号</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red"></i>邮政编码：
                                </label>
                                <input name="post[postcode]" id="postcode" class="k" type="text" onblur="checkPostCode()" maxlength="6">
                                <span class="prompt" id="dpostcode"> 请填写邮政编码</span>
                            </li>
                            <li>
                                <label>
                                    <i class="red">*</i>是否服务机构：
                                </label>
                                <input type="radio" id="isfwjg0" name="post_fields[isfwjg]" value="是">是
                                <input type="radio" id="isfwjg1" name="post_fields[isfwjg]" value="否" checked="checked">否
                            </li>
                            <!-- <li>
                                <label style="float:left;">
                                    <i class="red"></i>产业集群：
                                </label>
                                <div style="width:550px;height:60px;float:left;overflow-y:auto;background:#fff;border:1px solid #ccc;">
                                    
                                        　<input type="checkbox" name="clusters" value="4934">百度(资质)
                                </div>
                            </li> -->
                            <li>
                                <label></label>
                                <span id="msg"></span>
<input type="submit" class="reg_btn" name="submit" value="提交" onclick="return check()" >
                                <!-- <a href="javascript:void(0);" id="btn_sub" class="reg_btn">提交</a> -->
                            </li>
                        </ul>
                    </div>  
</form>
               
                <div class="reg_info_r">
                    <h2>
                        已经拥有账号？
                        <a href="/member/login.php">立即登录</a>
                    </h2>
                    <ol>
                        <li>
                            获取最新的政策及资讯
                        </li>
                        <li>
                            全站多维度搜索服务信息
                        </li>
                        <li>
                            权威专家帮您解决疑难问题
                        </li>
                        <li>
                            免费发布服务及产品、宣传企业
                        </li>
                        <li>
                            享受更多高性价比的专业服务
                        </li>
                        <li>
                            专业客服人员全天为您服务
                        </li>
                    </ol>
                </div>
            </div>

    </div>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/guest.js"></script>
<script type="text/javascript">
if(Dd('username').value == '') Dd('username').focus();
<?php if($MOD['question_register']) { ?>Dd('answer').className = 'reg_inp';<?php } ?>
<?php if($MOD['captcha_register']) { ?>Dd('captcha').className = 'reg_inp';<?php } ?>
var vid = '';
function validator(id) {
vid = id;
makeRequest('moduleid=<?php echo $moduleid;?>&action=member&job='+id+'&value='+Dd(id).value, AJPath, '_validator');
}
function _validator() {
if(xmlHttp.readyState==4 && xmlHttp.status==200) {
Dd('d'+vid).innerHTML = xmlHttp.responseText ? '<img src="<?php echo DT_SKIN;?>image/check_error.gif" align="absmiddle"/> '+xmlHttp.responseText : '<img src="<?php echo DT_SKIN;?>image/check_right.gif" align="absmiddle"/> ';
}
}
function err_msg(str, id) {
<?php if($DT_TOUCH) { ?>alert(str);<?php } ?>
Dd('d'+id).innerHTML = '<img src="<?php echo DT_SKIN;?>image/check_'+(str ? 'error' : 'right')+'.gif" align="absmiddle"/> '+str;
}
function validate(type) {
if(type == 'cpassword') {
if(Dd('cpassword').value != Dd('password').value) {
err_msg('两次输入的密码不一致', type);
} else {
err_msg('', type);
}
}
if(type == 'truename') {
if(Dd('truename').value.length < 2) {
err_msg('请输入真实姓名', type);
} else {
err_msg('', type);
}
}
if(type == 'telephone') {
if(Dd('telephone').value.match(/^[0-9\-\(\)\+\.]{7,}$/)) {
err_msg('', type);
} else {
err_msg('请输入公司电话', type);
}
}
}
function reg(type) {
if(type) {
Ds('company_detail');
} else {
Dh('company_detail');
}
}
function Df(ID) {
Dd(ID).focus();
}
function chktab1()
{
var f,p;
f = 'username';
if(Dd(f).value == '') {
err_msg('请填写会员登录名', f);
Df(f);
return false;
}
if(Dd('d'+f).innerHTML.indexOf('error') != -1) {
Df(f);
return false;
}
f = 'password';
if(Dd(f).value.length < 6) {
err_msg('请填写会员登录密码', f);
Df(f);
return false;
}
if(Dd('d'+f).innerHTML.indexOf('error') != -1) {
Df(f);
return false;
}
f = 'cpassword';
if(Dd(f).value == '') {
err_msg('请重复输入密码', f);
Df(f);
return false;
}
if(Dd('password').value != Dd(f).value) {
err_msg('两次输入的密码不一致', f);
Df(f);
return false;
}
   f = 'email';
if(Dd(f).value.length < 6) {
err_msg('请填写电子邮箱', f);
Df(f);
return false;
}
if(Dd('d'+f).innerHTML.indexOf('error') != -1) {
Df(f);
return false;
}
 f = 'mobile';
if(Dd(f).value.length < 11) {
err_msg('请填写手机号码', f);
Df(f);
return false;
} 
 Ds('tab1');
 changeStyle(2);
// changeStyle(2);
 //Dd('emal').innerHTML=Dd('email').value;
 Dh('tab0');
return true;
}
 function changeStyle(eid){
            var liAry=document.getElementById("tabs").getElementsByTagName("li");
            var liLen=liAry.length;
            var liID=eid;
            for(var i=0;i<liLen;i++)
            {
                if(liAry[i].id==liID)
                {
                    liAry[i].className="current";
                }
                else
                {
                    //liAry[i].className="";
                }
            }
 }
function step0()
{
Dh('tab1');
changeStyle2(2);
Ds('tab0');
return true;
}
function changeStyle2(eid){
            var liAry=document.getElementById("tabs").getElementsByTagName("li");
            var liLen=liAry.length;
            var liID=eid;
            for(var i=0;i<liLen;i++)
            {
                if(liAry[i].id==liID)
                {
                    liAry[i].className="";
                }
                else
                {
                    //liAry[i].className="";
                }
            }
 }
function check() {
var f,p;
f = 'company';
if(Dd(f).value == '') {
err_msg('请填写单位名称', f);
Df(f);
return false;
}
if(Dd('d'+f).innerHTML.indexOf('error') != -1) {
Df(f);
return false;
}
if(Dd('type').value == '') {
Dmsg('请选择公司性质', 'type');
return false;
}
f = 'truename';
if(Dd(f).value == '') {
err_msg('请填写联系人', f);
Df(f);
return false;
}
 
if(Dd('areaid_1').value == 0) {
Dmsg('请选择地区', 'areaid');
return false;
}
<?php if($could_emailcode) { ?>
f = 'emailcode';
if(!Dd(f).value.match(/^[0-9]{6}$/)) {
Dmsg('请填写邮件验证码', f);
return false;
}
<?php } ?>
 

f = 'address';
if(Dd(f).value.length < 7) {
err_msg('请填写通讯地址', f);
Df(f);
return false;
}
 
<?php if($MOD['question_register']) { ?>
f = 'answer';
if(Dd(f).value == '') {
Dmsg('请回答验证问题', f);
return false;
}
<?php } ?>
<?php if($MOD['captcha_register']) { ?>
f = 'captcha';
if(!is_captcha(Dd(f).value)) {
Dmsg('请填写验证码', f);
return false;
}
<?php } ?>
return true;
}
function SendCode() {
if(Dd('demail').innerHTML.indexOf('right') == -1) {
Dd('email').focus();
return;
}
makeRequest('action=<?php echo $action_sendcode;?>&value='+Dd('email').value, '<?php echo $DT['file_register'];?>', '_SendCode');
Dh('sendok');
Dd('send_code').value = '正在发送';
Dd('send_code').disabled = true;
}
function _SendCode() {
var f = 'email';
if(xmlHttp.readyState==4 && xmlHttp.status==200) {
Dd('send_code').value = xmlHttp.responseText == 1 ? '发送成功' : '立即发送';
Dd('send_code').disabled = xmlHttp.responseText == 1 ? true : false;
if(xmlHttp.responseText == 1) {
Ds('sendok');
Dd('dsendok').innerHTML = '<img src="<?php echo DT_STATIC;?><?php echo $MODULE['2']['moduledir'];?>/image/ico_mailok.gif" align="absmiddle"/> <span class="f_green">邮件发送成功，</span> <a href="goto.php?action=emailcode&email='+Dd(f).value+'" target="_blank">立即查收</a>';
StopCode();
} else if(xmlHttp.responseText == 2) {
err_msg('邮件格式错误，请检查', f);
Df(f);
} else if(xmlHttp.responseText == 3) {
err_msg('邮件地址已存在，请更换', f);
Df(f);
} else if(xmlHttp.responseText == 4) {
err_msg('此邮件域名已经被禁止注册，请更换', f);
Df(f);
} else if(xmlHttp.responseText == 5) {
alert('邮件发送过快，请稍后再试');
} else if(xmlHttp.responseText == 6) {
alert('尝试发送次数太多，请稍后再试');
} else {
alert('未知错误，请重试');
}
}
}
function StopCode() {
Dd('send_code').disabled = true;
var i = 60;
var interval=window.setInterval(
function() {
if(i == 0) {
Dd('send_code').value = '立即发送';
Dd('send_code').disabled = false;
clearInterval(interval);
} else {
Dd('send_code').value = '重新发送('+i+')';
i--;
}
},
1000);
}
function SendSCode() {
if(Dd('dmobile').innerHTML.indexOf('right') == -1) {
Dd('mobile').focus();
return;
}
makeRequest('action=<?php echo $action_sendscode;?>&value='+Dd('mobile').value, '<?php echo $DT['file_register'];?>', '_SendSCode');
Dh('sendsok');
Dd('send_scode').value = '正在发送';
Dd('send_scode').disabled = true;
}
function _SendSCode() {
var f = 'mobile';
if(xmlHttp.readyState==4 && xmlHttp.status==200) {
Dd('send_scode').value = xmlHttp.responseText == 1 ? '发送成功' : '立即发送';
Dd('send_scode').disabled = xmlHttp.responseText == 1 ? true : false;
if(xmlHttp.responseText == 1) {
Ds('sendsok');
Dd('dsendsok').innerHTML = '<img src="<?php echo DT_STATIC;?><?php echo $MODULE['2']['moduledir'];?>/image/ico_mailok.gif" align="absmiddle"/> <span class="f_green">短信发送成功</span>';
StopSCode();
} else if(xmlHttp.responseText == 2) {
err_msg('手机号码格式错误，请检查', f);
Df(f);
} else if(xmlHttp.responseText == 3) {
err_msg('手机号码已存在，请更换', f);
Df(f);
} else if(xmlHttp.responseText == 5) {
alert('短信发送过快，请稍后再试');
} else if(xmlHttp.responseText == 6) {
alert('尝试发送次数太多，请稍后再试');
} else {
alert('未知错误，请重试');
}
}
}
function StopSCode() {
Dd('send_scode').disabled = true;
var i = 180;
var interval=window.setInterval(
function() {
if(i == 0) {
Dd('send_scode').value = '立即发送';
Dd('send_scode').disabled = false;
clearInterval(interval);
} else {
Dd('send_scode').value = '重新发送('+i+')';
i--;
}
},
1000);
}
</script>
<?php include template('footer');?>