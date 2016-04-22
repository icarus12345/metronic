[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<style type="text/css">body{background: #fafafa}</style>
<script type="text/javascript">
    function playVideo(url){
        var youtubeUrl = url.match(/watch\?v=([a-zA-Z0-9\-_]+)/),
            youtubeShortUrl = url.match(/youtu\.be\/([a-zA-Z0-9\-_]+)/);
        if (youtubeShortUrl) {
            youtubeUrl = youtubeShortUrl;
        }
        iframe = '<iframe width="560" height="315" src="//www.youtube.com/embed/' + youtubeUrl[1] + '?autoplay=1" frameborder="0" allowfullscreen></iframe>';
        
        $('#video-play').html(iframe);
    }
</script>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <li class="active">
            <span>Công thức - kinh nghiệm</span>
        </li>
    </ol>
    <div>
        <div class="contact-map">
            <div>
                <div id="map" class="bg-cover" style="background-image:url([{$news_detail->news_thumb|default:'/assets/cake/imgs/about.jpg'}])"></div>
            </div>
            <p class="space-line"></p>
            <p>[{$setting_data.address.data_data.value[$lang]}]</p>
        </div>
    </div>
    <div class="space-line"></div>
    <div class="space-line"></div>
    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
    <div class="">
        <div class="row">
            <div class="col-lg-9 col-md-8">
                <div class="nailthumb">
                    <div id="video-play" class="nailthumb-figure bg-cover" style="background-image:url([{$videos[0]->data_data.image}])">
                        <div class="nailthumb-fluid bg-play" onclick="playVideo('[{$videos[0]->data_data.video}]')"
                            title="[{$videos[0]->data_data.title[$lang]}]" ></div>
                    </div>
                </div>
                <div class="space-line"></div>
                [{if $videos|count > 1}]
                <div id="owl-video" class="owl-carousel">
                    [{foreach $videos key=i item=video name=foo}]
                    [{if $smarty.foreach.foo.index > 0}]
                    <!-- Item [ -->
                    <div class="item">
                        <div class="nailthumb">
                            <div class="nailthumb-figure-square bg-cover" 
                            title="[{$video->data_data.title[$lang]}]" 
                            onclick="playVideo('[{$video->data_data.video}]')" 
                            style="background-image:url([{$video->data_data.image}])">
                            <div class="nailthumb-fluid bg-play"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Item ] -->
                    [{/if}]
                    [{/foreach}]
                </div>
                [{/if}]
                <div class="space-line"></div>
                <div class="space-line-md"></div>
                [{foreach $formulas 'news'}]
                <div class="row">
                    <div class="col-sm-5">
                        <a href="/cong-thuc-kinh-nghiem/[{$news->als_alias}]" class="nailthumb" style="max-width:480px;margin:auto">
                            <div class="nailthumb-figure-9-16 bg-cover" 
                            title="[{$news->ti_title}]" 
                            style="background-image:url([{$news->news_thumb}])">
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-7">
                        <div class="f16"><a href="/cong-thuc-kinh-nghiem/[{$news->als_alias}]"><b>[{$news->ti_title}]</b></a></div>
                        <div class="space-line"></div>
                        <div class="line-clamp-4 text-justify">[{$news->de_desc}]</div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                </div>
                [{foreachelse}]
                <div style="text-align:center;border:1px dashed #ccc;padding:80px 0">Đang cập nhật.</div>
                [{/foreach}]
                [{if $paging}]
                [{$paging}]
                [{/if}]
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