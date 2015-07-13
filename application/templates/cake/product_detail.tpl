[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]
<div class="space-line"></div>
<div class="space-line"></div>
<div class="container">
            <div class="white-box">
                [{if $product}]
                <div class="container">
                    <div class="text-center">
                        [{if $cate->cat_id==419}]
                        <img src="/assets/cake/images/bsn.png" title="Bánh sinh nhật" alt="Bánh sinh nhật"/><br/>
                        [{elseif $cate->cat_id==420}]
                        <img src="/assets/cake/images/bc.png" title="Bánh cưới" alt="Bánh cưới"/><br/>
                        [{elseif $cate->cat_id==421}]
                        <img src="/assets/cake/images/bv.png" title="Bánh vẽ" alt="Bánh vẽ"/><br/>
                        [{elseif $cate->cat_id==422}]
                        <img src="/assets/cake/images/bck.png" title="Bánh cupcake" alt="Bánh cupcake"/><br/>
                        [{else}]
                        <h3 class="title">[{$cate->cat_title}]</h3>
                        [{/if}]
                        <img width="72"  src="/assets/cake/images/line.png"/>
                    </div>
                </div>
                <div class="product-detail">
                    <div class="col-sm-4">
                        <div class="space-line"></div>
                        [{if $product->product_images|default:''!=''}]
                            [{assign var=images value='/\r\n|[\r\n]/'|preg_split:$product->product_images}]
                            [{assign var=img value=$images[0]}]
                        [{else}]
                            [{assign var=img value=$product->product_thumb}]
                        [{/if}]
                        <div class="nailthumb nailthumb-detail">
                            <a class="swipebox" 
                                title="[{$product->product_title|escape:'html'}]"
                                href="[{$img|escape:'html'}]">
                                <div class="nailthumb-figure-square">
                                    <div class="nailthumb-container">
                                        <img src="[{$product->product_thumb|escape:'html'}]" class="lazy"
                                            title="[{$product->product_title|escape:'html'}]"
                                            alt="[{$product->product_title|escape:'html'}]" 
                                            />
                                    </div>
                                </div>
                            </a>
                        </div>
                        [{if $images}]
                        [{for $n=1 to count($images)-1}]
                            <a class="swipebox" title="[{$product->product_title|escape:'html'}]" href="[{$images[$n]|escape:'html'}]"></a>
                        [{/for}]
                        [{/if}]
                        <div class="space-line"></div>
                    </div>
                    <div class="col-sm-8">
                        <div class="space-line"></div>
                        <h1 class="title text-left" style="text-align:left">[{$product->product_title|escape:'html'}]</h1>
                        <div class="p-price line-clamp-1" style="font-size:16px"><b>[{$product->product_price|default:0|number_format:0:',':' '}] đ</b></div>
                        <div class="space-line"></div>
                        <fieldset>
                            <legend>Chi tiết</legend>
                            <div class="space-line"></div>
                            <link rel="stylesheet" type="text/css" href="/libraries/ckeditor/contents.css">
                            <div class="ckeditor">
                                [{if $product->product_content}]
                                [{$product->product_content|default:'Nội dung đang cập nhật'}]
                                [{else}]
                                <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Nội dung đang cập nhật.</div>
                                [{/if}]
                            </div>
                            <div class="space-line"></div>
                            [{assign "tags" explode(",",$product->product_tag)}]
                            [{if $tags && $product->product_tag}]
                            <div class="cake-tags">Tags : 
                            [{foreach $tags 'tag'}]
                            <span>[{$tag}]</span>
                            [{/foreach}]
                            </div>
                            [{/if}]
                        </fieldset>
                        <a href="JavaScript:"><button onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$product->product_title|escape:'html'}]'" class="btn btn-danger">ĐẶT HÀNG</button></a>
                        <div class="clearfix"></div>
                        <div class="space-line"></div>
                        <div class="space-line"></div>
                        [{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>

                </div>
                <div class="space-line"></div>
                <div class="space-line"></div>
                <div class="container">
                    <h3 class="title">BÁNH CÙNG LOẠI</h3>

                </div>
                <div class="product-list">
                    [{foreach from=$product_list item=foo}]
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="[{$foo->product_thumb|escape:'html'}]" class="lazy"
                                                title="[{$foo->product_title|escape:'html'}]"
                                                alt="[{$foo->product_title|escape:'html'}]" 
                                                />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$foo->product_title|escape:'html'}]"></div>
                            </div>
                            <div class="product-cap">
                                <a href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]"><div class="p-name line-clamp-1">[{$foo->product_title|escape:'html'}]</div></a>
                                <div class="p-price line-clamp-1">[{$foo->product_price|default:0|number_format:0:',':' '}] đ</div>
                            </div>
                        </div>
                    </div>
                    [{foreachelse}]
                    <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Dữ liệu đang cập nhật.</div>
                    [{/foreach}]
                    <div class="clearfix"></div>
                </div>
                [{else}]
                    <div class="text-center" style="padding:40px 0;border:1px dashed #ddd">Bánh bạn cần không tồn tại :).</div>
                [{/if}]
            </div>
        </div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]