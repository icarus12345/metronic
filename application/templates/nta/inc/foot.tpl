<!-- FOOTER BEGIN -->
        [{if $smarty.const.LANG=='en'}]
        <footer>
            <div class="container pull-top pull-bottom">
                <!-- FOOTER LEFT BEGIN -->
                <div>
                    <div class="pull-bottom"><a href="trangchu.html"><img src="/assets/images/logo.png"></a></div>
                    <div class="pull-top pull-bottom">Connection to NTA</div>
                    <ul class="social-icons cls pull-bottom">
                        <li><a href="JavaScript:void(0)"><span class="fa fa-facebook"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-google"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-youtube"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-twitter"></span></a></li>
                    </ul>
                    <div class="pull-top pull-bottom foot-inf">
                       Contact with NTA<br/>
                        <span class="fa fa-location-arrow"></span> [{$settting_data['dia-chi']}]<br/>
                        <span class="fa fa-envelope-o"></span> [{$settting_data['email']}]<br/>
                        <span class="fa fa-phone"></span> [{$settting_data['dien-thoai']}]
                    </div>
                    <div class="pull-top pull-bottom">
                        <a href="lienhe.html" class="bbtn">Contact us</a>
                    </div>
                </div>
                <!-- FOOTER LEFT END -->
                <!-- FOOTER RIGHT BEGIN -->
                <div>
                    <div class="f-tit">News</div>
                    [{for $n=0 to 2}]
                    [{if $news_hot[$n]}]
                    [{assign var=item value=$news_hot[$n]}]
                    <div class="item-3">
                        <div class="nailthumb">
                            <div class="nailthumb-figure-square">
                                <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="nailthumb-container">
                                    <img class="lazy" src="[{$item->content_thumb}]">
                                </a>
                            </div>
                        </div>
                        <div class="info">
                            <div class="title"><a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="line-clamp-1">[{$item->content_title}]</a></div>
                            <p class="line-clamp-f-2">[{$item->content_desc}]</p>
                        </div>
                    </div>
                    [{/if}]
                    [{/for}]
                </div>
                <!-- FOOTER LEFT END -->
                <!-- FOOTER RIGHT BEGIN -->
                <div>
                    <div class="f-tit">Search Tag</div>
                    <div class="f-tag pull-bottom">
                        <a href="JavaScript:void(0)">NHÀ BÁN</a>
                        <a href="JavaScript:void(0)">CHO THUÊ</a>
                        <a href="JavaScript:void(0)">CHUNG CƯ</a>
                        <a href="JavaScript:void(0)">THUÊ XƯỞNG</a>
                        <a href="JavaScript:void(0)">BÁN BIỆT THỰ</a>
                        <a href="JavaScript:void(0)">CHUNG CƯ CAO CẤP</a>
                        <a href="JavaScript:void(0)">ĐẤT NỀN</a>
                    </div>
                    <div class="f-tit">Website</div>
                    <ul class="f-list pull-bottom">
                        <li><a href="JavaScript:void(0)">http://www.phongthuy.com</a></li>   
                        <li><a href="JavaScript:void(0)">http://www.batdongsan.com</a></li>   
                        <li><a href="JavaScript:void(0)">http://www.chovaynhadat.com</a></li>   
                    </ul>
                    <!-- <div class="f-tit">Đăng Ký Nhận Tin Nhắn Mới</div>
                    <div class="newleter">
                    <input type="text" placeholder="Email của bạn">
                    <button><span class="fa fa-send"></span></button>
                    </div> -->
                </div>
                <!-- FOOTER RIGHT END -->
            </div>
        </footer>
        <!-- FOOTER END -->
        <div class="after-foot">
            <div class="container clear-fix">
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="/">About</a></li>
                    <li><a href="JavaScript:void(0)">Privacy</a></li>
                    <li><a href="/contact">Contact us</a></li>
                </ul>
                <p>&copy; 2014 All rights reserved.</p>
            </div>
        </div>
        [{else}]
        <footer>
            <div class="container pull-top pull-bottom">
                <!-- FOOTER LEFT BEGIN -->
                <div>
                    <div class="pull-bottom"><a href="trangchu.html"><img src="/assets/images/logo.png"></a></div>
                    <div class="pull-top pull-bottom">Kết nối với cộng đồng NTA</div>
                    <ul class="social-icons cls pull-bottom">
                        <li><a href="JavaScript:void(0)"><span class="fa fa-facebook"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-google"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-youtube"></span></a></li>
                        <li><a href="JavaScript:void(0)"><span class="fa fa-twitter"></span></a></li>
                    </ul>
                    <div class="pull-top pull-bottom foot-inf">
                       Liên hệ với NTA<br/>
                        <span class="fa fa-location-arrow"></span> [{$settting_data['dia-chi']}]<br/>
                        <span class="fa fa-envelope-o"></span> ([{$settting_data['email']}]<br/>
                        <span class="fa fa-phone"></span> [{$settting_data['dien-thoai']}]
                    </div>
                    <div class="pull-top pull-bottom">
                        <a href="lienhe.html" class="bbtn">Liên hệ</a>
                    </div>
                </div>
                <!-- FOOTER LEFT END -->
                <!-- FOOTER RIGHT BEGIN -->
                <div>
                    <div class="f-tit">Thông tin mới</div>
                    [{for $n=0 to 2}]
                    [{if $news_hot[$n]}]
                    [{assign var=item value=$news_hot[$n]}]
                    <div class="item-3">
                        <div class="nailthumb">
                            <div class="nailthumb-figure-square">
                                <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="nailthumb-container">
                                    <img class="lazy" src="[{$item->content_thumb}]">
                                </a>
                            </div>
                        </div>
                        <div class="info">
                            <div class="title"><a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="line-clamp-1">[{$item->content_title}]</a></div>
                            <p class="line-clamp-f-2">[{$item->content_desc}]</p>
                        </div>
                    </div>
                    [{/if}]
                    [{/for}]
                </div>
                <!-- FOOTER LEFT END -->
                <!-- FOOTER RIGHT BEGIN -->
                <div>
                    <div class="f-tit">Tag Tìm Kiếm</div>
                    <div class="f-tag pull-bottom">
                        <a href="JavaScript:void(0)">NHÀ BÁN</a>
                        <a href="JavaScript:void(0)">CHO THUÊ</a>
                        <a href="JavaScript:void(0)">CHUNG CƯ</a>
                        <a href="JavaScript:void(0)">THUÊ XƯỞNG</a>
                        <a href="JavaScript:void(0)">BÁN BIỆT THỰ</a>
                        <a href="JavaScript:void(0)">CHUNG CƯ CAO CẤP</a>
                        <a href="JavaScript:void(0)">ĐẤT NỀN</a>
                    </div>
                    <div class="f-tit">Website Liên Kết</div>
                    <ul class="f-list pull-bottom">
                        <li><a href="JavaScript:void(0)">http://www.phongthuy.com</a></li>   
                        <li><a href="JavaScript:void(0)">http://www.batdongsan.com</a></li>   
                        <li><a href="JavaScript:void(0)">http://www.chovaynhadat.com</a></li>   
                    </ul>
                    <!-- <div class="f-tit">Đăng Ký Nhận Tin Nhắn Mới</div>
                    <div class="newleter">
                    <input type="text" placeholder="Email của bạn">
                    <button><span class="fa fa-send"></span></button>
                    </div> -->
                </div>
                <!-- FOOTER RIGHT END -->
            </div>
        </footer>
        <!-- FOOTER END -->
        <div class="after-foot">
            <div class="container clear-fix">
                <ul>
                    <li><a href="JavaScript:void(0)">Trang Chủ</a></li>
                    <li><a href="JavaScript:void(0)">Giới Thiệu</a></li>
                    <li><a href="JavaScript:void(0)">Điều Khoản Bảo Mật</a></li>
                    <li><a href="JavaScript:void(0)">Liên Hệ</a></li>
                </ul>
                <p>&copy; 2014 All rights reserved.</p>
            </div>
        </div>
        [{/if}]