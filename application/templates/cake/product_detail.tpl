[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<div class="container">
    <ol class="breadcrumb">
        <li><a href="#"><span class="glyphicon glyphicon-home"></span> &nbsp;Trang chủ</a></li>
        [{if $product->cat}]
        <li><a href="#">[{$product->cat->title[$lang]}]</a></li>
        [{/if}]
        <li class="active">
            <span>[{$product->aTitle[$lang]}]</span>
        </li>
    </ol>

</div>
<pre>[{$product|print_r}]</pre>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]