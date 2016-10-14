[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/widget/slider.tpl"}]
<div class="container ha-box">
    <div class="row pull-top">
        <div class="col-sm-5 pull-top">
            <div class="thumb">
            <img src="[{$content->content_thumb}]"/>
            </div>
        </div>
        <div class="col-sm-7 pull-top">
            <div class="abu">
                [{$content->content_content}]
            </div>
        </div>
    </div>
</div>
[{include file=$smarty.const.APPPATH|cat:"templates/nta/widget/countbox.tpl"}]
<div class="box">
    <div class="container">
        <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]News and Information[{else}]Thông tin và tin tức[{/if}]</span></div>
        <div class="row">
            [{if $news_hot[0]}]
            [{assign var=item value=$news_hot[0]}]
            <div class="col-sm-6">
                <div class="item-1">
                    <div class="nailthumb">
                        <div class="nailthumb-figure">
                            <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="nailthumb-container">
                                <img class="lazy" src="[{$item->content_thumb}]">
                            </a>
                        </div>
                    </div>
                    <div class="iinfo">
                        <div class="ititle"><div class="">[{$item->content_title}]</div></div>
                        <div class="isub">[{$item->content_createby|default:'Admin'}] - [{$item->content_insert|date_format:'%d tháng %m năm %Y'}]</div>
                        <p class="line-clamp-f-4">[{$item->content_desc}]</p>
                        <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="more a">[{if $smarty.const.LANG=='en'}]Read more[{else}]XEM THÊM[{/if}]</a>
                    </div>
                </div>
            </div>
            [{/if}]
            <div class="col-sm-6">
                [{for $n=1 to 3}]
                [{if $news_hot[$n]}]
                [{assign var=item value=$news_hot[$n]}]
                <div class="item-2">
                    <div class="nailthumb">
                        <div class="nailthumb-figure">
                            <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="nailthumb-container">
                                <img class="lazy" src="[{$item->content_thumb}]">
                            </a>
                        </div>
                    </div>
                    <div class="iinfo">
                        <div class="ititle"><div class="">[{$item->content_title}]</div></div>
                        <div class="isub">[{$item->content_createby|default:'Admin'}] - [{$item->content_insert|date_format:'%d tháng %m năm %Y'}]</div>
                        <p class="line-clamp-f-3">[{$item->content_desc}]</p>
                        <a href="/[{$item->content_alias}]/n-[{$item->content_id}]" class="more a">[{if $smarty.const.LANG=='en'}]Read more[{else}]XEM THÊM[{/if}]</a>
                    </div>
                </div>
                [{/if}]
                [{/for}]
                

            </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/widget/partnerbox.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]