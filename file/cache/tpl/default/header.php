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
<link rel="stylesheet" media="screen" href="<?php echo DT_STATIC;?>file/css/ny.css" />
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
           <select id="hangye" class="hangye" onchange="setModule1(this.value,'this')">
 
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
            <option value="<?php echo $v['areaid'];?>" <?php if($areaid==$v['areaid']) { ?>selected<?php } ?>
><?php echo $v['areaname'];?></option>
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
    </div></form>
</div>
</div>
</div>