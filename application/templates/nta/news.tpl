[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{if $smarty.const.LANG=='en'}]NEWS OF NTA[{else}]TIN TỨC TỪ NTA[{/if}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li class="active">[{if $smarty.const.LANG=='en'}]News[{else}]Tin tức[{/if}]</li>
        </ol>
    </div>
</div>
<div class="box ">
    <div class="container">
        <div class="news-box">
            <div id="carousel-news" class="carousel" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    [{for $n=0 to 4}]
                    [{if $news_hot[$n]}]
                    [{assign var=item value=$news_hot[$n]}]
                    <div class="item [{if $n==0}]active[{/if}]">
                        <div class="nailthumb bsd">
                            <div class="nailthumb-figure">
                                <a href="JavaScript:void(0)" class="nailthumb-container">
                                    <img class="lazy" src="[{$item->content_thumb}]">
                                </a>
                            </div>
                        </div>
                        <div class="info">
                            <h4>[{$item->content_title}]</h4> 
                            <p class="line-clamp-4">[{$item->content_desc}]</p>
                            <div class="pull-top"><span class="fa fa-users"></span> [{$item->content_createby|default:'Admin'}] &nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-calendar"></span> [{$item->content_insert|date_format:'%d/%m/%Y'}]</div>
                        </div>
                    </div>
                    [{/if}]
                    [{/for}]
                    <a class="left carousel-control" href="#carousel-news" role="button" data-slide="prev"></a>
                    <a class="right carousel-control" href="#carousel-news" role="button" data-slide="next"></a>
                </div>
                <ol class="carousel-indicators">
                    [{for $n=0 to 4}]
                    [{if $news_hot[$n]}]
                    [{assign var=item value=$news_hot[$n]}]
                    <li data-target="#carousel-news" data-slide-to="[{$n}]" class="[{if $n==0}]active[{/if}] item-5">
                        <div class="nailthumb">
                            <div class="nailthumb-figure">
                                <a href="JavaScript:void(0)" class="nailthumb-container">
                                    <img class="lazy" src="[{$item->content_thumb}]">
                                </a>
                            </div>
                        </div>
                        <div class="info">
                            <div class="title"><a href="#" class="line-clamp-1">[{$item->content_title}]</a></div>
                            <p class="line-clamp-f-2">[{$item->content_desc}]</p>
                        </div>
                    </li>
                    [{/if}]
                    [{/for}]
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="box">
            <div class="container">
                <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]OTHER NEWS[{else}]CÁC  TIN KHÁC TỪ NTA[{/if}]</span></div>
                <div class="row">
                    [{foreach from=$news_list item=item}]
                    <div class="col-xs-12 col-mb-6 col-md-4 col-lg-3">
                        <div class="item-6">
                            <div class="nailthumb">
                                <div class="nailthumb-figure-75">
                                    <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="nailthumb-container">
                                        <img class="lazy" src="[{$item->content_thumb}]">
                                    </a>
                                </div>
                            </div>
                            <div class="info">
                                <div class="title"><a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="line-clamp-f-2">[{$item->content_title}]</a></div>
                                <p class="line-clamp-f-3">[{$item->content_desc}]</p>
                                <div class="time"><span class="fa fa-users"></span> [{$item->content_createby|default:'Admin'}] &nbsp;&nbsp;&nbsp;&nbsp;<div class="pull-right"><span class="fa fa-calendar"></span> [{$item->content_insert|date_format:'%d/%m/%Y'}]</div></div>
                                <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="btn btn-warning btn-block">[{if $smarty.const.LANG=='en'}]Read more[{else}]XEM CHI TIẾT[{/if}]</a>
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