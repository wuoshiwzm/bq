<?php defined('IN_DESTOON') or exit('Access Denied');?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if($seo_title) { ?><?php echo $seo_title;?><?php } else { ?><?php if($head_title) { ?><?php echo $head_title;?><?php echo $DT['seo_delimiter'];?><?php } ?>
<?php if($city_sitename) { ?><?php echo $city_sitename;?><?php } else { ?><?php echo $DT['sitename'];?><?php } ?>
<?php } ?>
</title>
<?php if($head_keywords) { ?>
<meta name="keywords" content="<?php echo $head_keywords;?>"/>
<?php } ?>
<?php if($head_description) { ?>
<meta name="description" content="<?php echo $head_description;?>"/>
<?php } ?>
<link rel="stylesheet" media="screen" href="<?php echo DT_STATIC;?>file/css/style.css" />
<link rel="stylesheet" media="screen" href="<?php echo DT_STATIC;?>file/css/jquery.jslides.css" />
<link rel="stylesheet" media="screen" href="<?php echo DT_SKIN;?>style.css" />
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/jquery.jslides.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/link.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/script.js"></script>
<?php if(!DT_DEBUG) { ?><script type="text/javascript">window.onerror=function(){return true;}</script><?php } ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>lang/<?php echo DT_LANG;?>/lang.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/config.js"></script>
<!-- <script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery.js"></script> -->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/common.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/page.js"></script>
<?php if($lazy) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery.lazyload.js"></script><?php } ?>
<?php if($JS) { ?>
<?php if(is_array($JS)) { foreach($JS as $js) { ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/<?php echo $js;?>.js"></script>
<?php } } ?>
<?php } ?>
<?php $searchid = ($moduleid > 3 && $MODULE[$moduleid]['ismenu'] && !$MODULE[$moduleid]['islink']) ? $moduleid : 5;?>
<script type="text/javascript">
<?php if($head_mobile && $EXT['mobile_goto']) { ?>
GoMobile('<?php echo $head_mobile;?>');
<?php } ?>
var searchid = <?php echo $searchid;?>;
<?php if($itemid && $DT['anticopy']) { ?>
document.oncontextmenu=function(e){return false;};
document.onselectstart=function(e){return false;};
<?php } ?>
</script>
</head>
<body onload="time()">
<div class="top">
<div class="wrappersy">
    <div class="logo">
        <a href=""><img src="<?php echo DT_STATIC;?>file/images/logo.jpg" /></a>
    </div>
    <div class="top_right">
        <div class="rig_top">
             <div class="city"><?php if($_userid) { ?><?php echo $_username;?> <a href="/member/logout.php">安全退出</a><?php } ?>
 <?php echo $city_name;?> <span><a href="<?php echo DT_PATH;?>api/city.php" style="color:#fff;">[ 切换城市：全国]</a></span></div>
            <div class="welocome">欢迎光临西安步旗广告传播有限公司网络平台!</div>
            <div class="data">
                <span id="info1">
</span><script language="javascript" type="text/javascript">
//js获取日期
function time()
{
  var now= new Date();
  var year=now.getFullYear();
  var month=now.getMonth();
  var date=now.getDate();
//写入相应id
 document.getElementById("info1").innerHTML="今天是："+year+"年"+(month+1)+"月"+date+"日";
} 
</script>
                <iframe width="450" scrolling="no" height="18" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=1&color=%23FFFFFF&icon=1&py=xian&wind=1&num=2"></iframe>
            </div>
        </div>
    <?php include template('nav');?>
<form id="destoon_search" action="/api/search.php" onsubmit="return Dsearch(1);">
    <div class="search">

<input type="hidden" name="moduleid" value="<?php echo $searchid;?>" id="kw_moduleid"/>
<input type="hidden" name="spread" value="0" id="destoon_spread"/>
 
        <input type="text" class="sousuo" name="kw" value="<?php if($kw) { ?><?php echo $kw;?><?php } else { ?>请输入关键词<?php } ?>
" onfocus="if(this.value=='请输入关键词') this.value='';"<?php if($DT['search_tips']) { ?> onkeyup="STip(this.value);" autocomplete="off"<?php } ?>
 x-webkit-speech speech>
        <div>
            <select id="" class="hangye" onchange="setModule1(this.value,'this')">
 
                <option value="5" selected >广告媒体</option>
 <option value="5" >行业搜索</option>
            </select>
        </div>
        <input type="submit" value=""   class="btn">

<script>
function setModule1(i, o) {
Dd('kw_moduleid').value = i;
searchid = i;
var lis = Dd('kw_module').getElementsByTagName('li');
for(var i=0;i<lis.length;i++) {
lis[i].className = lis[i] == o ? 'current' : '';
}
}
</script>
    </div>
    <div class="quyu">
       <select id="areaid" name="areaid" class="quyua">
   <?php $ares=get_mainarea(0);?>
   
            <option value="0">区域</option>
