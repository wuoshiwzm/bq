<?php defined('IN_DESTOON') or exit('Access Denied');?>
<?php if(is_array($tags)) { foreach($tags as $t) { ?>
 <div class="fie_con">
                      <div class="face">
                             <img src="<?php echo imgurl($t['thumb']);?>" alt="">
                      </div>
                      <div class="fie_right">
                          <p class="name"><a href=""><?php echo $t['title'];?></a></p>
                          <p class="datae"><span><?php echo timetodate($t['addtime'],5);?></span> <span>来自<?php echo $t['username'];?></span>
  
  <span style="float:right;">分享：
<a target="_blank" href="http://www.jiathis.com/send/?webid=weixin&url=<?php echo $t['linkurl'];?>&title=<?php echo $t['alt'];?>&summary=<?php echo $t['introduce'];?>&pic=<?php echo $t['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c4.png" width="16" height="16" style="margin-right:5px" /></a> 
 <a target="_blank" href="http://www.jiathis.com/send/?webid=tsina&url=<?php echo $t['linkurl'];?>&title=<?php echo $t['alt'];?>&summary=<?php echo $t['introduce'];?>&pic=<?php echo $t['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c2.jpg" width="16" height="16"  style="margin-right:5px" /></a>
<a target="_blank" href="http://www.jiathis.com/send/?webid=qzone&url=<?php echo $t['linkurl'];?>&title=<?php echo $t['alt'];?>&summary=<?php echo $t['introduce'];?>&pic=<?php echo $t['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c1.jpg" width="16" height="16"  style="margin-right:5px" /></a></span> 
  </p>
                          <p class="nei">
  <?php $itid=$t['itemid'];?>
                              <span> 
  <?php echo $t['content'];?>
   
  </span>
<?php $gtags=tag("moduleid=$moduleid&condition=status=3 and gid=$itid&areaid=$cityid&order=addtime desc&pagesize=3&target=_blank&template=null");?>
<?php if(is_array($gtags)) { foreach($gtags as $v) { ?>
                                <img src="<?php echo $v['thumb'];?>" alt="<?php echo $v['title'];?>">
<?php } } ?>
                                 <!-- <img src="<?php echo DT_STATIC;?>file/images/weiboimg.jpg" alt="">
                                  <img src="<?php echo DT_STATIC;?>file/images/weiboimg.jpg" alt=""> -->
                          </p>
                      </div>
                      <div class="clear"></div>
                      <div class="fie_bottom"> 
  
<ul>
<?php if(is_array($gtags)) { foreach($gtags as $v) { ?>
<li  style="padding-left:6px;width:167px;float:left;overflow:hidden;text-align:center;margin-left:20px"><span style="float:left;">分享：</span> 
<a target="_blank" href="http://www.jiathis.com/send/?webid=weixin&url=<?php echo $v['linkurl'];?>&title=<?php echo $v['title'];?>&summary=<?php echo $v['introduce'];?>&pic=<?php echo $v['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c4.png" width="16" height="16" style="margin-right:5px" /></a> 
 <a target="_blank" href="http://www.jiathis.com/send/?webid=tsina&url=<?php echo $v['linkurl'];?>&title=<?php echo $v['title'];?>&summary=<?php echo $v['introduce'];?>&pic=<?php echo $v['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c2.jpg" width="16" height="16"  style="margin-right:5px" /></a>
<a target="_blank" href="http://www.jiathis.com/send/?webid=qzone&url=<?php echo $v['linkurl'];?>&title=<?php echo $v['title'];?>&summary=<?php echo $v['introduce'];?>&pic=<?php echo $v['thumb'];?>"><img src="<?php echo DT_SKIN;?>images/down/c1.jpg" width="16" height="16"  style="margin-right:5px" /></a>
</li>
<?php } } ?>
 </ul>
                            <!-- <a href=""><img src="<?php echo DT_STATIC;?>file/images/shoucang.jpg" alt=""><span>收藏</span></a>
                            <a href="" class="su"></a>
                             <a href=""><img src="<?php echo DT_STATIC;?>file/images/shoucang.jpg" alt=""><span>收藏</span></a>
                            <a href="" class="su"></a>
                             <a href=""><img src="<?php echo DT_STATIC;?>file/images/shoucang.jpg" alt=""><span>收藏</span></a>
                            <a href="" class="su"></a>
                             <a href=""><img src="<?php echo DT_STATIC;?>file/images/shoucang.jpg" alt=""><span>收藏</span></a> -->
                      </div>
                 </div>
 <?php } } ?>
<?php if($showpage && $pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
