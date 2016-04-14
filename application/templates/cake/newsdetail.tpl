[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<style type="text/css">body{background: #fafafa}</style>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <li class="active">
            <span>[{$news_detail->aTitle[$lang]}]</span>
        </li>
    </ol>
    
    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/news_detail.tpl"}]
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]