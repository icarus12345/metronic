[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]
        
<div style="background:#f7f7f7">
<div class="space-line"></div>
<div class="space-line"></div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
        <div class="container">
            <div class="row">
                [{if $news_list[0]}]
                <div class="col-sm-6">
                    <div class="box bg-cover" style='background-image:url([{$news_list[0]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[0]->ti_title}]</div>
                            <p class="line-clamp-f-3">[{$news_list[0]->de_desc}]</p>
                            <a href="/tin-tuc/[{$news_list[0]->news_id}]"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                [{if $news_list[1]}]
                <div class="col-sm-6">
                    <div class="box bg-cover" style='background-image:url([{$news_list[1]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[1]->ti_title}]</div>
                            <p class="line-clamp-f-3">[{$news_list[1]->de_desc}]</p>
                            <a href="/tin-tuc/[{$news_list[1]->news_id}]"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                [{if $news_list[2]}]
                <div class="col-sm-4">
                    <div class="box bg-cover" style='background-image:url([{$news_list[2]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[2]->ti_title}]</div>
                            <p class="line-clamp-f-1">[{$news_list[2]->de_desc}]</p>
                            <a href="/tin-tuc/[{$news_list[2]->news_id}]"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                [{if $news_list[3]}]
                <div class="col-sm-4">
                    <div class="box bg-cover" style='background-image:url([{$news_list[3]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[3]->ti_title}]</div>
                            <p class="line-clamp-f-1">[{$news_list[3]->de_desc}]</p>
                            <a href="/tin-tuc/[{$news_list[3]->news_id}]"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                [{if $news_list[4]}]
                <div class="col-sm-4">
                    <div class="box bg-cover" style='background-image:url([{$news_list[4]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[4]->ti_title}]</div>
                            <p class="line-clamp-f-1">[{$news_list[4]->de_desc}]</p>
                            <a href="/tin-tuc/[{$news_list[4]->news_id}]"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                <div class="clearfix"></div>
            </div>
        </div>
</div>
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-8">
                    <div class="f20 page-title">SẢN PHẨM MỚI</div>
                    <div class="row">
                        [{foreach $products 'pr'}]
                        <div class="col-sm-4 cake-item col-mb-6"
                            title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"
                            >
                            <a href="/san-pham/[{$pr->product_id}]/[{$pr->als_alias}]" class="nailthumb">
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
                        [{/foreach}]
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    
                    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
                    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
                    
                </div>
            </div>
        </div>
        <div class="space-line"></div>
        <div class="space-line"></div>
        <div style="background:#ebebeb">
        <div class="container">
            <div class="f20 page-title">KHÁCH HÀNG NÓI GÌ VỀ CHÚNG TÔI</div>
            <div class="row">
                [{foreach $testimonies 'te'}]
                <div class="col-sm-6">
                    <div class="testimonies">
                        <img src="[{$te->data_data.image}]">
                        <p class="word-wrap">[{$te->data_data.desc.vi}]</p>
                        <b>[{$te->data_data.title.vi}]</b>
                    </div>
                </div>
                [{/foreach}]
            </div>
            <div class="space-line"></div>
            <div class="space-line"></div>
        </div>
        </div>
        [{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]