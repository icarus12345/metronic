[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]

<div class="space-line"></div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
<div class="space-line"></div>
<div class="container">
    <div class="white-box">
        <div class="container">
			<div class="text-center">
                THƯ VIỆN ẢNH<br/>
				<img width="72"  src="/assets/cake/images/line.png"/>
			</div>
        </div>
        <div class="clearfix"></div>
        <div class="space-line"></div>
        <div class="gallery-album">
            [{foreach from=$album_list item=foo}]
                [{assign var=images value=null}]
                [{assign var=img value=null}]
                [{if $foo->album_images|default:''!=''}]
                    [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$foo->album_images}]
                    [{assign var=img value=$images[0]}]
                [{else}]
                    [{assign var=img value=$foo->album_thumb}]
                [{/if}]
            <div class="album-item">
                <div>
                    <div class="nailthumb">
                        <a  class="swipebox" -rel="[{$foo->album_alias|escape:'html'}]" title="[{$foo->album_title|escape:'html'}]" href="[{$img|escape:'html'}]">
                            <div class="nailthumb-figure">
                                <div class="nailthumb-container">
                                    <img src="[{$foo->album_thumb|escape:'html'}]" class="lazy" title="[{$foo->album_title|escape:'html'}]" alt="[{$foo->album_title|escape:'html'}]"/>
                                </div>
                                <div class="nailthumb-mark">
                                    [{$foo->album_title|escape:'html'}]
                                </div>
                            </div>
                        </a>
                        [{if $images}]
                        [{for $n=1 to count($images)-1}]
                            <a class="swipebox" -rel="[{$foo->album_alias|escape:'html'}]" title="[{$foo->album_title|escape:'html'}]" href="[{$images[$n]|escape:'html'}]"></a>
                        [{/for}]
                        [{/if}]
                    </div>
                </div>
            </div>
            [{foreachelse}]
            <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div>
            [{/foreach}]
            <div class="clearfix"></div>
            [{$paging}]
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]