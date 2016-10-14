[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/head.tpl"}]
<div class="banner">
    <div class="container">
        <h1>[{$content->content_title}]</h1>
    </div>
</div>
<div class="fbreadcrumb">
    <div class="container">
        <ol class="breadcrumb">
          <li><a href="#"><span class="fa fa-home"></span></a></li>
          <li class="active">[{$content->content_title}]</li>
        </ol>
    </div>
</div>
<div class="box ">
    <div class="container">
        <img class="news-cover" src="[{$content->content_thumb}]">
        <div class="date time">
            <span class="fa fa-users"></span> [{$content->content_createby|default:'Admin'}] &nbsp;&nbsp;&nbsp;&nbsp; 
            <span class="fa fa-calendar"></span> [{$content->content_insert|date_format:'%d/%m/%Y'}]
            <div class="pull-right"></div>
        </div>
        <div class="ckeditor pull-top pull-bottom">
            [{$content->content_content}]
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/nta/inc/foot.tpl"}]