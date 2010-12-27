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
	return "<input type='checkbox' name='item-for-deletion' value='" + item.item.id + "' />";
}

function removeCartItems()
{
	var itemIds = [];
	var items = document.getElementsByName("item-for-deletion");
	for(var i=0; i<items.length;i++)
	{ 
		if(items[i].checked)
		{
			itemIds.push(items[i].value);
		}
	}
	if(itemIds.length >0)
	{
		pets.removeCartItems(itemIds, updateCart);
	}
}

function showItemHistory(itemHistory)
{
	var items = itemHistory.items;
	dwr.util.removeAllOptions("history");
	dwr.util.addOptions("history", items, historyFormatter, { escapeHtml:false });
}

function historyFormatter(item)
{
	return "<a href='#' onclick='javascript:showDetails("+ item.id +")' <img class='small' src='images/animals/" + escape(item.name) + ".jpg></a>";
}