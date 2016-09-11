<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('head');?>
    <div class="ny_banner">
    
    </div>
    <div class="ny_main">
    <div class="baike_top">
    <div class="bktop_left">
<ul>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>

    <li>
    <img src="<?php if($t['thumb']=="") { ?><?php echo DT_STATIC;?>file/image/image1.jpg<?php echo $t['thumb'];?><?php } else { ?><?php echo $t['thumb'];?><?php } ?>
" alt="<?php echo $t['title'];?>">

    <div class="pi">
    <p><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?></a></p>
    <p><?php echo dsubstr($t['introduce'], 200, '...');?></p>
    </div>
    </li>
<?php } } ?>
    <div class="fenye">
    <?php echo $pages;?>
    </div>
    </div>
    <div class="bktop_right">
    <div class="bkr_top">
    <h1>热门资讯</h1>
<?php $tags=tag("moduleid=$moduleid&length=46&condition=status=3&pagesize=7&order=hits desc&template=null");?>          
<?php if(is_array($tags)) { foreach($tags as $k => $t) { ?>  
<?php if($k==0) { ?>

    <li class="ra">
    <p><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['title'], 30, '...');?></a></p>
    <div>
    <img src="<?php if($t['thumb']=="") { ?><?php echo DT_STATIC;?>file/image/image1.jpg<?php echo $t['thumb'];?><?php } else { ?><?php echo $t['thumb'];?><?php } ?>
" alt="<?php echo $t['title'];?>">
    <p><?php echo dsubstr($t['introduce'], 90, '...');?><span><a href="" class="red">详细</a></span></p>
    <div class="clear"></div>
    </div>
    </li>
<?php } else { ?>

 <li> 
   <a href="<?php echo $t['linkurl'];?>" rel="external nofollow" target="_blank" class="item"> 
 <span class="txt f-ib f-thide"><?php echo $t['title'];?></span> 
   </a>              
 </li>
 <?php } ?>
<?php } } ?>

    </div>
    <div class="bkr_bot">
    <h1>最新推荐</h1>

<?php $tags=tag("moduleid=$moduleid&length=46&condition=status=3 and level=3 and thumb!=''&pagesize=4&order=hits desc&template=null");?>   
<?php if(is_array($tags)) { foreach($tags as $k => $t) { ?>  

    <div>
    <img src="<?php echo $t['thumb'];?>" alt="">
    <p><a href="<?php echo $t['linkurl'];?>"><?php echo dsubstr($t['title'], 24, '...');?></a></p>
    </div>
<?php } } ?>
    
    </div>
    </div>
    <div class="clear"></div>
    </div>
    <div class="baike_bot bot baikeaa">
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    <li>
        <span class="fli">张三</span>
        <span>13.20</span>
         <span>浏览了</span>
         <span><a href="">西安步旗文化广告传播公司</a></span>
        <span>求购公司</span>
    </li>
    </div>
    </div>
<?php include template('footers');?>