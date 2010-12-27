<script type="text/javascript">
<!--

//-->

function updateCart(cart)
{
	dwr.util.setValue("item-count", cart.quantity);
	dwr.util.setValue("item-total", cart.total);
	dwr.util.removeAllRows("cart");
	dwr.util.addRows("cart", cart.items, [appendItemName, appendItemQty, appendPrice, appendDelete], {escapeHtml:false});
}

function appendItemName(item)
{
	return item.item.name;
}

function appendItemQty(item)
{
	return item.quantity;
}

function appendPrice(item)
{
	return item.subTotal;
}

function appendDelete(item)
{
	return "<img src='images/app/remove.png' onclick='javascript:removeCartItem("+item.item.id+");' />";
}

function removeCartItem(itemId)
{
	pets.removeCartItem(itemId, updateCart);
}

function showItemHistory(itemHistory)
{
	var items = itemHistory.items;
	dwr.util.removeAllOptions("history");
	dwr.util.addOptions("history", items, historyFormatter, { escapeHtml:false });
}

function historyFormatter(item)
{
	return "<a onclick='javascript:showDetails("+ item.id +")' <img class='small' src='images/animals/" + item.name + ".jpg></a>";
}
</script>
<style>
#history li {
	display: inline;
}
</style>
<div class="b-panel"
	style="overflow: auto; position: absolute; width: 245px; height: 100%; right: 0px; top: 0px;">
<div class="header">HISTORY</div>
<div style="height: 45px;">
<ul id="history">
</ul>
</div>
<div class="header">CART</div>
<div class="content-area" style="padding: 10px; height: 327px;"><img
	src="images/app/cart.png" alt="Cart"
	style="float: left; margin-right: 10px;" /> <span>Items: <span
	id="item-count"></span></span><br />
<span>Sub-Total: <span id="item-total"></span></span><br />
<br />
<div id="cart-receiver" />
<table style="width: 100%;" class="pet-item-list-cart">
	<thead>
		<tr style="background-color: white;">
			<td>Product</td>
			<td>Qty.</td>
			<td>Price</td>
			<td></td>
		</tr>
	</thead>
	<tbody id="cart">

	</tbody>
</table>
</div>
<img src="images/app/continue.png" onclick="javascript:void();"
	id="order" /> CheckOut </div>
</div>