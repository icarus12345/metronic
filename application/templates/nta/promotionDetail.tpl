[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{if $smarty.const.LANG=='en'}]Promotion Information from NTA[{else}]Thông tin khuyễn mãi từ NTA[{/if}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li><a href="/promotion">[{if $smarty.const.LANG=='en'}]Promotion Information[{else}]Thông tin khuyễn mãi[{/if}]</a></li>
          <li class="active">[{$content->content_title}]</li>
        </ol>
    </div>
</div>
<div class="container box">
    <div id="carousel-promotion" class="carousel bsd box" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            [{for $n=0 to count($sliders)-1}]
            [{assign var=item value=$sliders[$n]}]
            <div class="orange-box item [{if $n==0}]active[{/if}]">
                <div>
                    <div class="left">
                        <img src="/assets/images/km-tag.png">
                        [{$item->image_content}]
                    </div>
                    <div class="right cover" style="background-image:url([{$item->image_cover}])">
                        <img src="[{$item->image_src}]">
                    </div>
                </div>
            </div>
            [{/for}]
            <ol class="carousel-indicators">
                [{for $n=0 to count($sliders)-1}]
                [{assign var=item value=$sliders[$n]}]
                <li data-target="#carousel-promotion" data-slide-to="[{$n}]" class="[{if $n==0}]active[{/if}]">
                    <span class="dot"></span>
                </li>
                [{/for}]
            </ol>
            <a class="left carousel-control" href="#carousel-promotion" role="button" data-slide="prev"></a>
            <a class="right carousel-control" href="#carousel-promotion" role="button" data-slide="next"></a>
        </div>
    </div>
</div>
<div class="box">
            <div class="container">
                <div class="tit1"><span>[{$content->content_title}]</span></div>
                <div class="row pull-top pull-top">
                    <div class="col-sm-6">
                            [{$content->content_content}]
                            
                        </div>
                        <div class="col-sm-6 pull-top">
                            <div class="tit32">
                                [{if $smarty.const.LANG=='en'}]
                                <div>SEND REQUEST TO <a href="#" class="a">NTA</a></div>
                                [{else}]
                                <div>GỬI THÔNG TIN ĐĂNG KÝ KHUYẾN MÃI CHO <a href="#" class="a">NTA</a></div>
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
                </div>
            </div>
        </div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]
