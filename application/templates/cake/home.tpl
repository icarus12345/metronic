[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/meta.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/head.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/slider.tpl"}]
[{strip}]
<div class="space-line"></div>
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/like-button.tpl"}]
<div class="space-line"></div>
<div class="container">
            <div class="white-box">
                <div class="container">
					<div class="text-center">
                        <a href="/banh-sinh-nhat">
                            <div class="cake-title">
    						  <img src="/assets/cake/images/bsn.png" title="Bánh sinh nhật" alt="Bánh sinh nhật" />
                              <span class="more pull-right">Xem thêm »</span>
                            </div>
                        </a>
						<img width="72"  src="/assets/cake/images/line.png"/>
					</div>
                </div>
                <div class="product-list">
                    [{foreach from=$bsn_list item=foo}]
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="[{$foo->product_thumb|escape:'html'}]" class="lazy" title="[{$foo->product_title|escape:'html'}]" alt="[{$foo->product_title|escape:'html'}]" />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$foo->product_title|escape:'html'}] - [{'thong-tin-banh/'|cat:$foo->product_alias|base_url}]'"></div>
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
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="container">
						<div class="text-center">
                            <a href="/banh-cuoi">
                                <div class="cake-title">
        							 <img src="/assets/cake/images/bc.png" title="Bánh cưới" alt="Bánh cưới"/>
                                    <span class="more pull-right">Xem thêm »</span>
                                </div>
                            </a>
							<img width="72"  src="/assets/cake/images/line.png"/>
						</div>
					</div>
                    [{foreach from=$bc_list item=foo}]
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="[{$foo->product_thumb|escape:'html'}]" class="lazy" title="[{$foo->product_title|escape:'html'}]" alt="[{$foo->product_title|escape:'html'}]" />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$foo->product_title|escape:'html'}]'"></div>
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
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="container">
						<div class="text-center">
                            <a href="/banh-cupcake">
                                <div class="cake-title">
        							<img src="/assets/cake/images/bck.png" title="Bánh cupcake" alt="Bánh cupcake"/>
                                    <span class="more pull-right">Xem thêm »</span>
                                </div>
                            </a>
							<img width="72"  src="/assets/cake/images/line.png"/>
						</div>
					</div>
                    [{foreach from=$bcupket_list item=foo}]
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="[{$foo->product_thumb|escape:'html'}]" class="lazy" title="[{$foo->product_title|escape:'html'}]" alt="[{$foo->product_title|escape:'html'}]" />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$foo->product_title|escape:'html'}]'"></div>
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
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="space-line"></div>
                    <div class="container">
						<div class="text-center">
                            <a href="/banh-ve">
                                <div class="cake-title">
    							    <img src="/assets/cake/images/bv.png" title="Bánh vẽ" alt="Bánh vẽ"/>
                                    <span class="more pull-right">Xem thêm »</span>
                                </div>
                            </a>
							<img width="72"  src="/assets/cake/images/line.png"/>
						</div>
					</div>
                    [{foreach from=$bv_list item=foo}]
                    <div class="product-item">
                        <div>
                            <div class="nailthumb">
                                <a  href="/thong-tin-banh/[{$foo->product_alias|escape:'html'}]">
                                    <div class="nailthumb-figure-square">
                                        <div class="nailthumb-container">
                                            <img src="[{$foo->product_thumb|escape:'html'}]" class="lazy" title="[{$foo->product_title|escape:'html'}]" alt="[{$foo->product_title|escape:'html'}]" />
                                        </div>
                                    </div>
                                </a>
                                <div class="add-to-cart-ico" onclick="dialog('order-dialog');document.getElementById('order_cake_name').value='[{$foo->product_title|escape:'html'}]'"></div>
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
            </div>
        </div>
[{/strip}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/inc/foot.tpl"}]
[{include file=$smarty.const.APPPATH|cat:"templates/cake/widget/orderpopup.tpl"}]