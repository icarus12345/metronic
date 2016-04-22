<div>
    <div class="contact-map">
        <div>
            <div id="map" class="bg-cover" style="background-image:url([{$news_detail->news_cover|default:'/assets/cake/imgs/about.jpg'}])"></div>
        </div>
    </div>
</div>
<div class="space-line"></div>
<div class="space-line"></div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
<div class="">
    <div class="row">
        <div class="col-lg-9 col-md-8">
            <div class="big-title f24"><b>[{$news_detail->aTitle[$lang]}]</b></div>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <div><span class="fa fa-calendar"></span> [{$news_detail->news_insert|date_format:"%A, %B %e, %Y"}]</div>
            <div class="space-line"></div>
            [{if $news_detail->aContent[$lang]}]
            <div class="ckeditor">[{$news_detail->aContent[$lang]}]</div>
            [{else}]
            <div style="text-align:center;border:1px dashed #ccc;padding:80px 0">Đang cập nhật.</div>
            [{/if}]
            <div class="space-line"></div>
            [{if $news_detail->aTag[$lang]}]
            <div><b>Tags : </b>
            [{foreach ','|explode:$news_detail->aTag[$lang] 'tag'}]
            <span class="label label-primary">[{$tag}]</span>
            [{/foreach}]
            </div>
            <div class="space-line-md"></div>
            [{/if}]
            <div class="space-line"></div>

        </div>
        <div class="col-lg-3 col-md-4">
            [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/accordion-menu.tpl"}]
            [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
            [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
        </div>
    </div>
</div>