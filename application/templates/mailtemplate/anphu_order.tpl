<div style="border: 1px solid #ddd;font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;max-width:960px">
    
    <div style="padding:10px;border-bottom:1px solid #ddd;font-weight:bold">
        THÔNG TIN NGƯỜI MUA
    </div>
    <div style="padding:10px;">
        <div style="margin:0;padding:2px;">
            <table style="font-size:13px;width:100%">
                <tr>
                    <td width="100" style="padding:5px 0">Mã Đơn Hàng</td>
                    <td style="padding:5px"><b style="color: #fff;background: #03A9F4;padding: 4px 8px;border-radius: 4px;">[{$order_number|escape:'html'}]</b></td>
                </tr>
                <tr>
                    <td style="padding:5px 0">Họ và Tên</td>
                    <td style="padding:5px">[{$params.contact_name|escape:'html'}]</td>
                </tr>
                <tr>
                    <td style="padding:5px 0">Số điện thoại</td>
                    <td style="padding:5px">[{$params.contact_phone|escape:'html'}]</td>
                </tr>
                <tr>
                    <td style="padding:5px 0">Email</td>
                    <td style="padding:5px">[{$params.contact_email|escape:'html'}]</td>
                </tr>
                <tr>
                    <td style="padding:5px 0">Địa chỉ</td>
                    <td style="padding:5px">[{$params.contact_data|escape:'html'}]</td>
                </tr>
                <tr>
                    <td colspan="2" style="padding:5px 0">Nội Dung</td>
                </tr>
                <tr>
                    <td colspan="2" style="padding:5px 0"><div style="background: #f0f0f0;padding:8px;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-pre-wrap;white-space:-o-pre-wrap;word-wrap:break-word">[{$params.contact_message|escape:'html'}]</div></td>
                </tr>
            </table>
            </div>
    </div>
    <div style="padding:10px;border-top:1px solid #ddd;border-bottom:1px solid #ddd;font-weight:bold">
        THÔNG TIN ĐƠN HÀNG
    </div>
    <div style="padding:10px;">
        <div style="margin:0;padding:2px;">
            <table style="font-size:13px;width:100%;border-spacing: 0;border-collapse: collapse;" >
                <tr>
                    <th width="100" colspan="2" style="border:1px solid #ddd;padding:8px">Sản Phẩm</th>
                    <th style="border:1px solid #ddd;padding:8px">Số Lượng</th>
                    <th style="border:1px solid #ddd;padding:8px">Giá Tiền</th>
                </tr>
                [{foreach $smarty.session.cart 'item'}]
                <tr>
                    <td style="border:1px solid #ddd;padding:8px;border-right:0;" width="80">
                        <div style="-webkit-background-size: cover;background-size: cover;width:80px;height:80px;background-image:url([{$item->product_thumb|base_url}]);box-shadow:0 0 2px #ddd;background-position: center;background-color:#ccc"></div>
                    </td>
                    <td style="border:1px solid #ddd;padding:8px;border-left:0;">
                        <div><b>[{$item->aTitle[$lang]}]</b></div>
                        [{if $item->aPrices|count>1}]
                            <div>Loại : [{$item->option->data_data.title[$lang]}]</div>
                        [{/if}]
                        <div>Giá :
                        [{if $item->product_discount>0}]
                            <span style="text-decoration: line-through;">[{($item->option->data_data.price[$lang])|number_format:0:",":"."}]</span> <sup>Đ</sup> giảm còn 
                        [{/if}]
                        [{($item->option->data_data.price[$lang]*(100-$item->product_discount|default:0)/100)|number_format:0:",":"."}] <sup>Đ</sup></div>
                    </td>
                    <td style="border:1px solid #ddd;padding:8px">
                        <b>[{$item->quantity}]</b>
                    </td>
                    <td style="border:1px solid #ddd;padding:8px">
                        <b>[{$item->cash|number_format:0:",":"."}]</b> <sup>Đ</sup>
                    </td>
                </tr>
                [{/foreach}]
                <tr>
                    <td colspan="3" style="text-align:right;border:1px solid #ddd;padding:8px"> Tổng tiền</td>
                    <td style="border:1px solid #ddd;padding:8px"><b >[{$smarty.session.totalcash|number_format:0:",":"."}]</b> <sup>Đ</sup></td>
                </tr>
            </table>
            </div>
    </div>
    <div style="padding:10px;border-top:1px solid #ddd;text-align: left;font-size:12px;">
        <div style="margin:0;padding:2px;">DỤNG CỤ LÀM BÁNH AN PHÚ</div>
        <p style="margin:0;padding:2px;font-style:italic;">[A] : 108/46 Trần Quang Diệu, Phường 14, Quận 3. TP Hồ Chí Minh</p>
        <p style="margin:0;padding:2px;font-style:italic;">[T] : <a href="tel:+84982636618" style="color:#FF9800">[084] 98 263 6618</a> / <a href="tel:+84945829948" style="color:#FF9800">[084] 94 582 9948</a></p>
        <p style="margin:0;padding:2px;font-style:italic;">[E] : <a href="mailto:dungculambanhanphu@gmail.com" style="color:#FF9800">dungculambanhanphu@gmail.com</a></p>
    </div>
</div>