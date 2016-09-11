<?php defined('IN_DESTOON') or exit('Access Denied');?> <?php include template('head');?>
 <div class="xiangqing">
  <div class="zs">
    <div class="zstop">
      <ul>
   <?php $maincat=get_maincat(0,$moduleid,1);?>
<?php if(is_array($maincat)) { foreach($maincat as $k => $v) { ?>

        <li  id="zs1" <?php if($v['catid']==$catid) { ?>class="hover"<?php } ?>
 onMouseDown="setTab('zs',<?php echo $k;?>,3)"><a href="<?php echo $MOD['linkurl'];?><?php echo $v['linkurl'];?>"><?php echo set_style($v['catname'],$v['style']);?></a></li>
<?php } } ?>

      </ul>
    </div>
<?php include template('list-buy','tag');?>
  
</div></div>
 
 
<?php include template('footer');?>