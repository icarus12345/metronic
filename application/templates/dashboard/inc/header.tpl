<iframe id="integration_asynchronous" name="integration_asynchronous" style="width: 0;height: 0;border: 0;position: absolute"></iframe>
<div id="iEntryDialog" class="iEntryDialog" style="display:none"></div>
<div id="kc-finder-popup" class="metronic-popup" style="z-index:2101">
    <div class="widget" style="width:100%;height:100%;position:absolute;top:0;left:0">
        <div class="modal-header">
            <h4>KCFinder Image manager</h4>
            <ul class="navbar-icons" style="position: absolute;right: 0;top:0px;">
                <li><a href="JavaScript:$('#kc-finder-popup').hide()" title="Go Back" onclick=""><i class="fa fa-reply-all"></i></a></li>
            </ul>
        </div>
        <div class="kc-finder-content" style="position: absolute;top:40px;left:0;width:100%;bottom:0;">
            
        </div>
    </div>
</div>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner container">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="/dashboard">
				<div style="margin: 12px 0 0 0;line-height:20px;font-size:17px;display:inline-block;font-family:'Century Gothic','Muli'">
					<span style="color:#d64635">CPANEL</span> <span style="color: gray">1109</span>
				</div>
			</a>
			<div class="menu-toggler sidebar-toggler hide">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" class="img-circle" src="/libraries/metronic/theme/assets/admin/layout/img/avatar3_small.jpg"/>
					<span class="username username-hide-on-mobile">[{$smarty.session.auth.user->ause_name|default:'Unknown'}]</span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<li>
							<a href="JavaScript:accountdialog()">
							<i class="icon-user"></i> My Profile </a>
						</li>
						<li>
							<a href="JavaScript:addNotice('Function is updatting...','warning');">
							<i class="icon-calendar"></i> My Calendar </a>
						</li>
						<li>
							<a href="JavaScript:addNotice('Function is updatting...','warning');">
							<i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
							3 </span>
							</a>
						</li>
						<li>
							<a href="JavaScript:addNotice('Function is updatting...','warning');">
							<i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
							7 </span>
							</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="JavaScript:addNotice('Function is updatting...','warning');"><i class="icon-lock"></i> Lock Screen </a>
						</li>
						<li>
							<a href="JavaScript:document.frmLogout.submit()"><i class="icon-key"></i> Log Out </a>
						</li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
				
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix"></div>
	<form id="frmLogout" name="frmLogout" method="post">
		<input type="hidden" name="action" value="logout">
	</form>
<div id="infoDialog" style="display:none">
	<form id="myinfoForm" name="myinfoForm" method="post" target="integration_asynchronous">
		<div class="pull-bottom control-group">
        	<div>Display Name (*):</div>
	        <input type="text" 
	          	class="form-control validate[required],minSize[4]"
	          	data-prompt-position="topLeft:0,20"
	          	name="ause_name"
	          	value="[{$smarty.session.auth.user->ause_name|escape|default:''}]"
	          	/>
      	</div>
      	<div class="control-group pull-bottom">
            <div>Email :</div>
            <input type="text" 
                class="form-control validate[required,custom[email]]" 
                value="[{$smarty.session.auth.user->ause_email|escape|default:''}]" 
                name="ause_email"
                >
        </div>
        
      	<div class="pull-bottom control-group">
        	<div>Current Password (*):</div>
	        <input type="password" 
	          	class="form-control"
	          	data-prompt-position="topLeft:0,20"
	          	name="ause_password_current"
	          	/>
      	</div>
      	<div class="control-group pull-bottom-">
            <div>New Password :</div>
            <div class="input-append">
                <input type="text" class="form-control validate[minSize[8]]" 
                    placeholder="Current password"
                    name="ause_password"
                    value=""
                    />
                <span class="add-on" title="Random new password" onclick="document.myinfoForm.ause_password.value = getNewPass()">
                    <i class="fa fa-random"></i>
                </span>
            </div>
        </div>
	</form>
</div>