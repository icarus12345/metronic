<div class="footer">
            <div class="container">
                <div class="row">
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                        
                        <div class="col-sm-4 list-info">
                            <div class="titl"><b>THÔNG TIN</b></div>
                            <div class="space-line"></div>
                            <ul>
                                <li><a href="#">CỬA HÀNG DỤNG CỤ LÀM BÁNH AN PHÚ</a></li>
                                <li><a href="#"><i class="fa fa-map-marker"></i> 108/46 Trần Quang Diệu P.10 Q.3 TP.HCM</a>
                                <li><a href="#"><i class="fa fa-mobile"></i> 098 263 6618</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> hotro@dungculambanhanphu.com</a></li>
                            </ul>
                            <div class="space-line"></div>
                            <div class="space-line"></div>
                        </div>
                        <div class="col-sm-4 list-info">
                            <div class="titl"><b>SẢN PHẨM MỚI</b></div>
                            <div class="space-line"></div>
                            [{foreach from=$products key=i item=pr name=foo}]
                                [{if $smarty.foreach.foo.index == 2}]
                                    [{break}]
                                [{/if}]
                            <div class="cake-item-small2">
                                <div>
                                    <a href="/san-pham/[{$pr->product_id}]" class="line-clamp-1 pr-title-small" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
                                        [{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]
                                    </a>
                                </div>
                                <div class="space-line-half"></div>
                                <div class="">
                                    <a href="/danh-muc/[{$pr->product_category}]"><i class="fa fa-tags"></i> [{if $pr->cat}][{$pr->cat->title[$lang]}][{/if}]</a>
                                </div>
                                <div class="product-price line-clamp-1">
                                    [{if $pr->product_discount>0}]
                                    [{if $pr->product_prices}]
                                        <span class="line-through">
                                        [{$pr->product_prices.min[$lang].val|number_format:0:",":"."}]
                                        </span>
                                        <sup>Đ</sup>
                                        [{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]
                                            -
                                            <span class="line-through">
                                            [{$pr->product_prices.max[$lang].val|number_format:0:",":"."}]
                                            </span>
                                            <sup>Đ</sup>
                                        [{/if}]
                                    [{/if}]
                                    [{/if}]
                                    <span class="[{if $pr->product_discount>0}]pull-right[{/if}]">
                                    [{if $pr->product_prices}]
                                        [{($pr->product_prices.min[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:",":"."}]
                                        <sup>Đ</sup>
                                        [{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]
                                            -
                                            [{($pr->product_prices.max[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:",":"."}]
                                            <sup>Đ</sup>
                                        [{/if}]
                                    [{/if}]
                                    </span>
                                </div>
                                <div class="nailthumb">
                                    <div class="nailthumb-figure-square">
                                        <a href="/san-pham/[{$pr->product_id}]" class="nailthumb-container" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
                                            <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            [{/foreach}]
                            <div class="space-line"></div>
                            <div class="space-line"></div>
                        </div>
                        <div class="col-sm-4 list-info ">
                            <div class="titl"><b>TÌM KIẾM NHIỀU NHẤT</b></div>
                            <div class="space-line"></div>
                            <div class="tags">
                            <a href="#">dụng cụ làm bánh</a>
                            <a href="#">lò lướng bánh</a>
                            <a href="#">bột</a>
                            <a href="#">thiết bị</a>
                            <!-- <a href="#">nguyên liệu làm bánh</a> -->
                            </div>
                            <div class="titl"><b>WEBSITE LIÊN KẾT</b></div>
                            <div class="space-line"></div>
                            <a href="#">banhyeu.com</a><br/>
                            <a href="#">banhngononline.com</a><br/>
                            <a href="#">nulljean.com</a>
                            <div class="space-line"></div>
                            <div class="space-line"></div>
                        </div>
                </div>
            </div>
        </div>
        <div class="footer-menu">
            <div class="container">
                <a href="/">Trang chủ</a>
                <a href="#">Giỏ hàng</a>
                <a href="#">Tài Khoản của bạn</a>
                <a href="/ve-chung-toi">Về Chúng Tôi</a>
                <a href="/lien-he">Liên Hệ</a>
            </div>
        </div>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="col-sm-6">Power by Creative Design Studio</div>
                    <div class="col-sm-6 text-right"></div>
                    <div class="clearfix"></div>
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                </div>