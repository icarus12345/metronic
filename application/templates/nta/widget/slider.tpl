<div class="home-slider">
    <div class="owl-carousel" id="owl-home-slider">
        [{foreach from=$sliders item=foo}]
        <div class="item cover" style="background-image:url('[{$foo->image_src|escape:'html'}]')">
            <div class="container">
                <div class="service-blocks row">
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                    <div class="col-sm-6 col-md-4 "><div></div></div>
                </div>
            </div>
        </div>
        [{/foreach}]
    </div>
    <div class="home-blocks">
        <div class="container">
            <div class="service-blocks row">
                [{foreach from=$product_list item=foo}]
                <div class="col-sm-6 col-md-4 ">
                    <div class="sb-item">
                        <div>
                            <div class="line-clamp-f-2">[{$foo->product_title}]</div>
                        </div>
                        <a href="/[{$foo->product_alias}]/p-[{$foo->product_id}]">Xem chi tiết <span class="fa fa-arrow-right"></span></a>
                    </div>
                </div>
                [{/foreach}]
            </div>
        </div>
    </div>
    <div class="mouse"></div>
</div>