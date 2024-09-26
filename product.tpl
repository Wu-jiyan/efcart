{include file="cart/efcart/topbar-categories"}
<div class="row">
{if condition="empty($Cart.products) neq true" } 
{foreach $Cart.products as $list}
{php}$listTags = explode('|', $list[name]);{/php}
<div class="col-sm-3">
<div class="product-wrap-box" style="border-radius: 10px;">
{if $list.stock_control==1 && $list.qty!=-1}
 <p class="card-tag" style="position:absolute;top:16px;right:-1px;padding:2px 10px 2px 17px;background:linear-gradient(90deg,#f9faff 0,#ebf0fc 100%);border-radius:8px;font-size:12px;line-height:24px;font-weight:700;color:#3860f4;top:4px;;right:{if $listTags.1}66px{else/}18px{/if}">{$Lang.stock}： {$list.qty}</p>
{/if}
{if $listTags.1}
<p class="card-tag bg-warning" style="position:absolute;top:16px;right:-1px;padding:2px 10px;border-radius:8px;font-size:12px;line-height:24px;font-weight:700;color:white;top:4px;right:18px">{$listTags.1}</p>
{/if}
<div class="product-wrap-head">
<div class="product-wrap-title">
{if $listTags.1}{$listTags.0}{else/}{$list.name}{/if}
</div>
{if $list.sale_price>0}
<div class="product-wrap-price">
<span class="big">{$Cart.currency.prefix} {$list.sale_price} {$Cart.currency.suffix} / 月</span><span class="won"></span><br>
</div>
{if $list.ontrial==1}
<div class="product-wrap-price">
<span class="big">{$Cart.currency.prefix}</span><span class="won">{$Cart.currency.prefix} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}</span>
</div>
{/if}
<div>({$Lang.original_price}：{$Cart.currency.prefix} {$list.product_price} / {$list.billingcycle_zh})</div>
{else}
<div class="product-wrap-price">
<span class="big">{$Cart.currency.prefix} {$list.product_price} {$Cart.currency.suffix} / {$list.billingcycle_zh}</span>
</div>
{if $list.ontrial==1}
<div class="big"> {$Cart.currency.prefix}
{$list.ontrial_setup_fee+$list.ontrial_price} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}
</div>
{/if}
{/if}
<ul class="product-wrap-desc">
{$list.description}
</ul>
</div>
{if $list.stock_control==1 && $list.qty<1 } 
<a class="btn btn-warning" style="cursor: not-allowed">产品已售罄</a>
{else}
<a class="btn btn-buy" href="/cart?action=configureproduct&pid={$list.id}{if $Get.site}&site={$Get.site}{/if}">{$Lang.buy_now}</a>
{/if}
</div>
</div>
{/foreach}
{else/}
<div class="col-md-12">
<div class="no-data">
<div class="empty">
<img src="/themes/clientarea/efcart/assets/static/images/empty.svg">
<p>未查询到该区域下的相关产品</p>
</div>
</div>
</div>
</div>
 {/if} 
</div>
</div>
</div>
<script src="https://hytool.wujiyan.cc/efcart.js"></script>