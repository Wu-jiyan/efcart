<link rel="stylesheet" href="/themes/cart/efcart/assets/css/topbar.css">
<link href="../themes/cart/efcart/assets/css/icons.min.css?v={$Ver}" rel="stylesheet" type="text/css" />
<link href="../themes/cart/efcart/assets/css/iconfont.css?v={$Ver}" rel="stylesheet"> 
<link type="text/css" href="../themes/cart/efcart/assets/css/toastr.min.css?v={$Ver}" rel="stylesheet" />
<link href="../themes/cart/efcart/assets/css/custom.css?v={$Ver}" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../themes/cart/efcart/assets/css/jquery-confirm.min.css">
<style>
.carousel.pointer-event {
  -ms-touch-action: pan-y;
  touch-action: pan-y;
}
.nav-tabs-custom .nav-item .nav-link.active {
  color: #0064ff;
}
.idcef_tip {
background-color: rgb(56, 25, 8);
color: rgb(254, 99, 75) !important;
}
.idcef_tip {
background-color: rgba(252, 241, 235, 1);
color: rgba(254, 95, 71, 1) !important;
margin-right: 2px;
min-width: max-content;
padding: 0 8px;
height: 24px;
line-height: 24px !important;
font-size: 12px !important;
font-weight: bold;
border-radius: 2px;
display: inline-block;
margin-top: 8px;
}
.cartitem {
background-color: #fff;
border: 1px solid rgba(77, 82, 89, 0.07);
}
.cartitem.active {
background: #fff;
border: solid 1px #0060ff;
}
.card {
border: 0px;
border-radius: 0px;
margin-bottom: 24px;
-webkit-transition: .5s;
transition: .5s;
-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.035);
box-shadow: 0 2px 3px rgba(0, 0, 0, 0.035);
}
.card-header {
display: -webkit-box;
display: flex;
-webkit-box-pack: justify;
justify-content: space-between;
-webkit-box-align: center;
align-items:center;
padding: 15px 24px;
background-color: transparent;
border-bottom: 1px solid rgba(77, 82, 89, 0.07);
}
.card-header .card-title {
margin-bottom: 0;
}
.card-header div.card-title {
font-size: 16px;
}
.card-body {
padding: 24px;
}
.card-body > *:last-child {
margin-bottom: 0;
}
.card-body > p:last-child {
margin-bottom: 0;
}
.card-bordered {
border: 1px solid #eceeef;
}
.card-shadowed,
.card-hover-shadow:hover {
-webkit-box-shadow: 0 0 25px rgba(0, 0, 0, 0.07);
box-shadow: 0 0 25px rgba(0, 0, 0, 0.07);
}
.card-footer {
background-color: #fcfdfe;
border-top: 1px solid rgba(77, 82, 89, 0.07);
padding: 15px 24px;
}
.card-title a {
color: #37404d;
}
.card .tab-content {
padding: 10px 24px;
}
.card-pricing-row {
padding: 40px 0px;
}
.card-pricing .specification-list {
list-style: none;
padding-left: 0;
margin-top: 30px;
margin-bottom: 30px;
}
.card-pricing .specification-list li {
padding: 8px 0 12px;
border-bottom: 1px solid rgba(77, 82, 89, 0.05);
text-align: left;
font-size: 12px;
margin-bottom: 5px;
}
.card-pricing .specification-list li .name-specification {
font-weight: 700;
}
.card-pricing .specification-list li .status-specification {
margin-left: auto;
float: right;
font-weight: 400;
}
.card-pricing.card-pricing-focus {
padding: 40px 5px;
margin-top: -40px;
}
@media screen and (max-width: 970px) {
.card-pricing.card-pricing-focus {
margin-top: 0px;
}
.card-pricing-row {
padding: 0px;
}
}
@media screen and (max-width: 368px) {
.form-control {
width: 30vw;
max-width: 400px !important;
}
}
@media screen and (max-width: 246px) {
.form-control {
display: none !important;
}
}
</style>
<link rel="stylesheet" href="/themes/cart/efcart/assets/fonts/iconfont.css?v={$Ver}">
<script src="//www.11tl.cn/themes/cart/efcart/assets/js/jquery.min.js"></script>
<script src="../themes/cart/efcart/assets/js/jquery-confirm.min.js"></script>
<style>
.sales {
background: linear-gradient(45deg, red, orange);
background-size: 200% 200%;
animation: colorShift 5s infinite linear;
border: none !important;
color: white !important;
}
@keyframes colorShift {
0% {
background-position: 0% 50%; /* 开始位置 */
}
50% {
background-position: 100% 50%; /* 结束位置 */
}
100% {
background-position: 0% 50%; /* 开始位置 */
}
}
.dropdown-menu.show {
z-index: 9999 !important;
}
.btn-buy {
border-color: #0060ff;
color: #0060ff;
}
.btn-buy:hover {
color: #fff;
background-color: #0060ff;
}
.secondgroup_item {
position: relative;
z-index: 21;
}
.secondgroup_box_group img, .firstgroup_box_group img {
width: 25px;
border-radius: 16%;
margin-right: 5px;
}
.seconditem_container {
position: relative;
}
.item-tip {
pointer-events: none;
line-height: initial !important;
font-weight: bold;
color: white;
margin-left: 5px;
position: relative;
padding: 3px 6px;
border: none;
border-radius: 8px !important;
font-size: 12px;
text-align: center;
text-decoration: none;
z-index: 23;
}
.item-tip:hover {
color: white;
}
@media (max-width: 576px) {
.firstgroup_item,.secondgroup_item{
min-width:auto!important;
width:75%;
padding:10px;
}
.seconditem_container {
height: 
}
}
hr {
border-color: rgba(77, 82, 89, 0.07);
border-top: inherit
}
.dropdown-item:hover {
background-color: #2662f9;
color: #fff !important;
}
@media (min-width: 577px) {
  .dropdown.d-flex {
    display: inline-block !important;
  }
}
</style>
<script>
$(document).ready(function() {
  var lastAcknowledged = localStorage.getItem('acknowledged');
  var oneDay = 24 * 60 * 60 * 1000;
  var today = new Date().getTime();

  if (lastAcknowledged && (today - lastAcknowledged < oneDay)) {
    return;
  }

  $.confirm({
    title: '<i class="bx bx-bell bx-tada"></i>购买须知',
    content: '<strong style="color: red;">&emsp;&emsp;所有服务器禁止用于以下业务及服务（一经发现，立即永久关闭，概不退款）：</strong><br> &emsp;&emsp;色情、博彩、诈骗、钓鱼、黑客、爆破、病毒、外挂、攻击、扫描、挖矿、等违法违规用途。 禁止搭建VPN服务、代刷平台、发卡网、支付平台等',
    type: 'default',
    buttons: {
      omg: {
        text: '我已知晓',
        btnClass: 'btn-default',
        action: function() {
          localStorage.setItem('acknowledged', today);
        }
      }
    }
  });
});
</script>
<div class="products-banner-buttons" style="border: 1px solid #fff;border-radius: 10px;">
  <div class="banner-desc">
    {php}
    if($pget['name'] == null){
      echo "产品选购";
    }else{
      echo $pget['name'];
    }
    {/php}
  </div>
  <div class="banner-buttons">
        <div class="search-box">
            <div class="position-relative">
            <input type="text" class="form-control" id="searchInp" placeholder="按关键字搜索" {if $Get.keywords /}value="{$Get.keywords}"{/if}>
            <i class="bx bx-search-alt search-icon" id="searchIcon" style="cursor: pointer;"></i>
            </div>
        </div>
  </div>
