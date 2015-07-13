<?php /*%%SmartyHeaderCode:30326559df9014718a4-84621240%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd1617943c44f1b154c850804dedb5696cfdb8d6a' => 
    array (
      0 => 'application\\templates\\dashboard\\auth\\login.tpl',
      1 => 1436752112,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30326559df9014718a4-84621240',
  'cache_lifetime' => 60,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55a3658d45b0e0_88579268',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55a3658d45b0e0_88579268')) {function content_55a3658d45b0e0_88579268($_smarty_tpl) {?><!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- BEGIN HEAD -->
	<head>
		<meta charset="utf-8"/>
		<title>Metronic | Login Options</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1.0" name="viewport"/>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta content="" name="description"/>
		<meta content="" name="author"/>
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href="/libraries/metronic/theme/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL STYLES -->
		<link href="/libraries/metronic/theme/assets/global/plugins/select2/select2.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/admin/pages/css/login3.css" rel="stylesheet" type="text/css"/>
		<!-- END PAGE LEVEL SCRIPTS -->
		<!-- BEGIN THEME STYLES -->
		<link href="/libraries/metronic/theme/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
		<link href="/libraries/metronic/theme/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
		<!-- END THEME STYLES -->
		<link rel="shortcut icon" href="favicon.ico"/>

		<link rel="stylesheet" type="text/css" href="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.css"/>
		


	</head>
	<!-- END HEAD -->
	<!-- BEGIN BODY -->
	<body class="login">
		<!-- BEGIN LOGO -->
		<div class="logo">
			<a href="index.html">
				<img src="/libraries/metronic/theme/assets/admin/layout/img/logo-big.png" alt=""/>
			</a>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		<div class="menu-toggler sidebar-toggler">
		</div>
		<!-- END SIDEBAR TOGGLER BUTTON -->
		<!-- BEGIN LOGIN -->
		<div class="content">
			<!-- BEGIN LOGIN FORM -->
			<form class="login-form"  method="post">
			<input name="action" type="hidden" value="login">
				<h3 class="form-title">Login to your account</h3>
				<div class="alert alert-danger display-hide">
					<button class="close" data-close="alert"></button>
					<span>
					Enter any username and password. </span>
				</div>
				<div class="form-group">
					<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
					<label class="control-label visible-ie8 visible-ie9">Username</label>
					<div class="input-icon">
						<i class="fa fa-user"></i>
						<input class="form-control placeholder-no-fix" 
							value="" 
							type="text" placeholder="Username" name="username"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9">Password</label>
					<div class="input-icon">
						<i class="fa fa-lock"></i>
						<input class="form-control placeholder-no-fix" type="password" 
						placeholder="Password" name="password"/>
					</div>
				</div>
								<div class="form-actions">
					<label class="checkbox">
						<input type="checkbox" name="remember" value="1"/> Remember me </label>
						<button type="submit" class="btn green-haze pull-right">
						Login <i class="m-icon-swapright m-icon-white"></i>
						</button>
					</div>
					
					<div class="forget-password">
						<h4>Forgot your password ?</h4>
						<p>
							no worries, click <a href="javascript:;" id="forget-password">
							here </a>
							to reset your password.
						</p>
					</div>
				</form>
				<!-- END LOGIN FORM -->
				<!-- BEGIN FORGOT PASSWORD FORM -->
				<form class="forget-form" action="index.html" method="post">
					<h3>Forget Password ?</h3>
					<p>
						Enter your e-mail address below to reset your password.
					</p>
					<div class="form-group">
						<div class="input-icon">
							<i class="fa fa-envelope"></i>
							<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
						</div>
					</div>
					<div class="form-actions">
						<button type="button" id="back-btn" class="btn">
						<i class="m-icon-swapleft"></i> Back </button>
						<button type="submit" class="btn green-haze pull-right">
						Submit <i class="m-icon-swapright m-icon-white"></i>
						</button>
					</div>
				</form>
				<!-- END FORGOT PASSWORD FORM -->
			</form>
			<!-- END REGISTRATION FORM -->
		</div>
		<!-- END LOGIN -->
		<!-- BEGIN COPYRIGHT -->
		<div class="copyright">
			2014 &copy; Metronic. Admin Dashboard Template.
		</div>
		<!-- END COPYRIGHT -->
		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
		<!-- BEGIN CORE PLUGINS -->
		<!--[if lt IE 9]>
		<script src="/libraries/metronic/theme/assets/global/plugins/respond.min.js"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/excanvas.min.js"></script>
		<![endif]-->
		<script src="/libraries/metronic/theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script src="/libraries/metronic/theme/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="/libraries/metronic/theme/assets/global/plugins/select2/select2.min.js"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="/libraries/metronic/theme/assets/global/scripts/metronic.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/admin/pages/scripts/login.js" type="text/javascript"></script>
		<script src="/libraries/metronic/theme/assets/global/plugins/bootstrap-toastr/toastr.min.js"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
		<script>
		jQuery(document).ready(function() {
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		Login.init();
		Demo.init();
		});
		</script>
		<!-- END JAVASCRIPTS -->
	</body>
	<!-- END BODY -->
</html><?php }} ?>
