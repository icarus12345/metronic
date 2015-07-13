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
            [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
            <div class="clearfix"></div>
            <link rel="stylesheet" type="text/css" href="/libraries/ckeditor/contents.css">
            <div class="ckeditor">
                [{$content->content_content|default:'Nội dung đang cập nhật'}]
            </div>
        [{else}]
            <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Bánh bạn cần không tồn tại :).</div>
        [{/if}]
    </div>
</div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]