<?php if(is_array($ares)) { foreach($ares as $v) { ?>
            <option value="<?php echo $v['areaid'];?>"><?php echo $v['areaname'];?></option>
<?php } } ?>
        </select>
        <select id="yue" name="yue" class="quyua">
            <option value="-1">档期</option>
<?php for($i=1;$i<13;$i++){ $j = $i<10 ? '0'.$i : $i;?>
            <option value="<?php echo $j;?>" <?php if($j==date('m') || $j==$yue) { ?> selected<?php } ?>
><?php echo $j;?>月</option>
<?php } ?>
 <!-- <option value="3" <?php if($day==3) { ?>selected<?php } ?>
>3天内</option>
 <option value="7" <?php if($day==7) { ?>selected<?php } ?>
>7天内</option>
 <option value="15" <?php if($day==15) { ?>selected<?php } ?>
>15天内</option>
 <option value="30" <?php if($day==30) { ?>selected<?php } ?>
>30天内</option> -->
        </select>
        <!--<select id="" class="quyua">位置
            <option value="-1">位置</option>
            <option value="">地区搜索</option>
        </select>   -->
    </div>
</form>
</div>
</div>
</div>
<div class="banner">
     <div id="full-screen-slidera">
        <ul id="slidesa">
            <li style="background:url('<?php echo DT_STATIC;?>file/images/banner.jpg') no-repeat center top"><a href="#"></a></li>
            <li style="background:url('<?php echo DT_STATIC;?>file/images/banner1.jpg') no-repeat center top"><a href="#"></a></li>
            <li style="background:url('<?php echo DT_STATIC;?>file/images/banner3.jpg') no-repeat center top"><a href="#"></a></li>
            <li style="background:url('<?php echo DT_STATIC;?>file/images/banner4.jpg') no-repeat center top"><a href="#"></a></li>
            <li style="background:url('<?php echo DT_STATIC;?>file/images/banner5.jpg') no-repeat center top"><a href="#"></a></li>
        </ul>
     </div>
</div>
<div class="box1">
        <div class="box1_m">
            <div class="box1_left">
                <ul>
<?php $ctags=tag("moduleid=4&condition=groupid>5&areaid=$cityid&pagesize=8&order=userid desc&template=null");?>
<?php if(is_array($ctags)) { foreach($ctags as $v) { ?>
                    <li> <a href="<?php echo $v['linkurl'];?>">欢迎<?php echo $v['company'];?>入驻本平台</a> </li>
                    <?php } } ?>
                    <!-- <li> <a href="">欢迎陕西正觉电子公司入驻本平台</a></li>
                    <li> <a href="">欢迎步旗广告文化传播公司入驻本平台</a></li>
                    <li> <a href="">欢迎陕西正觉电子公司入</a></li>
                    <li> <a href="">欢迎步旗广告文化传播公司入驻本平台</a> </li>
                    <li> <a href="">欢迎陕西正觉电子公司入驻本平台</a></li>
                    <li> <a href="">欢迎步旗广告文化传播公司入驻本平台</a></li>
                    <li> <a href="">欢迎陕西正觉电子公司入</a></li> -->
                </ul>
            </div>
            <div class="box1_midden">
                    <div id="slide-holder">
                        <div id="slide-runner">
                            <a href="#" target="_blank"><img id="slide-img-1" src="<?php echo DT_STATIC;?>file/images/middenBanner1.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-2" src="<?php echo DT_STATIC;?>file/images/a2.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-3" src="<?php echo DT_STATIC;?>file/images/a3.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-4" src="<?php echo DT_STATIC;?>file/images/a4.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-5" src="<?php echo DT_STATIC;?>file/images/a5.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-6" src="<?php echo DT_STATIC;?>file/images/a6.jpg" class="slide" alt="" /></a>
                            <a href="#" target="_blank"><img id="slide-img-7" src="<?php echo DT_STATIC;?>file/images/a4.jpg" class="slide" alt="" /></a> 
                            <div id="slide-controls">
                                <p id="slide-client" class="text"><strong></strong><span></span></p>
                                <p id="slide-desc" class="text"></p>
                                <p id="slide-nav"></p>
                            </div>
                        </div>
                    </div>
                        <script type="text/javascript">
                            if(!window.slider) {
                                var slider={};
                            }   
                            slider.data= [
                                {
                                    "id":"slide-img-1", // 与slide-runner中的img标签id对应
                                    "client":"",
                                     "desc":"" //这里修改描述
                                },
                                {
                                     "id":"slide-img-2",
                                     "client":"",
                                        "desc":""
                                },
                                {
                                     "id":"slide-img-3",
                                     "client":"",
                                            "desc":""
                                },
                                {
                                     "id":"slide-img-4",
                                    "client":"",
                                    "desc":""
                                },
                                {
                                     "id":"slide-img-5",
                                     "client":"",
                                    "desc":""
                                },
                                {
                                     "id":"slide-img-6",
                                        "client":"",
                                     "desc":""
                                },
                                {
                                     "id":"slide-img-7",
                                      "client":"",
                                        "desc":""
                                }
                            ];
                        </script>
        </div>
        <div class="box1_right">
            <div class="TabTitle">
                <ul>
                    <li class="hover" id="gsjj1" onMouseover="setTab('gsjj',1,2)"><a href="#">会员登录</a></li>
                    <li class="" id="gsjj2" onMouseover="setTab('gsjj',2,2)"><a href="#">企业登录</a></li> <!-- -->
                </ul>
                <div class="clear"></div>
            </div>
            <div class="Tabbottom">
                <div id="con_gsjj_1" class="display" style="display: block;"> 
                    <!--<p class="we_name">
                        欢迎回来,<a href="">李航 </a>！<span class="tuichu">[退出]</span>
                    </p>
                    <p class="we_name awe">
                    <span class="toudi">投递反馈(0)<br>消息中心(3/5)</span>
                    <span>信息管理<br>信息管理<br>信息管理</span>
                    </p>
                    <input type="button" class="denglu" value="进入个人中心"> -->
