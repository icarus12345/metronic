<header id="navbar" class="navbar -navbar-fixed-top" role="banner">
    <!-- top head [ -->
    <div class="comic-header">
        <!-- <div class="container">
            <div class="row">
                <a href="#" class="head-logo">
                </a>
                <div class="search-control">
                    <input type="text" class="" 
                        placeholder="Nội dung tìm kiếm"
                        onblur="$('.comic-header').removeClass('search-on')" onfocus="$('.comic-header').addClass('search-on')" />
                    <button class="search-btn" onclick="$(this).prev().focus()"></button>
                </div>
                <div class="login-head">
                    <div>
                        <a href="#" class="user-icon" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-user"></span>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href='#'>Đăng Nhập</a></li>
                            <li><a href='#'>Đăng Ký</a></li>
                        </ul>
                        <a href="#">Đăng nhập</a>
                        <span> | </span>
                        <a href="#">Đăng ký</a>
                    </div>
                </div>
                <div class="quick-menu-head">
                    <a href="#" class="quick-ico music-ico">
                        <span>Nhạc</span>
                    </a>
                    <a href="#" class="quick-ico video-ico">
                        <span>Video</span>
                    </a>
                    <a href="#" class="quick-ico news-ico">
                        <span>Tin tức</span>
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div> -->
    </div>
    <!-- top head ] -->
    <!-- Menu [ -->
    <div class="nav-menu">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">
                    
                </a>
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navigation">
                    <span>
                        <span class="icon-bar line-1"></span>
                        <span class="icon-bar line-2"></span>
                        <span class="icon-bar line-3"></span>
                    </span>
                </button>
            </div>
            <nav id="navigation" class="collapse navbar-collapse bs-navbar-collapse" role="navigation" style="overflow: hidden" >

                <ul class="nav navbar-nav">
                    <li><a href='#'>Trang chủ</a></li>
                    <li class="has-submenu">
                        <a href="#">Sản phẩm</a>
                        <i data-toggle="dropdown"></i>
                        <div class="dropdown-menu x5">
                            [{foreach $aCategory 'cat'}]
                            <ul>
                                <li class="group-header"><span>[{$cat->title[$lang]}]</span></li>
                                [{foreach $cat->cat_children 'subcat'}]
                                <li><a href='#'>[{$subcat->title[$lang]}]</a></li>
                                [{/foreach}]
                            </ul>
                            [{/foreach}]
                        </div>
                    </li>
                    <li>
                        <a href="#">Công thức - Kinh nghiệm</a>
                    </li>
                    <li>
                        <a href="#">Hướng dẫn<span class="hidden-sm"> mua hàng</span></a>
                    </li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- Menu ] -->
</header>