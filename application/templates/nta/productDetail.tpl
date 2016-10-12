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
          <li><a href="#">Sản Phẩm & Dịch Vụ</a></li>
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
        <div class="tit5">CÁC GÓI DỊCH VỤ VĂN PHÒNG THÔNG MINH <a class="a" href="">NTA</a></div>
        <p class="text-center">[{$product->product_desc}]</p>
        <div class="row">
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal">
                    <img src="/assets/images/s2.png">
                    <span>GÓI TIỆN ÍCH - TIẾT KIỆM</span>
                </a>
            </div>
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal">
                    <img src="/assets/images/s3.png">
                    <span>GÓI CƠ BẢN</span>
                </a>
            </div>
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal">
                    <img src="/assets/images/s4.png">
                    <span>GÓI TIÊU CHUẨN</span>
                </a>
            </div>
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal">
                    <img src="/assets/images/s1.png">
                    <span>GÓI NTA</span>
                </a>
            </div>
            <div class="service-item">
                <a href="#" data-target="#request-modal" data-toggle="modal">
                    <img src="/assets/images/s5.png">
                    <span>GÓI THƯƠNG MẠI</span>
                </a>
            </div>
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
                    <div class="nailthumb-container">
                        <!-- <img class="lazy" src="assets/images/album1.jpg"> -->
                    </div>
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
                    <div class="btn btn-info btn-block">GÓI TIỆN ÍCH TIẾT KIỆM</div>
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
                    <button class="btn btn-warning btn-block">CHỈ VỚI 490 000VND/THÁNG</button>
                </div>
                <div class="col-sm-6 pull-bottom">
                    <div class="tit32">
                        <div>GỬI YÊU CẦU NHẬN BÁO GIÁ CHO <a href="#" class="a">NTA</a></div>
                    </div>
                    <p class="pull-top pull-bottom">
                        Hoặc gọi ngay cho chúng tôi qua số <strong class="a">098x xxx xxx</strong> để được giải đáp các thắc mắc.
                    </p>
                    <form>
                        <div class="form-group">
                            <label>Họ và tên (*)</label>
                            <div>
                                <input class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại (*)</label>
                            <div>
                                <input class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nội dung (*)</label>
                            <div>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Mã xác thực (*)</label>
                            <div>
                                <input class="form-control">
                            </div>
                            <p class="pull-top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        </div>
                        <button class="btn btn-warning btn-block">GỬI YÊU CẦU CHO NTA</button>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>