<?php if(!$_userid) { ?>
<form id="frm2" method="post" action="/member/login.php" onsubmit="return Dcheck();">
<input type="hidden" name="submit" value='1' />
<input type="hidden" name="groupid" value=5 />
                    <input type="text" name="username" class="input_aa" id="username" placeholder="邮箱">
                    <input type="password" class="input_aa" name="password" id="password" placeholder="密码" autocomplete="off">
                    <p class="pp"><input type="checkbox" class="dan" name="cookietime" value="1" id="cookietime"<?php if($MOD['login_remember']) { ?> checked<?php } ?>
> <span> 下次自动登录</span>
                    <a href="/member/send.php">忘记密码?</a></p>
                    <input type="submit" class="denglu" value="确认登录"> 
                     <p class="zhu">还没有个人账号？ <a href="/member/register.php?gid=5">立即注册</a></p>
                    <p class="p_img"> 
                        <a href="<?php echo DT_PATH;?>api/oauth/qq/connect.php" ><img src="<?php echo DT_STATIC;?>file/images/qq.jpg"/></a>
                        <a href="<?php echo DT_PATH;?>api/oauth/weixin/connect.php"><img src="<?php echo DT_STATIC;?>file/images/weixin11.jpg"/></a>
                        <a href="<?php echo DT_PATH;?>api/oauth/sina/connect.php"><img src="<?php echo DT_STATIC;?>file/images/weibo.jpg"/></a>
                    </p>
</form>
<script type="text/javascript">
if(Dd('username').value == '') {
Dd('username').focus();
} else {
Dd('password').focus();
}
function Dcheck() {
if(Dd('username').value == '') {
confirm('请输入登录名称');
Dd('username').focus();
return false;
}
if(Dd('password').value == '') {
confirm('请输入密码');
Dd('password').focus();
return false;
}
<?php if($MOD['captcha_login']) { ?>
if(!is_captcha(Dd('captcha').value)) {
confirm('请填写验证码');
Dd('captcha').focus();
return false;
}
<?php } ?>
return true;
}
</script>
<script type="text/javascript">  
//判断浏览器是否支持 placeholder属性  
function isPlaceholder(){  
    var input = document.createElement('input');  
    return 'placeholder' in input;  
}  
  
if (!isPlaceholder()) {//不支持placeholder 用jquery来完成  
    $(document).ready(function() {  
        if(!isPlaceholder()){  
            $("input").not("input[type='password']").each(//把input绑定事件 排除password框  
                function(){  
                    if($(this).val()=="" && $(this).attr("placeholder")!=""){  
                        $(this).val($(this).attr("placeholder"));  
                        $(this).focus(function(){  
                            if($(this).val()==$(this).attr("placeholder")) $(this).val("");  
                        });  
                        $(this).blur(function(){  
                            if($(this).val()=="") $(this).val($(this).attr("placeholder"));  
                        });  
                    }  
            });  
            //对password框的特殊处理1.创建一个text框 2获取焦点和失去焦点的时候切换  
            var pwdField    = $("input[type=password]");  
            var pwdVal      = pwdField.attr('placeholder');  
            pwdField.after('<input id="pwdPlaceholder" type="text" value='+pwdVal+' autocomplete="off" />');  
            var pwdPlaceholder = $('#pwdPlaceholder');  
            pwdPlaceholder.show();  
            pwdField.hide();  
              
            pwdPlaceholder.focus(function(){  
                pwdPlaceholder.hide();  
                pwdField.show();  
                pwdField.focus();  
            });  
              
            pwdField.blur(function(){  
                if(pwdField.val() == '') {  
                    pwdPlaceholder.show();  
                    pwdField.hide();  
                }  
            });  
              
        }  
    });  
      
}  
</script>  
<?php } else { ?>
<p class="we_name">
                        欢迎回来, <?php echo $_username;?>  ！<span class="tuichu"><a href="/member/logout.php">[退出]</a></span>
                    </p>
                    <p class="we_name awe">
                    <!-- <span class="toudi">投递反馈(0)<br>消息中心(3/5)</span> -->
                    <!-- <span><a href="/zhaobiao/fbzb.php">招标信息</a><br><a href="/zhongbiao/zbfb.php">中标信息</a></span> -->
<a href="/member/?mid=2" class="denglu" >会员中心</a>
                    </p>
<?php } ?>
                     </div> 
                     <div id="con_gsjj_2" class="hidden" style="display: none;">
                          <?php if(!$_userid) { ?>
<form id="frm2" method="post" action="/member/login.php" onsubmit="return Dcheck();">
<input type="hidden" name="submit" value='1' />
<input type="hidden" name="groupid" value=5 />
                    <input type="text" name="username" class="input_aa" id="username" placeholder="邮箱">
                    <input type="password" class="input_aa" name="password" id="password" placeholder="密码" autocomplete="off">
                    <p class="pp"><input type="checkbox" class="dan" name="cookietime" value="1" id="cookietime"<?php if($MOD['login_remember']) { ?> checked<?php } ?>
> <span> 下次自动登录</span>
                    <a href="/member/send.php">忘记密码?</a></p>
                    <input type="submit" class="denglu" value="确认登录"> 
                     <p class="zhu">还没有企业账号？ <a href="/member/register.php?gid=6">立即注册</a></p>
                    <p class="p_img"> 
                        <a href="<?php echo DT_PATH;?>api/oauth/qq/connect.php" ><img src="<?php echo DT_STATIC;?>file/images/qq.jpg"/></a>
                        <a href="<?php echo DT_PATH;?>api/oauth/weixin/connect.php"><img src="<?php echo DT_STATIC;?>file/images/weixin11.jpg"/></a>
                        <a href="<?php echo DT_PATH;?>api/oauth/sina/connect.php"><img src="<?php echo DT_STATIC;?>file/images/weibo.jpg"/></a>
                    </p>
</form>
<script type="text/javascript">
if(Dd('username').value == '') {
Dd('username').focus();
} else {
Dd('password').focus();
}
function Dcheck() {
if(Dd('username').value == '') {
confirm('请输入登录名称');
Dd('username').focus();
return false;
}
if(Dd('password').value == '') {
confirm('请输入密码');
Dd('password').focus();
return false;
}
<?php if($MOD['captcha_login']) { ?>
if(!is_captcha(Dd('captcha').value)) {
confirm('请填写验证码');
Dd('captcha').focus();
return false;
}
<?php } ?>
return true;
}
</script>
<script type="text/javascript">  
//判断浏览器是否支持 placeholder属性  
function isPlaceholder(){  
    var input = document.createElement('input');  
    return 'placeholder' in input;  
}  
  
if (!isPlaceholder()) {//不支持placeholder 用jquery来完成  
    $(document).ready(function() {  
        if(!isPlaceholder()){  
            $("input").not("input[type='password']").each(//把input绑定事件 排除password框  
                function(){  
                    if($(this).val()=="" && $(this).attr("placeholder")!=""){  
                        $(this).val($(this).attr("placeholder"));  
                        $(this).focus(function(){  
                            if($(this).val()==$(this).attr("placeholder")) $(this).val("");  
                        });  
                        $(this).blur(function(){  
                            if($(this).val()=="") $(this).val($(this).attr("placeholder"));  
                        });  
                    }  
            });  
            //对password框的特殊处理1.创建一个text框 2获取焦点和失去焦点的时候切换  
            var pwdField    = $("input[type=password]");  
            var pwdVal      = pwdField.attr('placeholder');  
            pwdField.after('<input id="pwdPlaceholder" type="text" value='+pwdVal+' autocomplete="off" />');  
            var pwdPlaceholder = $('#pwdPlaceholder');  
            pwdPlaceholder.show();  
            pwdField.hide();  
              
            pwdPlaceholder.focus(function(){  
                pwdPlaceholder.hide();  
                pwdField.show();  
                pwdField.focus();  
            });  
              
            pwdField.blur(function(){  
                if(pwdField.val() == '') {  
                    pwdPlaceholder.show();  
                    pwdField.hide();  
                }  
            });  
              
        }  
    });  
      
}  
</script>  
<?php } else { ?>
<p class="we_name">
                        欢迎回来, <?php echo $_username;?>  ！<span class="tuichu"><a href="/member/logout.php">[退出]</a></span>
                    </p>
                    <p class="we_name awe">
                    <!-- <span class="toudi">投递反馈(0)<br>消息中心(3/5)</span> -->
                    <!-- <span><a href="/zhaobiao/fbzb.php">招标信息</a><br><a href="/zhongbiao/zbfb.php">中标信息</a></span> -->
<a href="/member/?mid=2" class="denglu" >会员中心</a>
                    </p>
<?php } ?>
                     </div>
                </div>
            </div>
        </div>
