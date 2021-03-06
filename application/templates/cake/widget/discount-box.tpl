<div class="space-line"></div>
<div class="big-title f16">SẢN PHẨM KHUYẾN MÃI</div>
<div class="space-line-md"></div>
<div class="row">
    [{foreach $discount_products 'pr'}]
    <div class="col-md-12 col-sm-6 ">
        <div class="cake-item-small" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
            <div>
                <a href="/san-pham/[{$pr->als_alias}]" class="line-clamp-1 pr-title-small">
                [{$pr->ti_title}]
                [{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]
                ([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])
                [{/if}]
                </a>
            </div>
            <div class="space-line-half"></div>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
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
                    <a href="/san-pham/[{$pr->als_alias}]" class="nailthumb-container">
                        <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
    [{/foreach}]
    <div class="clearfix"></div>
</div>
<div class="space-line-md"></div>
<div class="big-title f16">SẢN PHẨM HOT</div>
<div class="space-line-md"></div>
<div class="row">
    [{foreach $hot_products 'pr'}]
    <div class="col-md-12 col-sm-6 ">
        <div class="cake-item-small" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
            <div>
                <a href="/san-pham/[{$pr->als_alias}]" class="line-clamp-1 pr-title-small">
                [{$pr->ti_title}]
                [{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]
                ([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])
                [{/if}]
                </a>
            </div>
            <div class="space-line-half"></div>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
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
                    <a href="/san-pham/[{$pr->als_alias}]" class="nailthumb-container">
                        <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
    [{/foreach}]
    <div class="clearfix"></div>
</div>
<div class="space-line-md"></div>
<div class="big-title f16">SẢN PHẨM MỚI</div>
<div class="space-line-md"></div>
<div class="row">
    [{foreach $products key=i item=pr name=foo}]
        [{if $smarty.foreach.foo.index == 5}]
            [{break}]
        [{/if}]
    <div class="col-md-12 col-sm-6 ">
        <div class="cake-item-small" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]">
            <div>
                <a href="/san-pham/[{$pr->als_alias}]" class="line-clamp-1 pr-title-small">
                [{$pr->ti_title}]
                [{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]
                ([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])
                [{/if}]
                </a>
            </div>
            <div class="space-line-half"></div>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
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
                    <a href="/san-pham/[{$pr->als_alias}]" class="nailthumb-container">
                        <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
    [{/foreach}]
    <div class="clearfix"></div>
</div>