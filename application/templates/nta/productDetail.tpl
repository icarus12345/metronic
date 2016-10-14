[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{$product->product_title}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li><a href="#">[{if $smarty.const.LANG=='en'}]Product & Service[{else}]Sản Phẩm & Dịch Vụ[{/if}]</a></li>
          <li class="active">[{$product->product_title}]</li>
        </ol>
    </div>
</div>
<div class="box">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 box">
                <div class="tit1"><span>[{$product->product_title}]</span></div>
                <div class="content">
                    [{$product->product_content}]
                </div>
            </div>
            <div class="col-sm-6 box ">
                <div class="video-box">
                    <div class="nailthumb">
                        <div class="nailthumb-figure-75">
                            <a href="JavaScript:void(0)" class="nailthumb-container">
                                <img class="lazy" src="[{$product->product_thumb}]">
                            </a>
                        </div>
                    </div>
                    <div class="video-play">
                        <a href="JavaScript:$('#video-modal').modal('show')" class="nailthumb" >
                            <div class="nailthumb-figure-75">
                                <div class="nailthumb-container">
                                    <img class="lazy" src="[{$product->product_thumb}]">
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="container">
        <div class="tit5" style="text-transform: uppercase;">[{if $smarty.const.LANG=='en'}]Packages of[{else}]CÁC GÓI[{/if}] [{$product->product_title}] <a class="a" href="">NTA</a></div>
        <p class="text-center">[{$product->product_desc}]</p>
        <div class="row">
            [{foreach from=$services item=item}]
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal" onclick="showService([{$item->image_id}])">
                    <img src="[{$item->image_src}]">
                    <span>[{$item->image_title}]</span>
                </a>
            </div>
            [{/foreach}]
            <script type="text/javascript">
            function showService(id){
                $('.sid').hide();
                $('#s-'+id).show();
            }
            </script>
        </div>
    </div>
</div>

<div class="box">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 pull-bottom">
                <div class="item-1 pull-bottom">
                    <div class="nailthumb bsd">
                        <div class="nailthumb-figure-square">
                            <a href="JavaScript:void(0)" class="nailthumb-container">
                                <img class="lazy" src="[{$product->product_cover}]">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="tit1"><span>[{$product->product_title2}]</span></div>
                [{$product->product_content2}]
            </div>
        </div>
    </div>
</div>
<div id="carousel-product" class="carousel" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        [{for $n=0 to count($sliders)-1}]
        [{assign var=item value=$sliders[$n]}]
        <div class="why-box item [{if $n==0}]active[{/if}]" style="background-image:url([{$item->image_src}])">
            <div class="container">
                <div class="row">
                <div class="col-sm-6">
                    [{$item->image_content}]
                </div>
                <div class="col-sm-6 ">
                    <div class="white-box">
                        <div>[{$item->image_title}]</div>
                        <span></span>
                        <p>[{$item->image_desc}]</p>
                    </div>
                </div>
                </div>
            </div>
        </div>
        [{/for}]
        
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
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]
<div class="modal fade" id="video-modal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="nailthumb">
                <div class="nailthumb-figure-75">
                    <iframe class="nailthumb-container" style="border:0"
src="[{$product->product_url}]"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="request-modal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <div class="tit1"><span>Bảng Giá Dịch Vụ</span></div>
            </div>
            <div class="">
                <div class="col-sm-6 pull-bottom">
                    [{foreach from=$services item=item}]
                    <div class="sid" id="s-[{$item->image_id}]">[{$item->image_content}]</div>
                    [{/foreach}]
                    <!-- <div class="btn btn-info btn-block">GÓI TIỆN ÍCH TIẾT KIỆM</div>
                    <ul class="list-task">
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                        <li>Lễ Tân Chuyên Nghiệp</li>
                    </ul>
                    <div class="btn btn-warning btn-block">CHỈ VỚI 490 000VND/THÁNG</div> -->
                </div>
                <div class="col-sm-6 pull-bottom">
                    <div class="tit32">
                        [{if $smarty.const.LANG=='en'}]
                        <div>SEND REQUEST TO <a href="#" class="a">NTA</a></div>
                        [{else}]
                        <div>GỬI YÊU CẦU NHẬN BÁO GIÁ CHO <a href="#" class="a">NTA</a></div>
                        [{/if}]
                    </div>
                    <p class="pull-top pull-bottom">
                        [{if $smarty.const.LANG=='en'}]
                        Or call us now <strong class="a">[{$settting_data['dien-thoai']}]</strong> to get answers to questions.
                        [{else}]
                        Hoặc gọi ngay cho chúng tôi qua số <strong class="a">[{$settting_data['dien-thoai']}]</strong> để được giải đáp các thắc mắc.
                        [{/if}]
                    </p>
                    <form class="" name="frmRequest" id="frmRequest">
                        <div class="form-group">
                            <label>[{if $smarty.const.LANG=='en'}]Full name[{else}]Họ và tên[{/if}] (*)</label>
                            <div>
                                <input 
                                    class="form-control validate[required,maxSize[50]]"
                                    data-prompt-position="topright:0,20"
                                    >
                            </div>
                        </div>
                        <div class="form-group">
                            <label>[{if $smarty.const.LANG=='en'}]Phone[{else}]Số điện thoại[{/if}] (*)</label>
                            <div>
                                <input class="form-control validate[required,maxSize[12]]" data-prompt-position="topright:0,20">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>[{if $smarty.const.LANG=='en'}]Content[{else}]Nội dung[{/if}] (*)</label>
                            <div>
                                <textarea class="form-control validate[required]" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="padding-right:90px;position:relative">
                        <div style="position:relative">
                            <label>[{if $smarty.const.LANG=='en'}]Captcha[{else}]Mã xác thực[{/if}] (*)</label>
                            <div >
                                <div>
                                    <input class="form-control validate[required,maxSize[8]]">
                                </div>
                            </div>
                        </div>
                            <img style="position:absolute;top:22px;right:0" src="[{$smarty.session.captcha.image}]" height="30">
                        </div>
                        <p class="pull-bottom">
                            ([{if $smarty.const.LANG=='en'}]
                                    Verification case sensitive, in case the confirmation captcha is incorrect please create a new captcha.
                                    [{else}]
                                    Mã xác nhận phân biệt hoa thường, trong trường hợp mã xác nhận chưa đúng vui lòng tạo mã xác nhận mới.
                                    [{/if}])
                        </p>
                        <button class="btn btn-warning btn-block" onclick="sendRequest()" type="button">
                        [{if $smarty.const.LANG=='en'}]SEND REQUEST[{else}]GỬI YÊU CẦU CHO NTA[{/if}]
                        </button>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>