</div>
<div class="box_2">
        <div class="title_box_2"></div>
        <div class="piczs">
            <div class="rollBoxa">
                <div class="Cont">
                    <div class="ScrCont">
                            <div>
                                    <ul>
<?php $maclids=get_maincat(3,4,1);?>
                                        <?php if(is_array($maclids)) { foreach($maclids as $i => $c) { ?>
<?php if($i<6) { ?>
<li>
                                           <a href="<?php echo cat_url($c['catid']);?>"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa"><?php echo $c['catname'];?></p>
                                             <p class="topbb"><?php echo strtoupper($c['catdir']);?></p>
                                        </li>
<?php } ?>
<?php } } ?>
                                         <!-- <li>
                                           <a href="#"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa">广播广告</p>
                                             <p class="topbb">DIANSHIGUANGGAO</p>
                                        </li>
                                         <li>
                                           <a href="#"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa">电视广告</p>
                                             <p class="topbb">DIANSHIGUANGGAO</p>
                                        </li>
                                         <li>
                                           <a href="#"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa">广播广告</p>
                                             <p class="topbb">DIANSHIGUANGGAO</p>
                                        </li>
                                         <li>
                                           <a href="#"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa">电视广告</p>
                                             <p class="topbb">DIANSHIGUANGGAO</p>
                                        </li>
                                         <li>
                                           <a href="#"><img src="<?php echo DT_STATIC;?>file/images/m8.png"></a>
                                             <p class="topaa">广播广告</p>
                                             <p class="topbb">DIANSHIGUANGGAO</p>
                                        </li> -->
                                    </ul>
                            </div>
                                <div class="clear"></div>
                         </div>
                     <div class="clear"></div>
            </div>
      </div>
      <div class="clear"></div>
