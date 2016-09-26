<div style="position: relative;z-index: 1;">
    <!-- Slider [ -->
    <div id="slider-Carousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            [{assign 'f' 0}]
            [{foreach $sliders 'sl'}]
            <li data-target="#slider-Carousel" data-slide-to="[{$f}]" class="[{if $f==0}]active[{/if}]">
                <span class="dot"></span>
            </li>
            [{assign 'f' $f+1}]
            [{/foreach}]
        </ol>

        <!-- Wrapper for slides [ -->
        <div class="carousel-inner" role="listbox">
            [{assign 'f' 0}]
            [{foreach $sliders 'sl'}]
            <div class="item [{if $f==0}]active[{/if}] bg-cover" style='background-image:url([{$sl->data_data.image}])'>
                [{assign 'f' $f+1}]
                <div class="container">
                    <div class="cap">
                        <div class="transition">
                            <div class="transition">
                                <div class="transition">
                                    <div class="cat f16">[{$sl->data_data.subtitle.vi}]</div>
                                    <h3 class="f24">[{$sl->data_data.title.vi}]</h3>
                                    <p class="line-clamp-f-3 hiden-mb hidden-xs text-left word-wrap">[{$sl->data_data.desc.vi}]</p>
                                    <br/>
                                    <a href="[{$sl->data_data.link}]" class="btn btn-default2">ĐẶT HÀNG NGAY</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            [{/foreach}]
        </div>
        <!-- Wrapper for slides ] -->
        <a class="left carousel-control" href="#slider-Carousel" role="button" data-slide="prev"></a>
        <a class="right carousel-control" href="#slider-Carousel" role="button" data-slide="next"></a>
    </div>
    <!-- Slider ] -->
</div>