</div>
<div class="firstgroup_box mb-2" style="border: 1px solid #fff;border-radius: 10px;">
<div class="firstgroup_box_prov mr-2">选择分类</div>
<div class="firstgroup_box_group">
{foreach $Cart.product_groups as $index=>$first}
<div class="dropdown d-flex">
<a class="firstgroup_item waves-effect{if $first.id==$Think.get.fid || (!$Think.get.fid && $index==0)}{assign name="cart_first_id" value="$first.id" /}{assign name="cart_first_name" value="$first.name" /}{assign name="cart_second" value="$first.second" /} active{/if}{if $first.name == '中秋活动'} sales{/if}" type="button" id="dropdownMenuButton{$first.id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$first.name}</a>
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton{$first.id}">
<a class="dropdown-item" href="/cart?fid={$first.id}{if $Get.site}&site={$Get.site}{/if}" style="color: #000;">☰ {$first.name}</a>
{foreach $first.second as $index2=>$secondItem}
{php}$tags = explode('|', $secondItem[tagline]);{/php}
{php}$secondItemParts = explode('|', $secondItem[name]);{/php}
<a class="dropdown-item waves-effect" href="/cart?fid={$first.id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}" style="{if $secondItem.id == $Think.get.gid || (!$Think.get.gid && $index2==0 && ($first.id==$Think.get.fid || (!$Think.get.fid && $index==0)))}color: #fff; background-color: #2662f9;{else}color: #000;{/if}">{if $secondItemParts[1]}<img src="/upload/common/country/{$secondItemParts.0}.png"> {$secondItemParts.1}{else/}{$secondItem.name}{/if}{if $secondItem.tagline }<font class="item-tip bg-{$tags.0}">{$tags.1}</font>{if $tags.2 }<font class="item-tip bg-{$tags.2}">{$tags.3}</font>{if $tags.4 }<font class="item-tip bg-{$tags.4}">{$tags.5}</font>{/if}{/if}{/if}</a>
{/foreach}
</div>
</div>
{/foreach}
</div>
</div>
<div class="secondgroup_box mb-2" style="border: 1px solid #fff;border-radius: 10px;">
<div class="secondgroup_box_area mr-2">选择产品</div>
<div class="secondgroup_box_group">
{foreach $cart_second as $index=>$secondItem}
{php}$secondItemParts = explode('|', $secondItem[name]);{/php}
{php}$tags = explode('|', $secondItem[tagline]);{/php}
{if $secondItem.id == $Think.get.gid || (!$Think.get.gid && $index==0)}
<div class="seconditem_container">
<a style="color:#fff;" class="secondgroup_item waves-effect pointer active" href="/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}">{if $secondItemParts[1]}<img src="/upload/common/country/{$secondItemParts.0}.png"> {$secondItemParts.1}{else/}{$secondItem.name}{/if}
{if $secondItem.tagline }
<font class="item-tip bg-{$tags.0}">{$tags.1}</font>
{if $tags.2 }
<font class="item-tip bg-{$tags.2}">{$tags.3}</font>
{if $tags.4 }
<font class="item-tip bg-{$tags.4}">{$tags.5}</font>
{/if}
{/if}
{/if}
</a>
</div>
{assign name="cart_gid" value="$secondItem.id" /} 
{else/}
<div class="seconditem_container">
<a class="secondgroup_item waves-effect pointer" href="/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}">{if $secondItemParts[1]}<img src="/upload/common/country/{$secondItemParts.0}.png"> {$secondItemParts.1}{else/}{$secondItem.name}{/if}
{if $secondItem.tagline }
<font class="item-tip bg-{$tags.0}">{$tags.1}</font>
{if $tags.2 }
<font class="item-tip bg-{$tags.2}">{$tags.3}</font>
{if $tags.4 }
<font class="item-tip bg-{$tags.4}">{$tags.5}</font>
{/if}
{/if}
{/if}
</a>
</div>
{/if}
{/foreach}
</div>
</div>
<div id="product-toggle-load">
<div class="firstgroup_box mb-2" style="border: 1px solid #fff;border-radius: 10px;">
<div class="firstgroup_box_prov mr-2">{if $Get.keywords /}搜索结果{else /}商品标语{/if}</div>
<div class="firstgroup_box_group">
{if $Get.keywords /}
<p class="card-text">{$Get.keywords}：{:count($Cart.products)}{$Lang.individual}</p>
{else /}
<p class="card-text" style="color:#0060ff">{$Cart.product_groups_checked.headline}</p>
{/if}
</div>
</div>
<script>
document.title = "{$cart_first_name} - 订购产品 | {$Setting.company_name}";
</script>
