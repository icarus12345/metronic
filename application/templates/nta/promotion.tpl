[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{if $smarty.const.LANG=='en'}]Promotion Information from NTA[{else}]Thông tin khuyễn mãi từ NTA[{/if}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li class="active">[{if $smarty.const.LANG=='en'}]Promotion Information[{else}]Thông tin khuyễn mãi[{/if}]</li>
        </ol>
    </div>
</div>
<div class="container box">
    <div id="carousel-promotion" class="carousel bsd box" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            [{for $n=0 to count($sliders)-1}]
            [{assign var=item value=$sliders[$n]}]
            <div class="orange-box item [{if $n==0}]active[{/if}]">
                <div>
                    <div class="left">
                        <img src="/assets/images/km-tag.png">
                        [{$item->image_content}]
                    </div>
                    <div class="right cover" style="background-image:url([{$item->image_cover}])">
                        <img src="[{$item->image_src}]">
                    </div>
                </div>
            </div>
            [{/for}]
            <ol class="carousel-indicators">
                [{for $n=0 to count($sliders)-1}]
                [{assign var=item value=$sliders[$n]}]
                <li data-target="#carousel-promotion" data-slide-to="[{$n}]" class="[{if $n==0}]active[{/if}]">
                    <span class="dot"></span>
                </li>
                [{/for}]
            </ol>
            <a class="left carousel-control" href="#carousel-promotion" role="button" data-slide="prev"></a>
            <a class="right carousel-control" href="#carousel-promotion" role="button" data-slide="next"></a>
        </div>
    </div>
</div>
<div class="box">
            <div class="container">
                <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Promotion Information[{else}]Thông tin khuyễn mãi[{/if}]</span></div>
                <a class="[{if $type==''}]a[{/if}]" href="/promotion/">[{if $smarty.const.LANG=='en'}]All[{else}]Tất cả[{/if}]</a>
                [{foreach from=$product_list item=foo}]
                 | <a class="[{if $type==$foo->product_id}]a[{/if}]" href='/promotion/[{$foo->product_alias}]/[{$foo->product_id}]/page/'>[{$foo->product_title}]</a>
                [{/foreach}]
                <div class="row">
                    [{foreach from=$news_list item=item}]
                    <div class="col-xs-12 col-mb-6 col-md-4 col-lg-3">
                        <div class="item-6">
                            <div class="nailthumb">
                                <div class="nailthumb-figure-75">
                                    <a href="/[{$item->content_alias}]/k-[{$item->content_id}]" class="nailthumb-container">
                                        <img class="lazy" src="[{$item->content_thumb}]">
                                    </a>
                                </div>
                            </div>
                            <div class="info">
                                <div class="title"><a href="/[{$item->content_alias}]/k-[{$item->content_id}]" class="line-clamp-f-2">[{$item->content_title}]</a></div>
                                <p class="line-clamp-f-3">[{$item->content_desc}]</p>
                                <div class="time"><span class="fa fa-users"></span> [{$item->content_createby|default:'Admin'}] &nbsp;&nbsp;&nbsp;&nbsp;<div class="pull-right"><span class="fa fa-calendar"></span> [{$item->content_insert|date_format:'%d/%m/%Y'}]</div></div>
                                <a href="/[{$item->content_alias}]/k-[{$item->content_id}]" class="btn btn-warning btn-block">[{if $smarty.const.LANG=='en'}]Read more[{else}]XEM CHI TIẾT[{/if}]</a>
                            </div>
                        </div>
                    </div>
                    [{/foreach}]
                </div>

                <div class="text-center">
                    [{$paging}]
                </div>
            </div>
        </div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]