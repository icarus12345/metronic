[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        [{if $product->cat}]
        <li><a href="/">[{$product->cat->title[$lang]}]</a></li>
        [{/if}]
        <li class="active">
            <span>[{$product->aTitle[$lang]}]</span>
        </li>
    </ol>
    <div>
	<div class="row">
	    <div class="col-sm-6">

	    	<!-- Slider [ -->
	    	<div style="max-width:580px;margin:auto">
	        	<div class="nailthumb">
	                <div id="img-detail" class="nailthumb-figure-75 bg-cover" style="background-image:url([{$product->product_images[0]}])"></div>
	            </div>
	            <div class="space-line"></div>
                [{if $product->product_images|count>1}]
	            <div class="row-half">
		            <div id="owl-product-thumb" class="owl-carousel" data-num="">
		            	[{foreach $product->product_images 'img'}]
		                <!-- Item [ -->
		                <div class="item">
		                	<div class="nailthumb">
			                    <div class="nailthumb-figure-square bg-cover" 
			                    onclick="$('#img-detail').css('background-image','url([{$img}])')" 
			                    style="background-image:url([{$img}])"></div>
		                    </div>
		                </div>
		                <!-- Item ] -->
		                [{/foreach}]
		            </div>
	            </div>
                [{/if}]
            </div>
            <!-- Slider ] -->
            <div class="space-line"></div>
            <div class="space-line"></div>
	    </div>
	    <div class="col-sm-6">
	    	<h1 class="pr-title f20">
	    	[{$product->aTitle[$lang]}]
	    	[{if $product->product_prices && ($product->product_prices.min[$lang].val != $product->product_prices.max.vi.val)}]
            ([{$product->product_prices.min[$lang].tit}]/[{$product->product_prices.max[$lang].tit}])
            [{/if}]
	    	</h1>
	    	<div class="space-line"></div>
	    	<div class="space-line"></div>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                 ( Không có lượt bình chọn nào )
            </div>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <h3 class="pr-price">
            	[{if $product->product_discount>0}]
                [{if $product->product_prices}]
                    <span class="line-through">
                    [{$product->product_prices.min[$lang].val|number_format:0:",":"."}]
                    </span>
                    <sup>Đ</sup>
                    [{if $product->product_prices.min[$lang].val != $product->product_prices.max[$lang].val}]
                        -
                        <span class="line-through">
                        [{$product->product_prices.max[$lang].val|number_format:0:",":"."}]
                        </span>
                        <sup>Đ</sup>
                    [{/if}]
                [{/if}]
                [{/if}]
                <span class="[{if $product->product_discount>0}]pull-right[{/if}]">
                [{if $product->product_prices}]
                    [{($product->product_prices.min[$lang].val*(100-$product->product_discount|default:0)/100)|number_format:0:",":"."}]
                    <sup>Đ</sup>
                    [{if $product->product_prices.min[$lang].val != $product->product_prices.max[$lang].val}]
                        -
                        [{($product->product_prices.max[$lang].val*(100-$product->product_discount|default:0)/100)|number_format:0:",":"."}]
                        <sup>Đ</sup>
                    [{/if}]
                [{/if}]
                </span>
                </span>
            </h3>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <div class=" pr-content">
            	<div class="word-wrap">[{$product->aDesc[$lang]}]</div>
            </div>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <div class="prcode f16"><b>Mã sản phẩm : <span class="notice-red">[{$product->product_code}]</span></b></div>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <table class="">
                [{if $product->aPrices|count > 1}]
                <tr>
                    <td><b>Loại</b></td>
                    <td>
                        <select id="product_option" onchange="updatePrice()">
                            [{foreach $product->aPrices 'price'}]
                            <option value="[{$price->data_id}]">[{$price->data_data.title[$lang]}]</option>
                            [{/foreach}]
                        </select>
                    </td>
                </tr>
                [{/if}]
                <tr>
                    <td><b>Giá </b></td>
                    <td>
                        <b id="product_price">[{($product->aPrices[0]->data_data.price[$lang]*(100-$product->product_discount|default:0)/100)|number_format:0:",":"."}] <sup>Đ</sup></b>
                    </td>
                </tr>
                <tr>
                    <td><b>Số Lượng </b></td>
                    <td>
                        <div class="btn-group" role="group" aria-label="...">
                          <button type="button" class="btn btn-in" onclick="down()"><span class="fa fa-minus"></span></button>
                          <button id="quantity" type="button" class="btn btn-num">1</button>
                          <button type="button" class="btn btn-out" onclick="up()"><span class="fa fa-plus"></span></button>
                        </div>
                    </td>
                </tr>
            </table>
            <div class="space-line"></div>
            <div class="space-line"></div>
            <div class="notice-red f16">
            	<span class="fa fa-phone"></span> <b>Đặt hàng qua số điện thoại : [{$setting_data.phone.data_data.value[$lang]}]</b>
            </div>
            <div class="space-line-md"></div>
            <div class="space-line-md"></div>
            <div>
            <button class="btn btn-info btn-lg btn-block" onclick="addtocart()">THÊM VÀO GIỎ HÀNG</button>
            </div>
            <div class="space-line-md"></div>
            [{if $product->aTag[$lang]}]
            <div><b>Tags : </b>
            [{foreach ','|explode:$product->aTag[$lang] 'tag'}]
            <span class="label label-primary">[{$tag}]</span>
            [{/foreach}]
            </div>
            <div class="space-line-md"></div>
            [{/if}]
	    </div>
    </div>
	    <div class="clearfix"></div>
    </div>
    <style type="text/css">
    table td{padding: 10px 0;padding-right: 20px}
    </style>
<link rel="stylesheet" type="text/css" href="/libraries/bootstrap/css/bootstrap-select.min.css"/>
<script type="text/javascript" src="/libraries/bootstrap/js/bootstrap-select.min.js"></script>



<script type="text/javascript">
    var quantity = 1;
    function up(){
        if(quantity>=10){
            toastr['warning']('Số lượng sản phẩm giới hạn là 10.', 'Thông báo !');
            return;
        }
        quantity++;
        $('#quantity').html(quantity);
    }
    function down(){
        if(quantity<=1) return;
        quantity--;
        $('#quantity').html(quantity);
    }
    function updatePrice(){
        var priceid=$('#product_option').val();
        $('#product_price').html(prices[priceid])
        option = priceid;
    }
    function addtocart(){
        
        httpRequest({
            'url': '/frontend/excution/addtocart',
            'data': {
                "params": {
                    id:'[{$product->product_id}]',
                    option: option,
                    quantity:quantity
                }
            },
            'callback': function(rs) {
                if(rs.result<0){
                    toastr['info'](rs.message, 'Thông báo !');
                }else{
                    toastr['info'](rs.message, 'Thông báo !');
                    $('#cart-num').html(rs.num);
                }
            }
        }).call();
    }
    var prices = {};
    var option;
    [{if $product->aPrices}]
    [{foreach $product->aPrices 'pri'}];
    prices['[{$pri->data_id}]'] = '[{($pri->data_data.price[$lang]*(100-$product->product_discount|default:0)/100)|number_format:0:",":"."}] <sup>Đ</sup>';
    [{/foreach}]
    option = [{$product->aPrices[0]->data_id}];
    [{/if}]

    $(document).ready(function(){
        if($('#product_option').length==1)
            $('#product_option').selectpicker();
    });
</script>
    [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
    <div class="danh-gia">
    	<!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" ><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Đánh giá (0)</a></li>
	    <li role="presentation" class="active"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Thông tin sản phẩm</a></li>
	  </ul>

	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane " id="tab1">
	    	<div class="space-line-md"></div>
	    	<div class="f16">Đánh giá của khách hàng</div>
	    	<div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                 ( Không có lượt bình chọn nào )
            </div>
            <div class="space-line-md"></div>
	    </div>
	    <div role="tabpanel" class="tab-pane active" id="tab2">
	    	<div class="space-line-md"></div>
	    	<div class="ckeditor">
                [{$product->aContent[$lang]}]
            </div>
	    	<div class="space-line-md"></div>
	    </div>
	  </div>
    </div>

    <div>
    <div class="f20 page-title">SẢN PHẨM LIÊN QUAN</div>
        <div class="row">
            [{foreach $related_products key=i item=pr name=foo}]
            [{if $smarty.foreach.foo.index == 4}]
                [{break}]
            [{/if}]
            <div class="col-sm-6 cake-item col-mb-6 col-md-3" title="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"> 
                <a href="/san-pham/[{$pr->als_alias}]" class="nailthumb">
                    <div class="nailthumb-figure-square">
                        <div class="nailthumb-container">
                            <img data-original="[{$pr->product_thumb}]" class="lazy" alt="[{$pr->ti_title}][{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])[{/if}]"/>
                        </div>
                        <div class="nailthumb-mark hvr-wobble-vertical"></div>
                    </div>
                    [{if $pr->product_discount>0}]
                    <span class="discount-label">-[{$pr->product_discount}]%</span>
                    [{/if}]
                </a>
                <div class="space-line-half"></div>
                <div class="product-name f16 line-clamp-1">
                    [{$pr->ti_title}]
                    [{if $pr->product_prices && ($pr->product_prices.min[$lang].val != $pr->product_prices.max.vi.val)}]
                    ([{$pr->product_prices.min[$lang].tit}]/[{$pr->product_prices.max[$lang].tit}])
                    [{/if}]
                </div>
                <div class="space-line-half"></div>
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="product-price">
                    [{if $pr->product_discount>0}]
                    [{if $pr->product_prices}]
                        <span class="line-through">
                        [{$pr->product_prices.min[$lang].val|number_format:0:",":"."}]
                        </span>
                        <sup>Đ</sup>
                        [{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]
                            -
                            <span class="line-through">
                            [{$pr->product_prices.max[$lang].val|number_format:0:",":"."}]
                            </span>
                            <sup>Đ</sup>
                        [{/if}]
                    [{/if}]
                    [{/if}]
                    <span class="[{if $pr->product_discount>0}]pull-right[{/if}]">
                    [{if $pr->product_prices}]
                        [{($pr->product_prices.min[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:",":"."}]
                        <sup>Đ</sup>
                        [{if $pr->product_prices.min[$lang].val != $pr->product_prices.max[$lang].val}]
                            -
                            [{($pr->product_prices.max[$lang].val*(100-$pr->product_discount|default:0)/100)|number_format:0:",":"."}]
                            <sup>Đ</sup>
                        [{/if}]
                    [{/if}]
                    </span>
                </div>
                <div class="space-line"></div>
                <div class="space-line"></div>
            </div>
            [{/foreach}]
            <div class="clearfix"></div>
            <div class="space-line-md"></div>
        </div>
    </div>
</div>

[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]