</div>
</div>
<div class="box3">
    <div class="box3_title">
        <div class="title_left"><a href="">精品推荐<span>/</span></a><span class="small">JINGPINTUIJIAN</span></div>
        <div class="title_right">
             <ul>
                  <li class="hover" id="tuijian1" onMouseover="setTab('tuijian',1,4)"><a href="#">打折优惠</a></li>
                   <li class="" id="tuijian2" onMouseover="setTab('tuijian',2,4)"><a href="#">空挡出售</a></li>
                   <li class="" id="tuijian3" onMouseover="setTab('tuijian',3,4)"><a href="#">节点推荐</a></li>
                   <li class="" id="tuijian4" onMouseover="setTab('tuijian',4,4)"><a href="#">新媒体</a></li>
                   <a href=""><img src="<?php echo DT_STATIC;?>file/images/more.jpg" alt="" /></a>
            </ul>
        </div>
    </div>
    <div class="box3_cone">
        <div id="con_tuijian_1" class="display" style="display: block;"> 
                <div class="rollBox mt20">
                        <div class="LeftBotton" onmousedown="ISL_GoUp()" onmouseup="ISL_StopUp()" onmouseout="ISL_StopUp()"></div>
                        <div class="RightBotton" onmousedown="ISL_GoDown()" onmouseup="ISL_StopDown()" onmouseout="ISL_StopDown()"></div>
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
<?php $ptags=tag("moduleid=4&condition=vip>0 and level=4&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                       
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_tuijian_2" class="hidden" style="display: none;"> 
             <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Conta">
                            <div class="ScrCont">
                                <div id="List1a">
                                    <ul>
                                     <?php $ptags=tag("moduleid=4&condition=vip>0 and level=3&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                       
                                    </ul>
                                </div>
                                <div id="List2a"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_tuijian_3" class="hidden" style="display: none;"> 
              <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
                                      <?php $ptags=tag("moduleid=4&condition=vip>0 and level=2&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                       
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_tuijian_4" class="hidden" style="display: none;">
              <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
                                      <?php $ptags=tag("moduleid=4&condition=vip>0 and level=1&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                       
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
    </div>
</div>
<div class="guanggaowei">
     <a href=""><img src="<?php echo DT_STATIC;?>file/images/guanggao.jpg" alt="" /></a>   
</div>
<div class="box3">
    <div class="box3_title">
        <div class="title_left"><a href="<?php echo cat_url(111);?>">策划咨询<span>/</span></a><span class="small">CEHUAZIXUN</span></div>
        <div class="title_right">
             <ul>
                  <li class="hover" id="cehua1" onMouseover="setTab('cehua',1,4)"><a href="#">打折优惠</a></li>
                   <li class="" id="cehua2" onMouseover="setTab('cehua',2,4)"><a href="#">空挡出售</a></li>
                   <li class="" id="cehua3" onMouseover="setTab('cehua',3,4)"><a href="#">节点推荐</a></li>
                   <li class="" id="cehua4" onMouseover="setTab('cehua',4,4)"><a href="#">新媒体</a></li>
                   <a href="<?php echo cat_url(3);?>"><img src="<?php echo DT_STATIC;?>file/images/more.jpg" alt="" /></a>
            </ul>
        </div>
    </div>
    <div class="box3_cone">
        <div id="con_cehua_1" class="display" style="display: block;"> 
                  <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
                                         <?php $ptags=tag("moduleid=4&condition=level=4&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_cehua_2" class="hidden" style="display: none;"> 
                  <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
    <?php $ptags=tag("moduleid=4&condition=level=3&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                       
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_cehua_3" class="hidden" style="display: none;"> 
              <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
                                           <?php $ptags=tag("moduleid=4&condition=level=2&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
        <div id="con_cehua_4" class="hidden" style="display: none;">
              <div class="rollBox mt20">
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <ul>
                                        <?php $ptags=tag("moduleid=4&condition=level=1&areaid=$cityid&pagesize=20&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
                                        <li>
                                            <a href="<?php echo $v['linkurl'];?>"><img src="<?php echo imgurl($v['thumb']);?>" /></a>
                                            <div class="bto-gu">
                                                <h1><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></h1>
                                                <p><a href="<?php echo $v['linkurl'];?>"><?php echo dsubstr($v['introduce'],30);?></a></p>
                                                <a href="<?php echo $v['linkurl'];?>"><span>MORE</span></a>
                                            </div>
                                        </li>
<?php } } ?>
                                    </ul>
                                </div>
                                <div id="List2"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                         <script type="text/javascript" src="<?php echo DT_STATIC;?>file/js/honor.js"></script>
                        <div class="clear"></div>
                </div>
        </div>
    </div>
</div>
<div class="gszs">
    <div class="img_pa">
 <?php $ptags=tag("moduleid=4&condition=level>1&areaid=$cityid&pagesize=14&order=userid desc&template=null");?>
<?php if(is_array($ptags)) { foreach($ptags as $v) { ?>
<a href="<?php echo $v['linkurl'];?>">
        <img src="<?php echo imgurl($v['thumb']);?>" alt="" />
</a>
<?php } } ?>
        <!-- <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" />
        <img src="<?php echo DT_STATIC;?>file/images/aca.jpg" alt="" /> -->
    </div>
    <div class="clear"></div>
    <div class="more_box3">
    <a href=""><p>MORE</p></a>
    </div>
</div>
<div class="box4">
<div class="box4_left">
    <div class="box_Title">
      <ul>
        <li class="hover" id="lef1" onMouseover="setTab('lef',1,4)"><a href="<?php echo cat_url(204);?>">招商信息</a></li>
        <li class="" id="lef2" onMouseover="setTab('lef',2,4)"><a href="<?php echo $MODULE['26']['linkurl'];?>">招标信息</a></li>
        <li class="" id="lef3" onMouseover="setTab('lef',3,4)"><a href="<?php echo $MODULE['21']['linkurl'];?>">新闻资讯</a></li>
            </ul>
            <div class="clear"></div>
         </div>
         <div id="con_lef_1" class="display" style="display: block;">
              <div class="con_box4">
  <?php $ntags=tag("moduleid=22&condition=status=3 and level=1 and thumb<>''&areaid=$cityid&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
           <div class="con_left">
         <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo $t['thumb'];?>" /></a>
                <a href="<?php echo $t['linkurl'];?>"><h1><?php echo dsubstr($t['title'],16);?>...</h1></a>
                <p><?php echo dsubstr($t['introduce'],40);?>...<span><a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span></p>
           </div>
  <?php } } ?>
                 <div class="con_right">
 <?php $ntags=tag("moduleid=22&condition=status=3&areaid=$cityid&pagesize=4&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $k => $t) { ?>
            <div class="li_con">
                <span class="span_num">0<?php echo $k+1;?></span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                    <p class="li_title"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['title'],28);?>...</a><span><?php echo timetodate($t['addtime'],3);?></span></p>
                        <p class="li_jianjie"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['introduce'],40);?>...</a></p>
                    </div>
                </div>
<?php } } ?>
                <!-- <div class="li_con">
                    <span class="span_num">02</span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                        <p class="li_title"><a href="">全球最大广告公司的当家人...</a><span>2016-05-04</span></p>
                        <p class="li_jianjie"><a href="">来到中国近十年,全球知名的独...</a></p>
                    </div>
                </div>
                <div class="li_con">
                    <span class="span_num">03</span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                        <p class="li_title"><a href="">全球最大广告公司的当家人...</a><span>2016-05-04</span></p>
                        <p class="li_jianjie"><a href="">来到中国近十年,全球知名的独...</a></p>
                    </div>
                </div>
                <div class="li_con">
                    <span class="span_num">04</span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                        <p class="li_title"><a href="">全球最大广告公司的当家人...</a><span>2016-05-04</span></p>
                        <p class="li_jianjie"><a href="">来到中国近十年,全球知名的独...</a></p>
                    </div>
                </div> -->
                </div>
              </div>
        </div>
         <div id="con_lef_2" class="hidden" style="display: none;">
              <div class="con_box4">
            <?php $ntags=tag("moduleid=26&condition=status=3 and level>0&areaid=$cityid&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
           <div class="con_left">
         <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo imgurl($t['thumb']);?>" /></a>
                <a href="<?php echo $t['linkurl'];?>"><h1><?php echo dsubstr($t['title'],16);?>...</h1></a>
                <p><?php echo dsubstr($t['introduce'],40);?>...<span><a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span></p>
           </div>
  <?php } } ?>
                 <div class="con_right">
            <?php $ntags=tag("moduleid=26&condition=status=3&areaid=$cityid&pagesize=4&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $k => $t) { ?>
            <div class="li_con">
                <span class="span_num">0<?php echo $k+1;?></span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                    <p class="li_title"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['title'],28);?>...</a><span><?php echo timetodate($t['addtime'],3);?></span></p>
                        <p class="li_jianjie"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['introduce'],40);?>...</a></p>
                    </div>
                </div>
