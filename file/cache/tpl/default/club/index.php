<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('head');?>
    <div class="ny_banner">
    
    </div>
     <div class="zi">
         <div class="title_zi">
         </div>
         <div class="zi_con">
             <div class="zicon-left">
                 <div class="kuang">
 <form id="drm" action="<?php echo $MOD['linkurl'];?>fb.php" method="post">
 <input type="hidden" name="action" value="add" >
 <input type="hidden" name="post[join_type]" value="0" >
  <input type="hidden" name="post[title]" value="<?php echo $_username;?>的新鲜事" >
                     <textarea name="post[content]" id="content"></textarea>
                     <div class="ku_bot">
                         <div class="kb_left">
                             <p>
                                 <img src="<?php echo DT_STATIC;?>file/images/smell.jpg" alt="">
                                 <span>表情</span>
                             </p>
                              <p>
                                 <img src="<?php echo DT_STATIC;?>file/images/pic.jpg" alt="">
                                 <span>图片</span>
                             </p>
                              <p>
                                 <img src="<?php echo DT_STATIC;?>file/images/video.jpg" alt="">
                                 <span>视频</span>
                             </p>
                         </div>
                         <div class="kb_right">
                             <input type="submit" name="submit" value="发布">
                         </div>
                     </div>
 </form>
                 </div>
                 <div class="lis">
                        <ul>
                        <li class="select"><a href="<?php echo $MOD['linkurl'];?>">全部</a></li>
<?php $maclids=get_maincat(0,$moduleid,1);?>
<?php if(is_array($maclids)) { foreach($maclids as $v) { ?>
                        <li><a href="<?php echo cat_url($v['catid']);?>"><?php echo $v['catname'];?></a></li>
<?php } } ?>
                        <!-- <li><a href="">视频</a></li>
                        <li><a href="">图片</a></li>
                        <li><a href="">音乐</a></li>
                        <li><a href="">文章</a></li> -->
                        </ul>
                        <div class="wes">
                        <input type="text" class="weisou">
                         <input type="button" class="weisoua">
                        </div>
                 </div>
 <?php echo tag("moduleid=$moduleid&table=club_group&condition=status=3&areaid=$cityid&order=addtime DESC&pagesize=8&showpage=1&page=$page&datetype=2&target=_blank&template=list-sq");?>
                    
                  <!-- <div class="lis bta">
                        <a href="" class="morea">查看更多>></a>
                 </div> -->
             </div>
             <div class="zicon-right">
                 <!-- <div class="zicr_top">
                     <a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a>
                     <p class="name"><a href="">姓名</a></p>
                     <div>
                         <p><span class="big">10</span><span>关注</span></p>
                         <p class="squar"></p>
                         <p> <span class="big">8</span><span>粉丝</span></p>
                         <p class="squar"></p>
                         <p> <span class="big">8</span><span>分享</span></p>
                     </div>
                 </div> -->
                 <div class="zicr_midden">
                     <h1>推荐分享</h1>
                   <?php $jtags=tag("moduleid=$moduleid&table=club_group&condition=status=3 and level=1&areaid=$cityid&order=addtime DESC&pagesize=8&datetype=2&target=_blank&template=null");?>
                    <?php if(is_array($jtags)) { foreach($jtags as $v) { ?>
 <li><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?></a><span><?php echo timetodate($v['addtime'],2);?></span></li>
 <?php } } ?>
                     <!-- <li><a href="">#徐佳莹我所需要的#</a><span>12-25</span></li>
                     <li><a href="">#宇宙夫妇#</a><span>12-33</span></li>
                     <li><a href="">#你能陪陪我吗#</a><span>12-12</span></li>
                     <li><a href="">#张睿直播送钱#</a><span>12-15</span></li>
                     <li><a href="">#极限挑战#</a><span>12-15</span></li>
                     <li><a href="">#特工皇妃主演#</a><span>12-15</span></li>
                     <li><a href="">#多花点时间来陪我#</a><span>12-15</span></li>
                     <li><a href="">#陈奕迅演唱会有票#</a><span>12-15</span></li> -->
                 </div>
                 <div class="zicr_bottom">
                     <h1>分享排行</h1>
                     <ul>  <?php $jtags=tag("moduleid=$moduleid&table=club_group&condition=status=3&areaid=$cityid&order=fans DESC&pagesize=8&datetype=2&target=_blank&template=null");?>
                    <?php if(is_array($jtags)) { foreach($jtags as $v) { ?>
 <li><a href="<?php echo $v['linkurl'];?>"><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href="<?php echo $v['linkurl'];?>"><span><?php echo $v['title'];?></span></a> </li>
 <?php } } ?>
                         <!-- <li><a href=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li>
                         <li><a href=""><img src="<?php echo DT_STATIC;?>file/images/img2.jpg" alt=""></a> <a href=""><span>我心依旧</span></a></li> -->
                     </ul>
                 </div>
             </div>
         </div>
     </div>
  <?php include template('footers');?>