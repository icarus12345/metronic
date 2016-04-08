[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]
        

        <div class="container">
            <div class="row">
                [{if $news_list[0]}]
                <div class="col-sm-6">
                    <div class="box bg-cover" style='background-image:url([{$news_list[0]->news_thumb}])'>
                        <div>
                            <div class="f20">[{$news_list[0]->ti_title}]</div>
                            <p class="line-clamp-f-3">[{$news_list[0]->de_desc}]</p>
                            <a href="#"></a>
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
                            <a href="#"></a>
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
                            <a href="#"></a>
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
                            <a href="#"></a>
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
                            <a href="#"></a>
                        </div>
                    </div>
                </div>
                [{/if}]
                <div class="clearfix"></div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-8">
                    <div class="f20 page-title">SẢN PHẨM MỚI</div>
                    <div class="row">
                        [{foreach $products 'pr'}]
                        <div class="col-sm-4 cake-item col-mb-6">
                            <a href="#" class="nailthumb">
                                <div class="nailthumb-figure-square">
                                    <div class="nailthumb-container">
                                        <img data-original="[{$pr->product_thumb}]" class="lazy"/>
                                    </div>
                                    <div class="nailthumb-mark hvr-wobble-vertical"></div>
                                </div>
                            </a>
                            <div class="space-line-half"></div>
                            <div class="product-name f16 line-clamp-1">
                                [{$pr->ti_title}][{if $pr->data[1]}] ([{$pr->data[0]->title->vi}][{if $pr->data[1]}]/[{$pr->data[1]->title->vi}][{/if}])[{/if}]
                            </div>
                            <div class="space-line-half"></div>
                            <div class="stars">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="product-price">
                                [{if $pr->data[0]}][{$pr->data[0]->price->vi}][{if $pr->data[1]}]-[{$pr->data[1]->price->vi}][{/if}]D[{/if}]
                            </div>
                            <div class="space-line"></div>
                            <div class="space-line"></div>
                        </div>
                        [{/foreach}]
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="f16 page-title">SẢN PHẨM KHUYẾN MÃI</div>
                    <div class="row">
                        <div class="col-md-12 col-sm-6 ">
                            <div class="cake-item-small">
                                <div class="line-clamp-1">Súng bơm cookies (kim loại/nhựa)</div>
                                <div class="space-line-half"></div>
                                <div class="stars">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="product-price line-clamp-1">120000-150000</div>
                                <div class="nailthumb">
                                    <div class="nailthumb-figure-square">
                                        <a href="#" class="nailthumb-container">
                                            <img data-original="/assets/cake/imgs/1.jpg" class="lazy"/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-6 ">
                            <div class="cake-item-small">
                                <div class="line-clamp-1">Súng bơm cookies (kim loại/nhựa)</div>
                                <div class="space-line-half"></div>
                                <div class="stars">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="product-price line-clamp-1">120000-150000</div>
                                <div class="nailthumb">
                                    <div class="nailthumb-figure-square">
                                        <a href="#" class="nailthumb-container">
                                            <img data-original="/assets/cake/imgs/1.jpg" class="lazy"/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                        <p class="world-wrap">[{$te->data_data.desc.vi}]</p>
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