<?php } } ?>
                </div>
              </div>
        </div>
         <div id="con_lef_3" class="hidden" style="display: none;">
              <div class="con_box4">
            <?php $ntags=tag("moduleid=21&condition=status=3 and level>0 and thumb<>''&areaid=$cityid&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
           <div class="con_left">
         <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo $t['thumb'];?>" /></a>
                <a href="<?php echo $t['linkurl'];?>"><h1><?php echo dsubstr($t['title'],16);?>...</h1></a>
                <p><?php echo dsubstr($t['introduce'],40);?>...<span><a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span></p>
           </div>
  <?php } } ?>
                 <div class="con_right">
            <?php $ntags=tag("moduleid=21&condition=status=3&areaid=$cityid&pagesize=4&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $k => $t) { ?>
            <div class="li_con">
                <span class="span_num">0<?php echo $k+1;?></span>
                    <div class="squ"></div>
                    <div class="li_conrg">
                    <p class="li_title"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['title'],28);?>...</a><span><?php echo timetodate($t['addtime'],3);?></span></p>
                        <p class="li_jianjie"><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['introduce'],40);?>...</a></p>
                    </div>
                </div>
<?php } } ?>
                </div>
              </div>
        </div>
    </div>
    <div class="box4_right">
        <div class="box_Title">
                <li class="hover" id="lefa1" onMouseover="setTab('lefa',1,3)"><a href="<?php echo $MODULE['6']['linkurl'];?>">求购信息</a></li>
                <li class="" id="lefa2" onMouseover="setTab('lefa',2,3)"><a href="<?php echo cat_url(209);?>">晒单信息</a></li>
                <li class="" id="lefa3" onMouseover="setTab('lefa',3,3)"><a href="<?php echo cat_url(210);?>">出售资讯</a></li>
            </ul>
            <div class="clear"></div>
         </div>
         <div id="con_lefa_1" class="display" style="display: block;">
 <?php $ntags=tag("moduleid=6&length=20&condition=status=3 and level>0 and thumb<>''&areaid=$cityid&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
             <div class="conr_top">
                 <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo imgurl($t['thumb']);?>" /></a>
                 <p class="paa">
                     <span class="topic"><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?>...</a></span><br />
                     <span class="miaoshu"><?php echo dsubstr($t['introduce'],60);?>...<a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span>
                 </p>
                 <p class="data_right">
 <?php $date=timetodate($t['addtime'],2);$years = explode("-" ,$date);?>
 <?php $year=substr($years['0'],2,2)?>
                     <span class="da_big"><?php echo $year;?></span><br/>
                     <span><?php echo timetodate($t['addtime'],2);?></span>
                 </p>
             </div>
 <?php } } ?>
             <ul class="lii">
 <?php $ntags=tag("moduleid=6&length=30&condition=status=3&areaid=$cityid&pagesize=5&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
                 <li><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?><span><?php echo timetodate($t['addtime'],3);?></span></a></li>
 <?php } } ?>
                 
             </ul>
         </div>
         <div id="con_lefa_2" class="hidden" style="display: none;">
           <?php $ntags=tag("moduleid=21&length=20&condition=status=3 and level>0 and thumb<>''&areaid=$cityid&catid=209&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
             <div class="conr_top">
                 <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo imgurl($t['thumb']);?>" /></a>
                 <p class="paa">
                     <span class="topic"><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?>...</a></span><br />
                     <span class="miaoshu"><?php echo dsubstr($t['introduce'],60);?>...<a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span>
                 </p>
                 <p class="data_right">
 <?php $date=timetodate($t['addtime'],2);$years = explode("-" ,$date);?>
 <?php $year=substr($years['0'],2,2)?>
                     <span class="da_big"><?php echo $year;?></span><br/>
                     <span><?php echo timetodate($t['addtime'],2);?></span>
                 </p>
             </div>
 <?php } } ?>
             <ul class="lii">
                 <?php $ntags=tag("moduleid=21&length=30&condition=status=3&catid=209&areaid=$cityid&pagesize=5&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
                 <li><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?><span><?php echo timetodate($t['addtime'],3);?></span></a></li>
 <?php } } ?>
             </ul>
         </div>
         <div id="con_lefa_3" class="hidden" style="display: none;">
            <?php $ntags=tag("moduleid=21&length=20&condition=status=3 and thumb<>''&catid=210&areaid=$cityid&pagesize=1&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
             <div class="conr_top">
                 <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo imgurl($t['thumb']);?>" /></a>
                 <p class="paa">
                     <span class="topic"><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?>...</a></span><br />
                     <span class="miaoshu"><?php echo dsubstr($t['introduce'],60);?>...<a href="<?php echo $t['linkurl'];?>" class="red">[详情]</a></span>
                 </p>
                 <p class="data_right">
 <?php $date=timetodate($t['addtime'],2);$years = explode("-" ,$date);?>
 <?php $year=substr($years['0'],2,2)?>
                     <span class="da_big"><?php echo $year;?></span><br/>
                     <span><?php echo timetodate($t['addtime'],2);?></span>
                 </p>
             </div>
 <?php } } ?>
             <ul class="lii">
                 <?php $ntags=tag("moduleid=21&length=30&condition=status=3&catid=210&areaid=$cityid&pagesize=5&order=addtime desc&template=null");?>
  <?php if(is_array($ntags)) { foreach($ntags as $t) { ?>
                 <li><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?><span><?php echo timetodate($t['addtime'],3);?></span></a></li>
 <?php } } ?>
             </ul>
         </div>
    </div>
