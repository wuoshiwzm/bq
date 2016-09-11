<?php defined('IN_DESTOON') or exit('Access Denied');?>
    <div class="zsbottom">
       <div id="con_zs_1" class="display" style="display: block;">
         <div class="tw">
           <ul>
   <?php if(is_array($tags)) { foreach($tags as $k => $t) { ?>
             <li>
               <a href="<?php echo $t['linkurl'];?>"><img src="<?php echo imgurl($t['thumb']);?>" width="120" height="108"></a>
               <div class="wznr">
                 <h2><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?></a></h2>
                 <span><?php echo $t['introduce'];?></span>
               </div>
             </li>
            <?php } } ?>
           </ul>
          <?php if($showpage && $pages) { ?> <div class="fenye xia"> <?php echo $pages;?></div><?php } ?>
                <a href="<?php echo DT_STATIC;?>ZIMEITI/"> <img src="<?php echo DT_STATIC;?>file/images/guanggao.jpg" alt="" class="xq_mei"> </a>
         </div>
       </div>
    </div>
