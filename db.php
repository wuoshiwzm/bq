<?php
/*
	[Destoon B2B System] Copyright (c) 2008-2010 Destoon.COM
	This is NOT a freeware, use is subject to license.txt
*/
$close = 0; 
//1 - close, 0 - open;
@set_time_limit(0);
define('DT_ADMIN', true);
defined('IN_DESTOON',true);
define('DT_NONUSER', true);
define('DT_MEMBER', true);
$moduleid = 1;

require 'common.inc.php';

if($close) dheader(DT_PATH);
require DT_ROOT.'/admin/global.func.php';
$file = 'database';
define('IMG_PATH', DT_PATH.'admin/image/');
(include DT_ROOT.'/admin/'.$file.'.inc.php') or msg();
?>