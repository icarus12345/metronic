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
<div class="count-box">
    <div class="container">
        <div class="col-xs-4">
            <div>
                <div class="num">10</div>
                <p>ĐANG TRUY CẬP</p>
            </div>
        </div>
        <div class="col-xs-4">
            <div>
                <div class="num">10</div>
                <p>TRUY CẬP TRONG NGÀY</p>
            </div>
        </div>
        <div class="col-xs-4">
            <div>
                <div class="num">10</div>
                <p>TỔNG TRUY CẬP</p>
            </div>
        </div>
    </div>
</div>
