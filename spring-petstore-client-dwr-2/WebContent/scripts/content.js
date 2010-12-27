function showCategoryItems()
{
	var catId= $("item-category").value;
	pets.getItems(catId, showItems);
}

function showItems(items)
{
	$("item-details").style.display = 'none';
	dwr.util.removeAllOptions("listing");
	dwr.util.addOptions("listing", items, formatter, { escapeHtml:false });
	$("item-listing").style.display = 'inline';
}

function formatter(item)
{
	return "<a href='#' onclick='javascript:showDetails("+ item.id +")' <img class='medium' src='images/animals/" + escape(item.name) + ".jpg></a>";
}

function showDetails(itemId)
{
	pets.getItem(itemId, showItemDetail);
	$("item-listing").style.display = 'none';
	$("item-details").style.display = 'inline';
}
var currItemId;
function showItemDetail(item)
{
	pets.getItemHistory(showItemHistory);
	$("detail-image").src="images/animals/"+ escape(item.name) + ".jpg";
	currItemId = item.id; 
	dwr.util.setValue("item-description",item.desc);
	dwr.util.setValue("item-name",item.name);
}

function addItem(itemId)
{
	pets.addItem(itemId, updateCart);
}