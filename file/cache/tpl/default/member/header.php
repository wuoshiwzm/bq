<?php defined('IN_DESTOON') or exit('Access Denied');?><html>
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
<link rel="stylesheet" type="text/css" href="<?php echo DT_STATIC;?><?php echo $MODULE['2']['moduledir'];?>/image/style.css"/>
<?php if($DT_TOUCH) { ?>
<link rel="stylesheet" type="text/css" href="<?php echo $EXT['mobile_url'];?>static/member.css"/>
<script type="text/javascript">var Dbrowser = '<?php echo $DT_MOB['browser'];?>';</script>
<?php } ?>
<?php if(!DT_DEBUG) { ?><script type="text/javascript">window.onerror= function(){return true;}</script><?php } ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>lang/<?php echo DT_LANG;?>/lang.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/config.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/common.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/admin.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/member.js"></script>
<?php if($DT_TOUCH) { ?><script type="text/javascript" src="<?php echo $EXT['mobile_url'];?>static/js/fix.js"></script><?php } ?>
        <link href="css/css.css" type="text/css" rel="stylesheet">
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/lanrenzhijia.js"></script>
        <script src="js/MSClass.js"></script>
        
</head>
<body>
<div class="page_top">
      <div class="page_top_left"></div>
      <div class="page_top_right">
          <ul>
             <li><a href="logout.php?forward=" ><img src="images/4.png"></a></li>
           
             <li><a href="/member/" ><img src="images/2.png"></a></li>
             <li><a href="<?php echo DT_PATH;?>"><img src="images/1.png"></a></li>
          </ul>
      </div>
      <div class="clear"></div>
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style=" margin-top:0px; padding-top:0px; border-right:1px solid #b7d5df; width:187px;" valign="top">
    <div class="page_con" style=" width:186px; float:left;">
      <div class="page_left">
         <div class="left_title">系统功能</div>
         <div class="lanrenzhijia">
             <ul id="nav_dot">
 <li>
          <h4 class=""><img src="images/b3.png">服务中心</h4>
          <div class="list-item <?php if(!$fw && $mid!=2) { ?> none <?php } ?>
 ">
            
            
            <a href="/member/?&fw=4" <?php if($fw==4) { ?> class="hover" <?php } ?>
 >管理首页</a>
            <a href="/member/message.php?action=send&fw=1" <?php if($fw==1) { ?> class="hover" <?php } ?>
 >站内信</a>
            <a href="/member/chat.php?action=add&fw=2" <?php if($fw==2) { ?> class="hover" <?php } ?>
 >站内沟通</a>
            <a href="/member/friend.php?action=add&fw=3" <?php if($fw==3) { ?> class="hover" <?php } ?>
 >站内好友</a>
            <a href="/member/profile.php?&fw=5" <?php if($fw==5) { ?> class="hover" <?php } ?>
 >个人资料</a>
            <a href="/member/edit.php?&fw=6"  <?php if($fw==6) { ?> class="hover" <?php } ?>
 >密码管理</a>
            <a href="/member/ad.php?&fw=7"  <?php if($fw==7) { ?> class="hover" <?php } ?>
 >广告预定</a>
            <a href="/member/spread.php?&fw=8"  <?php if($fw==8) { ?> class="hover" <?php } ?>
 >排名推广</a>
            <a href="/member/ask.php?&fw=9" <?php if($fw==9) { ?> class="hover" <?php } ?>
 >客服中心</a>
           
        </div>
        </li>
<li>
          <h4 class=""><img src="images/b2.png">信息发布</h4>
          <div class="list-item <?php if(!$xx) { ?> none <?php } ?>
">
            <?php if($_groupid>5) { ?>
            <a href="/member/my.php?mid=6&typeid=1&xx=1" <?php if($xx==1) { ?> class="hover" <?php } ?>
 >广告求购</a>
            <a href="/member/my.php?mid=5&typeid=0&xx=2" <?php if($xx==2) { ?> class="hover" <?php } ?>
 >广告出租</a>
            <a href="/member/my.php?mid=5&typeid=1&xx=3" <?php if($xx==3) { ?> class="hover" <?php } ?>
 >广告出售</a>
            <a href="/member/my.php?mid=22&xx=4" <?php if($xx==4) { ?> class="hover" <?php } ?>
 >招商信息</a>
            <a href="/member/my.php?mid=26&xx=5" <?php if($xx==5) { ?> class="hover" <?php } ?>
 >招标信息</a>
            <a href="/member/my.php?mid=27&xx=6" <?php if($xx==6) { ?> class="hover" <?php } ?>
 >中标信息</a>
            <a href="/member/my.php?mid=18&job=group&action=add&xx=7" <?php if($xx==7) { ?> class="hover" <?php } ?>
 >自媒体</a>
 <a href="/member/my.php?mid=9&xx=8" <?php if($xx=8) { ?> class="hover" <?php } ?>
 >招聘信息</a>
            <?php } else { ?>
             <a href="/member/my.php?mid=6&typeid=1&xx=1" <?php if($xx==1) { ?> class="hover" <?php } ?>
 >广告求购</a>
            <a href="/member/my.php?mid=5&typeid=0&xx=2" <?php if($xx==2) { ?> class="hover" <?php } ?>
 >广告出租</a>
             <a href="/member/my.php?mid=18&job=group&action=add&xx=7" <?php if($xx==7) { ?> class="hover" <?php } ?>
 >自媒体</a>
            <?php } ?>

        </div>
        </li>
<li>
          <h4 class=""><img src="images/b7.png">账户信息</h4>
          <div class="list-item <?php if(!$zh) { ?> none <?php } ?>
">
          
            <a href="/member/record.php?&zh=1" <?php if($zh==1) { ?> class="hover" <?php } ?>
 >资金流水</a>
            <a href="/member/charge.php?action=record&zh=2" <?php if($zh==2) { ?> class="hover" <?php } ?>
 >充值记录</a>
            <a href="/member/deposit.php?&zh=3" <?php if($zh==3) { ?> class="hover" <?php } ?>
 >保证金</a>
            <a href="/member/cash.php?action=record&zh=4" <?php if($zh==4) { ?> class="hover" <?php } ?>
 >资金提现</a>
            <a href="/member/credit.php?&zh=5" <?php if($zh==5) { ?> class="hover" <?php } ?>
 >积分管理</a>
           
        </div>
        </li>
<li>
          <h4 class=""><img src="images/b6.png">公司管理</h4>
          <div class="list-item <?php if(!$gs) { ?> none <?php } ?>
">
          
            <a href="/member/home.php?&gs=1" <?php if($gs==1) { ?> class="hover" <?php } ?>
 >公司设置</a>
           
            <a href="/member/news.php?&gs=2" <?php if($gs==2) { ?> class="hover" <?php } ?>
 >公司新闻</a>
            <a href="/member/page.php?&gs=3" <?php if($gs==3) { ?> class="hover" <?php } ?>
 >公司单页</a>
            <a href="/member/honor.php?&gs=4" <?php if($gs==4) { ?> class="hover" <?php } ?>
 >公司资质</a>
            <a href="/member/link.php?&gs=5" <?php if($gs==5) { ?> class="hover" <?php } ?>
 >友情链接</a>
             
        </div>
        </li>

  </ul>
  <script>
  navList(12);
</script>
         </div>
      </div>
     
</div>
    
    </td>
   
     <td valign="top">
    