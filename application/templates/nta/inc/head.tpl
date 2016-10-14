<header id="navbar" class="navbar navbar-fixed-top" role="banner">
        <!-- Menu [ -->
        <div class="">
            <div class="container">
                <div class="navbar-header">
                    <a href="/" class="navbar-brand">
                        
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
                    <a href="#"><span class="fa fa-phone-square"></span> [{$settting_data['dien-thoai']}]</a>
                    <a href="#"><span class="fa fa fa-envelope"></span> [{$settting_data['email']}]</a>
                    <a href="?lang=vi"><span class="fa fa fa-language"></span></a>
                    <a href="?lang=en"><span class="fa fa fa-language"></span></a>
                </div>
                [{if $smarty.const.LANG=='en'}]
                <nav id="navigation" class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li class="[{if $aciveMenu == 'partner'}]active[{/if}]"><a href='/'>Home</a></li>
                        <li class="[{if $aciveMenu == 'about'}]active[{/if}]"><a href='/about'>About</a></li>
                        <li class="[{if $aciveMenu == 'product'}]active[{/if}]">
                            <a href="#" data-toggle="dropdown">Product & Service</a>
                            <ul class="dropdown-menu">
                                [{foreach from=$product_list item=foo}]
                                <li><a href='/[{$foo->product_alias}]/p-[{$foo->product_id}]'>[{$foo->product_title}]</a></li>
                                [{/foreach}]
                            </ul>
                        </li>
                        <li class="[{if $aciveMenu == 'promotion'}]active[{/if}]"><a href='/promotion'>Promotion</a></li>
                        <li class="[{if $aciveMenu == 'news'}]active[{/if}]"><a href='/news'>News</a></li>
                        <li class="[{if $aciveMenu == 'recruitment'}]active[{/if}]"><a href='/recruitment'>Recruitment</a></li>
                        <li class="[{if $aciveMenu == 'partner'}]active[{/if}]"><a href='/partner'>Partner</a></li>
                        <li class="[{if $aciveMenu == 'contact'}]active[{/if}]"><a href='/contact'>Contact us</a></li>
                    </ul>
                </nav>
                [{else}]
                <nav id="navigation" class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href='/'>Trang Chủ</a></li>
                        <li><a href='/gioi-thieu'>Giới Thiệu</a></li>
                        <li>
                            <a href="#" data-toggle="dropdown">Sản Phẩm & Dịch Vụ</a>
                            <ul class="dropdown-menu">
                                [{foreach from=$product_list item=foo}]
                                <li><a href='/[{$foo->product_alias}]/p-[{$foo->product_id}]'>[{$foo->product_title}]</a></li>
                                [{/foreach}]
                            </ul>
                        </li>
                        <li><a href='/khuyen-mai'>Khuyến mãi</a></li>
                        <li><a href='/tin-tuc'>Tin tức</a></li>
                        <li><a href='/tuyen-dung'>Tuyển dụng</a></li>
                        <li><a href='/doi-tac'>Đối tắc</a></li>
                        <li><a href='/lien-he'>Liên hệ</a></li>
                    </ul>
                </nav>
                [{/if}]
            </div>
        </div>
        <!-- Menu ] -->
    </header>