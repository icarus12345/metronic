<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-07-09 10:08:57
         compiled from "application\templates\cake\widget\orderpopup.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13660559a2257ab5eb1-08868600%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '97ab9fea970e21e7abff0ea1abb87c2488e7008f' => 
    array (
      0 => 'application\\templates\\cake\\widget\\orderpopup.tpl',
      1 => 1436261643,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13660559a2257ab5eb1-08868600',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_559a2257ac4868_03814101',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_559a2257ac4868_03814101')) {function content_559a2257ac4868_03814101($_smarty_tpl) {?>        <div id="order-dialog" class="dialog transition" style="z-index:21110;">
            <div class="content transition">
                <div class="">
                    <div class="head"><img src="/assets/cake/images/dh.png"/> <i class="pull-right fa fa-close" onclick="dialog('order-dialog')"></i></div>
                    <div class="body">
                    <form name="orderForm" id="orderForm" target="integration_asynchronous">
                        <div class="row half">
                            <div class="col-xs-8 half">
                                <div class="input-group">
                                    <div>Tên Bánh</div>
                                    <input type="text" 
                                        name="contact_data" 
                                        id="order_cake_name"
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Bánh sinh nhật Doreamon">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-4 half">
                                <div class="input-group">
                                    <div>Số lượng</div>
                                    <input 
                                        name="contact_data" 
                                        class="form-control dark validate[required,maxSize[100]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="2 cái lớn">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-8 half">
                                <div class="input-group">
                                    <div>Tên khách hàng</div>
                                    <input 
                                        name="contact_name" 
                                        class="form-control dark validate[required,minSize[4],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Bùi Thị Thùy Nhung">
                                </div>
                                <div class="space-line"></div>
                            </div>
                            <div class="col-xs-4 half">
                                <div class="input-group">
                                    <div>Số điện thoại</div>
                                    <input 
                                        name="contact_phone" 
                                        class="form-control dark validate[required,minSize[7],maxSize[12]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="0168 xxx xxx">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Email</div>
                                    <input 
                                        name="contact_email" value="" 
                                        class="form-control dark validate[required,custom[email],maxSize[100]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="nhungbui@yahoo.com">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Địa chỉ</div>
                                    <input 
                                        name="contact_data" 
                                        class="form-control dark validate[required,minSize[20],maxSize[255]]" 
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="181 Hồng Lạc, P.10, Q.Tân Bình">
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <div class="row half">
                            <div class="col-xs-12 half">
                                <div class="input-group">
                                    <div>Nội dung</div>
                                    <textarea 
                                        name="contact_message" 
                                        class="form-control dark validate[required,minSize[20],maxSize[4000]]"
                                        data-prompt-position="topLeft:0,20"
                                        placeholder="Gọi cho tôi trước khi giao hàng(trước 15 phút)"></textarea>
                                </div>
                                <div class="space-line"></div>
                            </div>
                        </div>
                        <input type="hidden" name="contact_type" value="Order">
                    </form>
                    </div>
                    <div class="dfoot" onclick="order()">
                        ĐẶT HÀNG
                    </div>
                </div>
            </div>
        </div>
<?php }} ?>
