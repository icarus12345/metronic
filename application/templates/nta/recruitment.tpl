[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{if $smarty.const.LANG=='en'}]Recruiment[{else}]Tuyển dụng[{/if}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li class="active">[{if $smarty.const.LANG=='en'}]Recruiment[{else}]Tuyển dụng[{/if}]</li>
        </ol>
    </div>
</div>
<div class="box">
    <div class="container  pull-top">
        <div class="row  pull-top">
            <div class="col-sm-8 col-md-9  pull-top">
                <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Recruiment news[{else}]Thông tin tyển dụng[{/if}]</span></div>
                [{foreach from=$news_list item=item}]
                <div class="item-7">
                    <div class="nailthumb">
                        <div class="nailthumb-figure-square">
                            <a href="/[{$item->content_alias}]/r-[{$item->content_id}]" class="nailthumb-container">
                                <img class="lazy" src="[{$item->content_thumb}]">
                            </a>
                        </div>
                    </div>
                    <div class="info">
                        <div class="title"><a href="#" class="line-clamp-1">[{$item->content_title}]</a></div>
                        <p class="line-clamp-f-3">[{$item->content_desc}]</p>
                        <a href="#" class="btn btn-warning">[{if $smarty.const.LANG=='en'}]Read more[{else}]XEM CHI TIẾT[{/if}]</a>
                    </div>
                </div>
                [{/foreach}]
                <div class="text-center">
                    [{$paging}]
                </div>
            </div>
                <div class="col-sm-4 col-md-3 partners-box">
                    <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Partner[{else}]Đối tác[{/if}]</span></div>
                    <div class="row">
                        [{foreach from=$partners item=item}]
                        <div class="col-xs-6 col-mb-4 col-sm-12">
                            <div class="nailthumb">
                                <div class="nailthumb-figure-square">
                                    <a href="JavaScript:void(0)" class="nailthumb-container">
                                        <img class="lazy" src="[{$item->image_src}]">
                                    </a>
                                </div>
                            </div>
                        </div>
                        [{/foreach}]
                    </div>
                </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]