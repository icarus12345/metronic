<div class="box">
    <div class="container">
        <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Customer & Partner[{else}]Đối tác và Khách hàng[{/if}]</span></div>
        <div class="partner-box">
            <div class="owl-carousel owl-partner" id="owl-partner">
            [{foreach from=$qcs item=item}]
            <div class="item">
                <div class="cover" style="background-image:url([{$item->image_src}])">
                    
                </div>
            </div>
            [{/foreach}]
            </div>
        </div>
    </div>
</div>