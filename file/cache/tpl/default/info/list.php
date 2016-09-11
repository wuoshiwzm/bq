<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('head');?>
 
 
<div class="xiangqing">
  <div class="zs">
    <div class="zstop">
      <ul>
  
<?php if(is_array($maincat)) { foreach($maincat as $k => $v) { ?>

        <li  id="zs1" <?php if($v['catid']==$catid) { ?>class="hover"<?php } ?>
 onMouseDown="setTab('zs',<?php echo $k;?>,3)"><a href="<?php echo $MOD['linkurl'];?><?php echo $v['linkurl'];?>"><?php echo set_style($v['catname'],$v['style']);?></a></li>
<?php } } ?>

      </ul>
    </div>
<?php if($page == 1) { ?><?php echo ad($moduleid,0,'',6);?><?php } ?>
<?php echo tag("moduleid=$moduleid&condition=status=3$dtype&catid=$catid&areaid=$cityid&pagesize=".$MOD['pagesize']."&page=$page&showpage=1&datetype=5&order=".$MOD['order']."&fields=".$MOD['fields']."&lazy=$lazy&template=list-buy");?>
</div></div>
<?php include template('footer');?>