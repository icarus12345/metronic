[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{$content->content_subtitle}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li><a href="/recruitment">[{if $smarty.const.LANG=='en'}]Recruiment[{else}]Tuyển dụng[{/if}]</a></li>
          <li class="active">[{$content->content_title}]</li>
        </ol>
    </div>
</div>
<div class="box">
    <div class="container  pull-top">
        <div class="row  pull-top">
            <div class="col-sm-8 col-md-9 pull-top">
                <div class="tit1"><span>[{$content->content_title}]</span></div>
                <div class="date time">
                    <span class="fa fa-users"></span> [{$content->content_createby|default:'Admin'}] &nbsp;&nbsp;&nbsp;&nbsp; 
                    <span class="fa fa-calendar"></span> [{$content->content_insert|date_format:'%d/%m/%Y'}]
                    <div class="pull-right"></div>
                </div>
                <ul class="list">
                    [{foreach from=$relatedContent item=item}]
                    <li><a href="/[{$item->content_alias}]/n-[{$item->content_id}]">[{$item->content_title}]</a></li>
                    [{/foreach}]
                </ul>
                <div class="ckeditor pull-top pull-bottom">
                    [{$content->content_content}]
                </div>
                <div style="" class="td-contact">
                    <p>[{$content->content_desc2}]</p>
                    <div class="act">
                        <a href="#" class="btn btn-warning">[{if $smarty.const.LANG=='en'}]Share[{else}]Chia sẻ[{/if}]</a>
                        <a href="#" class="btn btn-warning" data-target="#sendcv-modal" data-toggle="modal">[{if $smarty.const.LANG=='en'}]Send Request[{else}]Nộp hồ sơ[{/if}]</a>
                    </div>
                </div>
            </div>
                <div class="col-sm-4 col-md-3 partners-box">
                    <div class="tit1"><span>[{if $smarty.const.LANG=='en'}]Partner[{else}]Đối tác[{/if}]</span></div>
                    <div class="row">
                        [{foreach from=$partners item=item}]
                        <div class="col-xs-6 col-mb-4 col-sm-12">
                            <div class="nailthumb">
                                <div class="nailthumb-figure-square">
                                    <a href="JavaScript:void(0)" class="nailthumb-container">
                                        <img class="lazy" src="[{$item->image_src}]">
                                    </a>
                                </div>
                            </div>
                        </div>
                        [{/foreach}]
                    </div>
                </div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]
<div class="modal fade" id="sendcv-modal" role="dialog" aria-labelledby="modalLabel" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="">
                <div class="col-sm-12 pull-top">
                <div class="tit32">
                    
                            [{if $smarty.const.LANG=='en'}]
                        <div>SEND REQUEST TO <a href="#" class="a">NTA</a></div>
                        [{else}]
                        <div>GỬI HỒ SƠ TRỰC TIẾP CHO <a href="#" class="a">NTA</a></div>
                        [{/if}]
                </div>
                <p class="pull-top pull-bottom">
                    [{if $smarty.const.LANG=='en'}]
                        Or call us now <strong class="a">[{$settting_data['dien-thoai']}]</strong> to get answers to questions.
                        [{else}]
                        Hoặc gọi ngay cho chúng tôi qua số <strong class="a">[{$settting_data['dien-thoai']}]</strong> để được giải đáp các thắc mắc.
                        [{/if}]
                </p>
                </div>
                <form class="" name="frmRequest" id="frmRequest">   
                <div class="col-sm-6 pull-bottom">
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
                            <label>Email (*)</label>
                            <div>
                                <input 
                                    class="form-control validate[required,custom[email]]"
                                    data-prompt-position="topright:0,20"
                                    >
                            </div>
                        </div>
                        <div class="form-group">
                        <div style="position:relative">
                            <label>[{if $smarty.const.LANG=='en'}]Attach file[{else}]Hồ sơ cá nhân[{/if}] (*)</label>
                            <div >
                                <div>
                                    <input class="form-control" type="file">
                                </div>
                            </div>
                        </div>
                        </div>
                        [{if $smarty.const.LANG=='en'}]
                        <p class="pull-bottom">Just only attach .doc file, and file size must be less than 2MB</p>
                        [{else}]
                        <p class="pull-bottom">Chỉ đính kèm file doc và dung lượng phải nhỏ hơn 2MB</p>
                        [{/if}]
                </div>
                <div class="col-sm-6 pull-bottom">
                        <div class="form-group">
                            <label>[{if $smarty.const.LANG=='en'}]Phone[{else}]Số điện thoại[{/if}] (*)</label>
                            <div>
                                <input class="form-control validate[required,maxSize[12]]" data-prompt-position="topright:0,20">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>[{if $smarty.const.LANG=='en'}]Position[{else}]Vị trí ứng tuyển[{/if}] (*)</label>
                            <div>
                                <input class="form-control validate[required,maxSize[120]]" data-prompt-position="topright:0,20">
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
                        <p class="pull-bottom">([{if $smarty.const.LANG=='en'}]
                                    Verification case sensitive, in case the confirmation captcha is incorrect please create a new captcha.
                                    [{else}]
                                    Mã xác nhận phân biệt hoa thường, trong trường hợp mã xác nhận chưa đúng vui lòng tạo mã xác nhận mới.
                                    [{/if}])</p>
                </div>
                <div class="col-sm-12"><button class="btn btn-warning btn-block" onclick="sendCV()" type="button">[{if $smarty.const.LANG=='en'}]SEND REQUEST[{else}]GỬI YÊU CẦU CHO NTA[{/if}]</button></div>
                <div class="pull-top">&nbsp;</div>
                </form>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>