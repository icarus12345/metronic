<div class="f16 page-title">SẢN PHẨM KHUYẾN MÃI</div>
                    <div class="row">
                        [{foreach $discount_products 'pr'}]
                        <div class="col-md-12 col-sm-6 ">
                            <div class="cake-item-small">
                                <div class="line-clamp-1 pr-title-small">
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
                                <div class="product-price line-clamp-1">
                                    [{if $pr->product_discount>0}]
                                    <span class="line-through">[{if $pr->product_prices}]
                                    [{$pr->product_prices.min[$lang].val|number_format:0:".":" "}][{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]-[{$pr->product_prices.max[$lang].val|number_format:0:".":" "}][{/if}]
                                    [{/if}]
                                    </span>
                                    [{/if}]
                                    <span class="[{if $pr->product_discount>0}][{/if}]">
                                    [{if $pr->product_prices}]
                                    &nbsp;&nbsp;&nbsp;&nbsp;[{($pr->product_prices.min[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:".":" "}][{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]-[{($pr->product_prices.max[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:".":" "}][{/if}] Đ
                                    [{/if}]
                                    </span>
                                </div>
                                <div class="nailthumb">
                                    <div class="nailthumb-figure-square">
                                        <a href="#" class="nailthumb-container">
                                            <img data-original="[{$pr->product_thumb}]" class="lazy"/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        [{/foreach}]
                        <div class="clearfix"></div>
                    </div>