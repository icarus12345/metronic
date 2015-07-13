<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
	<div class="page-sidebar navbar-collapse collapse">
		<!-- BEGIN SIDEBAR MENU -->
		<ul class="page-sidebar-menu -page-sidebar-menu-hover-submenu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
			<li class="sidebar-toggler-wrapper">
				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				<div class="sidebar-toggler">
				</div>
				<!-- END SIDEBAR TOGGLER BUTTON -->
			</li>
			
			<li class="sidebar-search-wrapper">
				<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
				<form class="sidebar-search " action="extra_search.html" method="POST">
					<a href="javascript:;" class="remove">
					<i class="icon-close"></i>
					</a>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
						</span>
					</div>
				</form>
				<!-- END RESPONSIVE QUICK SEARCH FORM -->
			</li>
			<li class="heading">
				<h3 class="uppercase">Dashboard</h3>
			</li>
			[{foreach from=$dashboard_menu item=foo}]
			<li>
				<a href="[{$foo->cat_link|default:'#'}]">
					<i class="[{$foo->cat_thumb|default:'fa fa-bars'}]"></i>
					<span class="title">[{$foo->cat_title}]</span>
					[{if $foo->cat_children|count>0}]
					<span class="arrow"></span>
					[{/if}]
				</a>
				[{if $foo->cat_children|count>0}]
				<ul class="sub-menu">
					[{foreach from=$foo->cat_children item=sfoo}]
					<li >
						<a href="[{$sfoo->cat_link|default:'#'}]">
							<i class="[{$sfoo->cat_thumb|default:'fa fa-folder-open-o'}]"></i>
							[{$sfoo->cat_title}]
							[{if $sfoo->cat_children|count>0}]
							<span class="arrow"></span>
							[{/if}]
						</a>
						[{if $sfoo->cat_children|count>0}]
						<ul class="sub-menu">
							[{foreach from=$sfoo->cat_children item=tfoo}]
							<li >
								<a href="[{$tfoo->cat_link|default:'#'}]">
									<i class="[{$tfoo->cat_thumb|default:'fa fa-folder-open-o'}]"></i>
									[{$tfoo->cat_title}]
									[{if $tfoo->cat_children|count>0}]
									<span class="arrow"></span>
									[{/if}]
								</a>
								[{if $tfoo->cat_children|count>0}]
								<ul class="sub-menu">
									[{foreach from=$tfoo->cat_children item=ffoo}]
									<li >
										<a href="[{$ffoo->cat_link|default:'#'}]">
											<i class="[{$ffoo->cat_thumb|default:'fa fa-folder-open-o'}]"></i>
											[{$ffoo->cat_title}]
										</a>
									</li>
									[{/foreach}]
								</ul>
								[{/if}]
							</li>
							[{/foreach}]
						</ul>
						[{/if}]
					</li>
					[{/foreach}]
				</ul>
				[{/if}]
			</li>
			[{/foreach}]
			<li class="heading">
				<h3 class="uppercase">More</h3>
			</li>
			[{if $smarty.session.auth.user->ause_authority=='Administrator'}]
			<li >
				<a href="javascript:;">
					<i class="icon-puzzle"></i>
					<span class="title">Feature</span>
					<span class="arrow"></span>
				</a>
				<ul class="sub-menu">
					<li >
						<a href="index.html">
						<i class="icon-user"></i>
						User Option</a>
					</li>
					<li>
						<a href="/dashboard/cp/category/viewport/111135/cms">
						<i class="icon-folder"></i>
						Dashboard Menu</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-graph"></i>
						New Dashboard #2</a>
					</li>
				</ul>
			</li>
			<li class="">
				<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">eCommerce</span>
					<span class="arrow open"></span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="#">
						<i class="icon-home"></i>
						Dashboard</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-basket"></i>
						Orders</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-tag"></i>
						Order View</a>
					</li>
					<li>
						<a href="#">
							<i class="icon-handbag"></i>
							Products
							<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="#">
									<i class="icon-home"></i>
									Category
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-home"></i>
									Product List
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-home"></i>
									Add Product
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
						<i class="icon-pencil"></i>
						Product Edit</a>
					</li>
					<li>
						<a href="#">
						<i class="icon-user"></i>
						Customer</a>
					</li>
				</ul>
			</li>
			[{/if}]
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<!-- END SIDEBAR -->