<?php defined('IN_DESTOON') or exit('Access Denied');?><div class="clear"></div>
<div class="footer">
    <div class="fot_main">
        <img src="http://www.adbangbang.com/file/images/footlogo.jpg" class="fotlogo">
        <div class="mian_com">
            <div class="fot_box">
                <div class="top_fot">
                    <a href="">广告媒体</a>
                </div>
                <ul>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                </ul>
            </div>
            <div class="fot_box">
                <div class="top_fot">
                    <a href="">广告媒体</a>
                </div>
                <ul>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                </ul>
            </div>
            <div class="fot_box">
                <div class="top_fot">
                    <a href="">广告媒体</a>
                </div>
                <ul>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                </ul>
            </div>
            <div class="fot_box">
                <div class="top_fot">
                    <a href="">广告媒体</a>
                </div>
                <ul>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                    <li><a href="">电视广告</a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="fot_bot ">
                <p class="left">版权所有：西安步旗广告文化传播有限公司</p>                 
                <p class="right"> <!-- 网站总浏览量：1234  今日浏览量：230  当前在线人数：20人 --></p>
            </div>  
        </div>
        <div class="rig_fot">
            <img src="http://www.adbangbang.com/file/images/weixin.jpg" alt="">
            <p>微信扫一扫</p>
        </div>
    </div>
</div>
<div class="fot_right">
<div class="zctop"><a href="<?php echo $MODULE['26']['linkurl'];?>">招标</a></div>
<!-- 代码开始 -->
<div class="list_lh">
<ul>
<?php $ztags=tag("moduleid=26&length=28&condition=status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($ztags)) { foreach($ztags as $v) { ?>
<li><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?>..</a></li>
<?php } } ?>
 
</ul>
</div>
<!-- 代码结束 -->
<div class="zctop"><a href="<?php echo $MODULE['22']['linkurl'];?>">招商</a></div>
<!-- 代码开始 -->
<div class="list_lh">
<ul>
<?php $ztags=tag("moduleid=22&length=28&condition=status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($ztags)) { foreach($ztags as $v) { ?>
<li><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?>..</a></li>
<?php } } ?>
 
</ul>
</div>
<!-- 代码结束 -->
</div>
<div class="fot_left">
<div class="zctop"><a href="<?php echo $MODULE['5']['linkurl'];?>">出租</a></div>
<!-- 代码开始 -->
<div class="list_lh">
<ul>
<?php $ztags=tag("moduleid=5&length=28&condition=status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($ztags)) { foreach($ztags as $v) { ?>
<li><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?>..</a></li>
<?php } } ?>
 
</ul>
</div>
<!-- 代码结束 -->
        <div class="zctop"><a href="<?php echo $MODULE['6']['linkurl'];?>">求购</a></div>
<!-- 代码开始 -->
<div class="list_lh">
<ul>
<?php $ztags=tag("moduleid=6&length=28&condition=status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($ztags)) { foreach($ztags as $v) { ?>
<li><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?>..</a></li>
<?php } } ?>
 
</ul>
</div>
<!-- 代码结束 -->
</div>
<script type="text/javascript">
<?php if($destoon_task) { ?>
show_task('<?php echo $destoon_task;?>');
<?php } else { ?>
<?php include DT_ROOT.'/api/task.inc.php';?>
<?php } ?>
<?php if($lazy) { ?>$(function(){$("img").lazyload();});<?php } ?>
</script>
</body>
</html>