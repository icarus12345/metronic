<link href="css/index.php" rel="stylesheet" type="text/css" />
<link href="themes/<?php echo $this->config['theme'] ?>/css.php" rel="stylesheet" type="text/css" />
<style type="text/css">

div.file{width:<?php echo $this->config['thumbWidth'] ?>px;width:100px;}
div.file .thumb{
	width:<?php echo $this->config['thumbWidth'] ?>px;
	height:<?php echo $this->config['thumbHeight'] ?>px;
	width:100px;
    height:<?php echo 100/$this->config['thumbWidth']*$this->config['thumbHeight'] ?>px;
    background: no-repeat center center;
	background-size: contain;
	-moz-background-size: contain;
	-webkit-background-size: contain;
	position:relative;
}
div.file .thumb>img{
	position: absolute;
	margin: auto;
	display: block;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	max-height: 100%;
	max-width: 100%;
}
div.file .thumb:hover,
div.file.selected .thumb{
	/*background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;*/
}
a#toggle-folders{display:none;}
a#toggle-folders> span{padding:6px 10px;}
a#toggle-folders span::before{
	content: "\f115";
	font-family: FontAwesome;
	font-size: 14px;
	padding-right: 4px;
}
@media (max-width: 480px) {
	a#toggle-folders{display:block}
	div.file,
	div.file .thumb{
		
	}
	#left{width: 220px !important;position:absolute;display:none;background:#fff;z-index: 10;}
	#right{width:100% !important}
}
</style>