<?php
defined('DT_ADMIN') or exit('Access Denied');
include tpl('header');
show_menu($menus);
?>
<div id="tips_update" style="display:none;">
 
<div class="tt"><span class="f_r">IP:<?php echo $user['loginip']; ?> <?php echo ip2area($user['loginip']);?>&nbsp;&nbsp;</span>欢迎管理员，<?php echo $_username;?></div>
<table cellpadding="2" cellspacing="1" class="tb">
<tr>
<td class="tl">管理级别</td>
<td width="30%">&nbsp;<?php echo $_admin == 1 ? ($CFG['founderid'] == $_userid ? '网站创始人' : '超级管理员') : ($_aid ? '<span class="f_blue">'.$AREA[$_aid]['areaname'].'站</span>管理员' : '普通管理员'); ?></td>
<td class="tl">登录次数</td>
<td width="30%">&nbsp;<?php echo $user['logintimes']; ?> 次</td>
</tr>
<tr>
<td class="tl">站内信件</td>
<td>&nbsp;<a href="<?php echo $MODULE[2]['linkurl'].'message.php';?>" target="_blank">收件箱[<?php echo $_message ? '<strong class="f_red">'.$_message.'</strong>' : $_message;?>]</a></td>
<td class="tl">登录时间</td>
<td>&nbsp;<?php echo timetodate($user['logintime'], 5); ?> </td>
</tr>
<tr>
<td class="tl">账户余额</td>
<td>&nbsp;<?php echo $_money; ?></td>
<td class="tl">会员<?php echo $DT['credit_name'];?></td>
<td>&nbsp;<?php echo $_credit; ?> </td>
</tr>
 
 
</table>
<?php if($_founder) {?>
<div id="destoon"></div>
<div class="tt">系统信息</div>
<table cellpadding="2" cellspacing="1" class="tb">
<tr>
<td class="tl">程序信息</td>
<td>&nbsp; Version <?php echo DT_VERSION;?> Release <?php echo DT_RELEASE;?> <?php echo DT_CHARSET;?> <?php echo strtoupper(DT_LANG);?> </td>
</tr>
 
<tr>
<td class="tl">安装时间</td>
<td>&nbsp;<?php echo $install;?></td>
</tr>
 
 
 
<tr>
<td class="tl">服务器时间</td>
<td>&nbsp;<?php echo timetodate($DT_TIME, 'Y-m-d H:i:s l');?></td>
</tr>
<tr>
<td class="tl">服务器信息</td>
<td>&nbsp;<?php echo PHP_OS.'&nbsp;'.$_SERVER["SERVER_SOFTWARE"];?> [<?php echo gethostbyname($_SERVER['SERVER_NAME']);?>:<?php echo $_SERVER["SERVER_PORT"];?>] <a href="?file=doctor" class="t">[系统体检]</a></td>
</tr>
<tr>
<td class="tl">数据库版本</td>
<td>&nbsp;MySQL <?php echo $db->version();?></td>
</tr>
<tr>
<td class="tl">站点路径</td>
<td>&nbsp;<?php echo DT_ROOT;?></td>
</tr>
<tr>
<td class="tl">上次备份</td>
<td>&nbsp;<a href="?file=database" title="点击备份数据库"><?php echo $backtime;?><?php if($backdays > 5) { ?> (<span class="f_red"><?php echo $backdays;?></span>天以前)<?php } ?></a></td>
</tr>
</table>
 
 
<script type="text/javascript">
var destoon_release = <?php echo DT_RELEASE;?>;
var destoon_version = <?php echo DT_VERSION;?>;
if(typeof destoon_lastrelease != 'undefined') {
	var lastrelease = parseInt(destoon_lastrelease.replace('-', '').replace('-', ''));
	if(destoon_lastversion == destoon_version && destoon_release < lastrelease) {
		$('#last_v').html(destoon_lastversion);
		$('#last_r').html(destoon_lastrelease);
		$('#tips_update').show('slow');
	}
}
</script>
<?php } ?>
<script type="text/javascript">Menuon(0);</script>
<?php include tpl('footer');?>