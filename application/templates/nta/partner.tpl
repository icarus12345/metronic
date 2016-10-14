[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{if $smarty.const.LANG=='en'}]Partner & Customer[{else}]Đối tác khách hàng[{/if}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li class="active">[{if $smarty.const.LANG=='en'}]Partner & Customer[{else}]Đối tác khách hàng[{/if}]</li>
        </ol>
    </div>
</div>

<div class="container box">
    <div class="box">
        <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Partner & Customer[{else}]Đối tác khách hàng[{/if}]</span></div>
    </div>
</div>
<div class="why-box inverted">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 ">
                <div class="white-box">
                    [{if $smarty.const.LANG=='en'}]
                    <div>EAR OUR CUSTOMERS SAY ABOUT   <a href="#" class="a">NTA</a></div>
                    [{else}]
                    <div>HÃY NGHE KHÁCH HÀNG NÓI GÌ VỀ  <a href="#" class="a">CHÚNG TÔI</a></div>
                    
                    [{/if}]
                    <span></span>
                    <p> [{$settting_data['customerthink']}]</p>
                </div>
            </div>
            <div class="col-sm-6">
                <div id="carousel-product" class="carousel" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        [{for $n=0 to count($sliders)-1}]
                        [{assign var=item value=$sliders[$n]}]
                        <div class="item [{if $n==0}]active[{/if}] testimonia">
                            <div class="nailthumb">
                                <div class="nailthumb-figure-square">
                                    <a href="JavaScript:void(0)" class="nailthumb-container">
                                        <img class="lazy" src="[{$item->image_src}]">
                                    </a>
                                </div>
                            </div>
                            <div class="tit5">[{$item->image_title}]</div>
                            <div class="text-center">[{$item->image_subtitle}]</div>
                            <p class="line-clamp-f-5 qte" style="color:#999"><img src="/assets/images/qte1.png"/> [{$item->image_desc}] <img src="/assets/images/qte2.png"/></p>
                        </div>
                        [{/for}]
                        
                    </div>
                    <ol class="carousel-indicators">
                        [{for $n=0 to count($sliders)-1}]
                        [{assign var=item value=$sliders[$n]}]
                        <li data-target="#carousel-product" data-slide-to="[{$n}]" class="[{if $n==0}]active[{/if}]">
                            <span class="dot"></span>
                        </li>
                        [{/for}]
                    </ol>
                    <a class="left carousel-control" href="#carousel-product" role="button" data-slide="prev"></a>
                    <a class="right carousel-control" href="#carousel-product" role="button" data-slide="next"></a>
                </div>
            </div>
        
        </div>
    </div>
</div>
[{include file=$smarty.const.APPPATH|cat:"templates/nta/widget/partnerbox.tpl"}]


[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]
