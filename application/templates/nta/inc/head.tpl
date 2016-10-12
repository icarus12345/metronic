<header id="navbar" class="navbar navbar-fixed-top" role="banner">
        <!-- Menu [ -->
        <div class="">
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
                <div class="right-menu">
                    <a href="#"><span class="fa fa-phone-square"></span> +84 9xx xxx xxx</a>
                    <a href="#"><span class="fa fa fa-envelope"></span> support@domain.com</a>
                    <a href="#"><span class="fa fa fa-language"></span></a>
                    <a href="#"><span class="fa fa fa-language"></span></a>
                </div>
                <nav id="navigation" class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href='#'>Trang Chủ</a></li>
                        <li><a href='#'>Giới Thiệu</a></li>
                        <li>
                            <a href="#" data-toggle="dropdown">Sản Phẩm & Dịch Vụ</a>
                            <ul class="dropdown-menu">
                                [{foreach from=$product_list item=foo}]
                                <li><a href='/[{$foo->product_alias}]/p-[{$foo->product_id}]'>[{$foo->product_title}]</a></li>
                                [{/foreach}]
                            </ul>
                        </li>
                        <li><a href='#'>Khuyến mãi</a></li>
                        <li><a href='#'>Tin tức</a></li>
                        <li><a href='#'>Tuyển dụng</a></li>
                        <li><a href='#'>Đối tắc</a></li>
                        <li><a href='#'>Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- Menu ] -->
    </header>