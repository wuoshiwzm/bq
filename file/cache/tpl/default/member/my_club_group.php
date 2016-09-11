<?php defined('IN_DESTOON') or exit('Access Denied');?><div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td width="110" id="submenu"></td>
<td class="tab" id="add"><a href="?mid=<?php echo $mid;?>&job=<?php echo $job;?>&action=add&xx=7"><span>创建商圈</span></a></td>
<td class="tab" id="s3"><a href="?mid=<?php echo $mid;?>&job=<?php echo $job;?>&xx=7"><span>已开通<span class="px10">(<?php echo $nums['3'];?>)</span></span></a></td>
<td class="tab" id="s2"><a href="?mid=<?php echo $mid;?>&job=<?php echo $job;?>&status=2&xx=7"><span>审核中<span class="px10">(<?php echo $nums['2'];?>)</span></span></a></td>
<td class="tab" id="s1"><a href="?mid=<?php echo $mid;?>&job=<?php echo $job;?>&status=1&xx=7"><span>未通过<span class="px10">(<?php echo $nums['1'];?>)</span></span></a></td>
</tr>
</table>
</div>
<?php if($action=='add' || $action=='edit') { ?>
<iframe src="" name="send" id="send" style="display:none;"></iframe>
<form method="post" action="?" id="dform" target="send" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="job" value="<?php echo $job;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<table cellpadding="6" cellspacing="1" class="tb">
<?php if($status==1 && $action=='edit' && $note) { ?>
<tr>
<td class="tl">未通过原因</td>
<td class="tr f_blue"><?php echo $note;?></td>
</tr>
<?php } ?>
<tr<?php if($action=='edit') { ?> style="display:none;"<?php } ?>
>
<td class="tl"><span class="f_red">*</span> 所属分类</td>
<td class="tr"><?php echo category_select('post[catid]', '选择分类', $catid, $moduleid);?> <span class="f_gray">创建后无法修改</span>  <span id="dcatid" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 商圈名称</td>
<td class="tr"><input name="post[title]" type="text" id="title" size="20" value="<?php echo $title;?>"<?php if($action=='edit') { ?> readonly<?php } ?>
/><?php if($action=='add') { ?> <span class="f_gray">限15个字，创建后无法修改</span><?php } ?>
 <span id="dtitle" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 商圈图标</td>
<td class="tr"><input name="post[thumb]" id="thumb" type="text" size="60" value="<?php echo $thumb;?>" readonly/>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dthumb(<?php echo $moduleid;?>,128,128, Dd('thumb').value, true);" class="t">[上传]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="_preview(Dd('thumb').value);" class="t">[预览]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dd('thumb').value='';" class="t">[删除]</a> <span id="dthumb" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 商圈简介</td>
<td class="tr"><textarea name="post[content]" id="content" style="width:90%;height:80px;"><?php echo $content;?></textarea><br/><span class="f_gray">限500个字</span> <span id="dcontent" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 加圈方式</td>
<td class="tr">
<input type="radio" name="post[join_type]" value="0"<?php if($join_type == 0) { ?> checked<?php } ?>
/> 自由
<input type="radio" name="post[join_type]" value="1"<?php if($join_type == 1) { ?> checked<?php } ?>
/> 申请
</td>
</tr>
<?php if($action == 'add') { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 创建理由</td>
<td class="tr"><textarea name="post[reason]" id="reason" style="width:90%;height:80px;"><?php echo $reason;?></textarea><br/><span class="f_gray">限500个字</span> <span id="dreason" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_question) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证问题</td>
<td class="tr"><?php include template('question', 'chip');?> <span id="danswer" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_captcha) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证码</td>
<td class="tr"><?php include template('captcha', 'chip');?> <span id="dcaptcha" class="f_red"></span></td>
</tr>
<?php } ?>
<tr>
<td class="tl">&nbsp;</td>
<td class="tr" height="50"><input type="submit" name="submit" value=" 提 交 " class="btn_g"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/></td>
</tr>
</table>
</form>
<?php if($action=='add') { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('<?php echo $action;?>');</script>
<?php } else { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="job" value="<?php echo $job;?>"/>
<input type="hidden" name="status" value="<?php echo $status;?>"/>
&nbsp;<?php echo category_select('catid', '所有分类', $catid, $moduleid);?>&nbsp;
<input type="text" size="50" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&job=<?php echo $job;?>&status=<?php echo $status;?>');"/>
</form>
</div>
<div class="ls">
<table cellpadding="0" cellspacing="0" class="tb">
<tr>
<th width="100">图标</th>
<th>名称</th>
<th>分类</th>
<th width="130">创建时间</th>
<th>主题</th>
<th>粉丝</th>
<th width="40">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr onmouseover="this.className='on';" onmouseout="this.className='';" align="center">
<td><a href="javascript:_preview('<?php echo $v['thumb'];?>');"><img src="<?php echo $v['thumb'];?>" width="80" class="thumb"/></a></td>
<td><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a><?php if($v['status']==1 && $v['note']) { ?> <a href="javascript:" onclick="alert('<?php echo $v['note'];?>');"><img src="<?php echo DT_STATIC;?><?php echo $MODULE['2']['moduledir'];?>/image/why.gif" title="未通过原因"/></a><?php } ?>
</td>
<td>&nbsp;&nbsp;<a href="<?php echo $v['caturl'];?>" target="_blank"><?php echo $v['catname'];?></a>&nbsp;&nbsp;</td>
<td class="f_gray px11"><?php echo $v['adddate'];?></td>
<td><a href="javascript:Dwidget('?mid=<?php echo $mid;?>&job=manage&action=post&gid=<?php echo $v['itemid'];?>', '[<?php echo $v['title'];?>]帖子管理');"><span class="f_gray px11"><?php echo $v['post'];?></span></a></td>
<td><a href="?mid=<?php echo $mid;?>&job=fans&gid=<?php echo $v['itemid'];?>"><span class="f_gray px11"><?php echo $v['fans'];?></span></a></td>
<td>
<a href="?mid=<?php echo $mid;?>&job=<?php echo $job;?>&action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="<?php echo DT_STATIC;?><?php echo $MODULE['2']['moduledir'];?>/image/edit.png" title="修改" alt=""/></a>
</td>
</tr>
<?php } } ?>
</table>
</div>
<?php if($MG['club_group_limit']) { ?>
<div class="limit">
总共可建 <span class="f_b f_red"><?php echo $MG['club_group_limit'];?></span> 个&nbsp;&nbsp;&nbsp;
当前已建 <span class="f_b"><?php echo $limit_used;?></span> 个&nbsp;&nbsp;&nbsp;
还可以建 <span class="f_b f_blue"><?php echo $limit_free;?></span> 个&nbsp;&nbsp;&nbsp;
</div>
<?php } ?>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php if($action == 'add' || $action == 'edit') { ?>
<script type="text/javascript">
function check() {
var l;
var f;
f = 'catid_1';
if(Dd(f).value == 0) {
Dmsg('请选择所属分类', 'catid', 1);
return false;
}
f = 'title';
l = Dd(f).value.length;
if(l < 2 || l > 15) {
Dmsg('商圈名称应为2-15字，当前已输入'+l+'字', f);
return false;
}
f = 'thumb';
l = Dd(f).value.length;
if(l < 10) {
Dmsg('请上传商圈图标', f);
return false;
}
f = 'content';
l = Dd(f).value.length;
if(l < 10 || l > 500) {
Dmsg('商圈简介应为10-500字，当前已输入'+l+'字', f);
return false;
}
<?php if($action == 'add') { ?>
f = 'reason';
l = Dd(f).value.length;
if(l < 10 || l > 500) {
Dmsg('创建理由应为10-500字，当前已输入'+l+'字', f);
return false;
}
<?php } ?>
<?php if($need_password) { ?>
f = 'password';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
<?php } ?>
<?php if($need_question) { ?>
f = 'answer';
l = Dd(f).value.length;
if(l < 1) {
Dmsg('请填写验证问题', f);
return false;
}
if(Dd('c'+f).innerHTML.indexOf('error') != -1) {
Dd(f).focus();
return false;
}
<?php } ?>
<?php if($need_captcha) { ?>
f = 'captcha';
l = Dd(f).value;
if(!is_captcha(l)) {
Dmsg('请填写正确的验证码', f);
return false;
}
if(Dd('c'+f).innerHTML.indexOf('error') != -1) {
Dd(f).focus();
return false;
}
<?php } ?>
return true;
}
</script>
<?php } ?>
