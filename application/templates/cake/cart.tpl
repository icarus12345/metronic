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
                <div class="big-title f24"><b>Giỏ hàng của bạn</b></div>
                <div class="space-line-md"></div>
                <table class="table">
                    <tr>
                        <th colspan="2">Sản Phẩm</th>
                        <th colspan="" width="160">Số lượng</th>
                        <th colspan="" width="100">Giá</th>
                        <th colspan="" width="20"></th>
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
                            <div class="btn-group btn-group-default" role="group" aria-label="...">
                              <button type="button" class="btn btn-in" onclick="cdown([{$item->product_id}],[{$item->option->data_id}])"><span class="fa fa-minus"></span></button>
                              <button id="option_[{$item->product_id}]_[{$item->option->data_id}]" type="button" class="btn btn-num">[{$item->quantity}]</button>
                              <button type="button" class="btn btn-out" onclick="cup([{$item->product_id}],[{$item->option->data_id}])"><span class="fa fa-plus"></span></button>
                            </div>
                        </td>
                        <td>
                            <b id="cash_[{$item->product_id}]_[{$item->option->data_id}]" class="cash">[{$item->cash|number_format:0:",":"."}]</b> <sup>Đ</sup>
                        </td>
                        <td>

                            <a href="javascript:cremove([{$item->product_id}],[{$item->option->data_id}])" class="fa fa-close cart-remove"></a>
                        </td>
                    </tr>
                    [{foreachelse}]
                    <tr>
                        <td colspan="5">Chưa có sản phẩm nào</td>
                    </tr>
                    [{/foreach}]
                    <tr>
                        <td colspan="5" class="text-right"> Tổng tiền : <b id="totalcash">[{$smarty.session.totalcash|number_format:0:",":"."}]</b> <sup>Đ</sup></td>
                    </tr>
                </table>
                <div class="space-line-md"></div>
                <p>
                    <b>Chú ý</b> :<br/>
                    <div class="ckeditor">[{$setting_data.cart_message.data_data.value[$lang]}]</div>
                </p>
                <div class="space-line-md"></div>
                <div>
                    [{if $smarty.session.totalcash>0}]
                    <a href="/checkout" class="btn btn-info btn-lg btn-block" >CHECKOUT</a>
                    [{else}]
                    <p class="bg-danger">Vui lòng chọn sản phẩm cần mua</p>
                    [{/if}]
                </div>
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
    function cup(id,optid){
        if(pending>0) return;
        httpRequest({
            'url': '/frontend/excution/addtocart',
            'data': {
                "params": {
                    id:id,
                    option: optid,
                    quantity: 1
                }
            },
            'callback': function(rs) {
                if(rs.result<0){
                    toastr['info'](rs.message, 'Thông báo !');
                }else{
                    var num = parseInt($('#option_'+id+'_'+optid).html());
                    $('#option_'+id+'_'+optid).html(num+1)
                    $('#cash_'+id+'_'+optid).html(rs.cash);
                    $('#totalcash').html(rs.totalcash);
                }
            }
        }).call();
    }
    function cdown(id,optid){
        if(pending>0) return;
        var num = parseInt($('#option_'+id+'_'+optid).html());
        if(num==1){
            return;
        }
        httpRequest({
            'url': '/frontend/excution/addtocart',
            'data': {
                "params": {
                    id:id,
                    option: optid,
                    quantity: -1
                }
            },
            'callback': function(rs) {
                if(rs.result<0){
                    toastr['info'](rs.message, 'Thông báo !');
                }else{
                    $('#option_'+id+'_'+optid).html(num-1);
                    $('#cash_'+id+'_'+optid).html(rs.cash);
                    $('#totalcash').html(rs.totalcash);
                }
            }
        }).call();
    }
    function cremove(id,optid){
        if(pending>0) return;
        httpRequest({
            'url': '/frontend/excution/removecart',
            'data': {
                "params": {
                    id:id,
                    option: optid
                }
            },
            'callback': function(rs) {
                if(rs.result<0){
                    toastr['info'](rs.message, 'Thông báo !');
                }else{
                    $('#option_'+id+'_'+optid).parents('tr').remove();;
                    $('#totalcash').html(rs.totalcash);
                }
            }
        }).call();
    }
</script>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]