</div>
<div class="bot">
<?php $utags=tag("moduleid=4&condition=level=1&areaid=$cityid&pagesize=8&showcat=1&order=vip desc,userid desc&template=null");?>
<?php if(is_array($utags)) { foreach($utags as $v) { ?>
    <li>
        <span class="fli"><?php echo $v['truename'];?></span>
        <span><?php echo timetodate($v['regtime'],2);?></span>
        <!-- <span>浏览了</span> -->
        <span><a href="<?php echo $v['linkurl'];?>"><?php echo $v['company'];?></a></span>
        <span><?php echo $v['catname'];?></span>
    </li>
<?php } } ?>
     <!-- <li>
        <span class="fli">张三</span>
        <span>13.20</span>
        <span>浏览了</span>
        <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
     <li>
        <span class="fli">张三</span>
        <span>13.20</span>
        <span>浏览了</span>
        <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li> -->
</div>
<div class="yl">
    <div class="yl_con">
<?php $ltags=tag("table=link&condition=status=3&areaid=$cityid&pagesize=12&order=listorder asc,addtime desc&template=null");?>
<?php if(is_array($ltags)) { foreach($ltags as $v) { ?>
        <a href="<?php echo $v['linkurl'];?>" target="_blank"><?php echo $v['title'];?></a>
<?php } } ?>
         
    </div>
</div>
<?php include template('footers');?>
