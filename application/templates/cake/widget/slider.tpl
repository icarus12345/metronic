[{strip}]
        <div class="container">
            <div class="owl-carousel cake">
                [{foreach from=$sliders item=foo}]
                <div class="item">
                    <div class="slider">
                        <div class="carousel-content">
                            <div class="nailthumb bg-cover" style="background-image:url('[{$foo->image_src|escape:'html'}]')">
                                <div class="nailthumb-container">
                                    <img src="[{$foo->image_src|escape:'html'}]" class="lazy" title="[{$foo->image_title|escape:'html'}]" alt="[{$foo->image_title|escape:'html'}]">
                                </div>
                            </div>
                        </div>
                        <div class="carousel-cap">
                            <img src="/assets/cake/images/slider-cap.png"/>
                            <div>
                                <div>
                                    <div class="cap-tit">
                                        <div class="line-clamp-1">[{$foo->image_title|escape:'html'}]</div>
                                    </div>
                                    <div class="cap-desc word-wrap text-justify">[{$foo->image_desc|escape:'html'}]</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                [{/foreach}]
            </div>
        </div>
        <div class="clearfix"></div>
[{/strip}]
