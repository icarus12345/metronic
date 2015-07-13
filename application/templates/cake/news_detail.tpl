[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]
<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
    <div class="white-box">
        [{if $content}]
            <div class="text-center">
                <h1 class="title">[{$content->content_title|escape:'html'}]</h1>
                <img width="72"  src="/assets/cake/images/line.png"/>
            </div>
            <span class="pull-left label label-info">Ngày [{$content->content_insert|date_format:'%D'}] &nbsp;&nbsp;&nbsp;&nbsp;</span>
            
            <div class="space-line"></div>
            <div class="clearfix"></div>
            [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
            <div class="clearfix"></div>
            [{if $content->content_thumb}]
            <div class="space-line"></div>
            <div class="text-center">
                <div class="">
                    <img class="thumbnail" style="max-width:480px;margin:auto" src="[{$content->content_thumb|escape:'html'|default:''}]"/>
                </div>
            </div>
            <div class="space-line"></div>
            [{/if}]
            <p style="padding:4px 0;margin:0">
                <i>[{$content->content_desc|escape:'html'|default:''}]</i>
            </p>
            <div class="space-line"></div>
            <link rel="stylesheet" type="text/css" href="/libraries/ckeditor/contents.css">
            <div class="ckeditor">
                [{$content->content_content|default:'Nội dung đang cập nhật'}]
            </div>
            [{if $content->content_tag}]
            [{assign "tags" explode(",",$content->content_tag)}]
            <div class="cake-tags">Tags : 
            [{foreach $tags 'tag'}]
            <span>[{$tag}]</span>
            [{/foreach}]
            </div>
            [{/if}]
            [{if $related_contents}]
            <div>
                <div class="text-center">
                    <img width="72" src="/assets/cake/images/line.png">
                </div>
                <div><b>Bài viết khác</b></div>
                <ul>
                    [{foreach $related_contents 'foo'}]
                    <li><a href="/tin-tuc/[{$foo->content_alias|escape:'html'}]">[{$foo->content_title|escape:'html'}]</a></li>
                    [{/foreach}]
                </ul>
            </div>
            [{/if}]
        [{else}]
            <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Bánh bạn cần không tồn tại :).</div>
        [{/if}]
    </div>
</div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]