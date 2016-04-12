[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<style type="text/css">body{background: #fafafa}</style>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <li class="active">
            <span>Về chúng tôi</span>
        </li>
    </ol>
    <div>
        <div class="contact-map">
            <div>
                <div id="map" class="bg-cover" style="background-image:url([{$news_detail->news_thumb|default:'/assets/cake/imgs/about.jpg'}])"></div>
            </div>
            <p class="space-line"></p>
            <p>08/46 Trần Quang Diệu P.10 Q.3 TP.HCM</p>
        </div>
    </div>
    <div class="space-line"></div>
    <div class="space-line"></div>
    <div class="">
        <div class="row">
            <div class="col-lg-9 col-md-8">
                <div class="big-title f24"><b>[{$news_detail->aTitle[$lang]}]</b></div>
                <div class="space-line"></div>
                <div class="space-line"></div>
                <div class="ckeditor">[{$news_detail->aContent[$lang]}]</div>
                <div class="space-line"></div>
                <div class="space-line"></div>
            </div>
            <div class="col-lg-3 col-md-4">
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/accordion-menu.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
            </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]