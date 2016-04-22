[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<style type="text/css">body{background: #fafafa}</style>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        [{if $cat}]
        <li class="active">
            <span>[{$cat->title[$lang]}]</span>
        </li>
        [{else}]
        <li class="active">
            <span>Sản phẩm</span>
        </li>
        [{/if}]
    </ol>
    [{if $cat}]
    <div>
        <div class="contact-map">
            <div>
                <div id="map" class="bg-cover" style="background-image:url('[{$cat->cat_cover|default:'/assets/cake/imgs/cat.jpg'}]')"></div>
            </div>
        </div>
    </div>
    <div class="space-line"></div>
    <div class="space-line"></div>
    [{/if}]
    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
        <div class="row">
            <div class="col-lg-9 col-md-8">
                [{if $cat}]
                <div class="f20 page-title">[{$cat->title[$lang]}]</div>
                [{/if}]
                <div class="row">
                    [{foreach $product_list key=i item=pr name=foo}]
                    <div class="col-sm-6 cake-item col-mb-6 col-md-4" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
                        <a href="/san-pham/[{$pr->als_alias}]" class="nailthumb">
                            <div class="nailthumb-figure-square">
                                <div class="nailthumb-container">
                                    <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                                </div>
                                <div class="nailthumb-mark hvr-wobble-vertical"></div>
                            </div>
                            [{if $pr->product_discount>0}]
                            <span class="discount-label">-[{$pr->product_discount}]%</span>
                            [{/if}]
                        </a>
                        <div class="space-line-half"></div>
                        <div class="product-name f16 line-clamp-1">
                            [{$pr->ti_title}]
                            [{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]
                            ([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])
                            [{/if}]
                        </div>
                        <div class="space-line-half"></div>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                        </div>
                        <div class="product-price">
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
                        <div class="space-line"></div>
                        <div class="space-line"></div>
                    </div>
                    [{foreachelse}]
                    <div class="container"><div style="text-align:center;border:1px dashed #ccc;padding:80px 0">Đang cập nhật.</div></div>
                    [{/foreach}]
                    <div class="clearfix"></div>
                    [{if $paging}]
                    [{$paging}]
                    [{/if}]
                    <div class="space-line-md"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4">
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/accordion-menu.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
            </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]