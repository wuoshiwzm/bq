<?php defined('IN_DESTOON') or exit('Access Denied');?>
<div class="footer">
    <div class="fot_main">
        <img src="<?php echo DT_STATIC;?>file/images/footlogo.jpg" class="fotlogo" />
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
                <p class="left"><?php echo $DT['copyright'];?></p>                 
                <p class="right"> <!-- 网站总浏览量：1234  今日浏览量：230  当前在线人数：20人 --></p>
            </div>  
        </div>
        <div class="rig_fot">
            <img src="<?php echo DT_STATIC;?>file/images/weixin.jpg" alt="" />
            <p>微信扫一扫</p>
        </div>
    </div>
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