[{strip}]
        <div class="head-banner">
            <div class="container">
                <a href="/" class="logo">
                    <img src="/assets/cake/images/logo.png"/>
                </a>
                <div class="slogan">
                    <img src="/assets/cake/images/slogan.png"/>
                </div>
                <div class="hot-line"><i class="fa fa-phone"></i> 0906 125 737</div>
                <div class="cart-info">
                    <span>0</span>
                </div>
            </div>
        </div>
        <header id="navbar" class="navbar" role="banner">
            <div class="container">
                <div>
                    <div class="navbar-header">
                        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
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
                            <li>
                                <a href="#" data-toggle="dropdown">Sản Phẩm</a>
                                <ul class="dropdown-menu">
                                    [{foreach $cates 'foo'}]
                                    <li><a href="[{if !in_array($foo->cat_alias,$fecog.knownCate)}]/san-pham[{/if}]/[{$foo->cat_alias|escape:'html'}]">[{$foo->cat_title|escape:'html'}]</a></li>
                                    [{/foreach}]
                                </ul>
                            </li>
                            <!-- <li><a href="#" onclick="dialog('order-dialog')">Đặt hàng</a></li> -->
                            <li><a href="/hinh-anh" >Ảnh đẹp</a></li>
                            <!-- <li>
                                <a href="#" data-toggle="dropdown">Ảnh đẹp</a>
                                <ul class="dropdown-menu">
                                    <li><a href='#'>Ảnh đẹp trong tháng</a></li>
                                    <li><a href='#'>Album bánh cưới</a></li>
                                    <li><a href='#'>Album bánh sinh nhật</a></li>
                                </ul>
                            </li> -->
                            <li><a href="/cong-thuc">Công thức</a></li>
                            <li><a href="/day-nghe">Dạy nghề</a></li>
                            <li><a href="/nguyen-lieu">Nguyên liệu</a></li>
                            <li><a href="/lien-he" -onclick="dialog('order-dialog')">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
[{/strip}]