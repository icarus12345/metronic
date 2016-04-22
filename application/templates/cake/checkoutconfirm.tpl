[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<style type="text/css">body{background: #fafafa}</style>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <li class="active">
            <span>Giỏ hàng</span>
        </li>
    </ol>
    
    <div class="space-line"></div>
    <div class="space-line"></div>
    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
    <div class="">
        <div class="row">
            <div class="col-lg-9 col-md-8">
                <div class="big-title f24"><b>Thông Tin Đơn Hàng</b></div>
                <div class="space-line-md"></div>
                <table class="table">
                    <tr>
                        <th colspan="2">Sản Phẩm</th>
                        <th colspan="" width="160">Số lượng</th>
                        <th colspan="" width="100">Giá</th>
                    </tr>
                    [{foreach $smarty.session.cart 'item'}]
                    <tr>
                        <td width="90">
                            <div class="bg-cover"  style="width:80px;height:80px;background-image:url([{$item->product_thumb}]);box-shadow:0 0 2px #ddd;"></div>
                        </td>
                        <td>
                            <div><b>[{$item->aTitle[$lang]}]</b></div>
                            [{if $item->aPrices|count>1}]
                                <div>Loại : [{$item->option->data_data.title[$lang]}]</div>
                            [{/if}]
                            <div>Giá :
                            [{if $item->product_discount>0}]
                                <span style="text-decoration: line-through;">[{($item->option->data_data.price[$lang])|number_format:0:",":"."}]</span> <sup>Đ</sup> giảm còn 
                            [{/if}]
                            [{($item->option->data_data.price[$lang]*(100-$item->product_discount|default:0)/100)|number_format:0:",":"."}] <sup>Đ</sup>
                            </div>
                        </td>
                        <td>
                            <b>[{$item->quantity}]</b>
                        </td>
                        <td>
                            <b id="cash_[{$item->product_id}]_[{$item->option->data_id}]" class="cash">[{$item->cash|number_format:0:",":"."}]</b> <sup>Đ</sup>
                        </td>
                    </tr>
                    [{foreachelse}]
                    <tr>
                        <td colspan="4">Chưa có sản phẩm nào</td>
                    </tr>
                    [{/foreach}]
                    <tr>
                        <td colspan="4" class="text-right"> Tổng tiền : <b id="totalcash">[{$smarty.session.totalcash|number_format:0:",":"."}]</b> <sup>Đ</sup></td>
                    </tr>
                </table>
                <div class="space-line-md"></div>
                <div id="checkout_info">
                    <div class="big-title f24"><b>Thông Tin Đặt Hàng</b></div>
                    <div class="space-line-md"></div>
                    <div>
                            <div class="row half">
                                <div class="col-xs-6 half">
                                    <div class="input-group">
                                        <div>Họ và tên : <b>[{$smarty.session.order_info.contact_name}]</b></div>
                                    </div>
                                    <div class="space-line"></div>
                                </div>
                                <div class="col-xs-6 half">
                                    <div class="input-group">
                                        <div>Số điện thoại : <b>[{$smarty.session.order_info.contact_phone}]</b></div>
                                    </div>
                                    <div class="space-line"></div>
                                </div>
                            </div>
                            <div class="row half">
                                <div class="col-xs-6 half">
                                    <div class="input-group">
                                        <div>Email : <b>[{$smarty.session.order_info.contact_email}]</b></div>
                                    </div>
                                    <div class="space-line"></div>
                                </div>
                                <div class="col-xs-6 half">
                                    <div class="input-group">
                                        <div>Địa chỉ : <b>[{$smarty.session.order_info.contact_data}]</b></div>
                                    </div>
                                    <div class="space-line"></div>
                                </div>
                            </div>
                            <div class="row half">
                                <div class="col-xs-12 half">
                                    <div class="input-group">
                                        <div>Nội dung</div>
                                        <div><b>[{$smarty.session.order_info.contact_message}]</b></div>
                                    </div>
                                    <div class="space-line"></div>
                                </div>
                            </div>
                        </div>
                    <div class="space-line-md"></div>
                </div>
                <div class="space-line-md"></div>
            </div>
            <div class="col-lg-3 col-md-4">
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/accordion-menu.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/discount-box.tpl"}]
                [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-box.tpl"}]
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function checkoutconfirm(){
        if( $('#contactForm').validationEngine('validate') === false){
            toastr['warning']('Vui lòng điền đầy đủ thông tin.', 'Thông báo !');
            //alert('Please complete input data.');
            return false;
        }
        return true;
    }
</script>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]