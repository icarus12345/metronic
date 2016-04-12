<header id="navbar" class="navbar -navbar-fixed-top" role="banner">
    <!-- top head [ -->
    <div class="top-header visible-lg">
        <div class="container">
            <ul class="top-menu">
                <li><a href="/">Trang chủ</a></li>
                <li><a href="/ve-chung-toi">Về chúng tôi</a></li>
                <li><a href="#">Tài khoản</a></li>
                <li><a href="#">Kiểm tra đơn hàng</a></li>
                <li><a href="/lien-he">Liên hệ</a></li>
            </ul>
            <ul class="top-menu pull-right">
                <li><a href="#"><span class="fa fa-phone"></span> +(84) 982 636 618</a></li>
                <li><a href="#"><span class="fa fa-envelope-o"></span> dongocmai179@yahoo.com</a></li>
                <li><a href="#"><span class="fa fa-language"></span> Ngôn ngữ</a></li>
            </ul>
        </div>
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
                    <li><a href='/'>Trang chủ</a></li>
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
                        <a href="/cong-thuc-kinh-nghiem">Công thức - Kinh nghiệm</a>
                    </li>
                    <li>
                        <a href="/huong-dan">Hướng dẫn<span class="hidden-sm"> mua hàng</span></a>
                    </li>
                    <li><a href="/lien-he">Liên hệ</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- Menu ] -->
</header>