<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('head');?>
    <div class="ny_banner">
    
    </div>
    
<div class="xiangqing">
  <div class="ny_top">当前位置： <a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> &raquo; <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> &raquo; <?php echo cat_pos($CAT, ' &raquo; ');?> &raquo; 正文</div>
  <div class="zw">
    <div class="fbr"><a href="#"><?php if($author) { ?>&nbsp;&nbsp;作者：<?php echo $author;?><?php } ?>
</a></div>
    <div class="news-title-sub"><?php echo $title;?></div>
    <div class="fbt">发布时间：<?php echo $adddate;?>　　浏览次数：<span id="hits"><?php echo $hits;?></span>次</div>
    <div class="tex">
<?php include template('content', 'chip');?>
</div>
<div class="pian">
  <li><strong>下一篇：</strong><?php echo tag("moduleid=$moduleid&condition=status=3 and addtime>$addtime&areaid=$cityid&pagesize=1&order=addtime asc&template=list-np", -1);?></li>
<li><strong>上一篇：</strong><?php echo tag("moduleid=$moduleid&condition=status=3 and addtime<$addtime&areaid=$cityid&pagesize=1&order=addtime desc&template=list-np", -1);?></li>
      </div>
  </div>
</div>
<?php include template('footers');?>