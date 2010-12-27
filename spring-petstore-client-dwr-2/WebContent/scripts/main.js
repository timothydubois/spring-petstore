function init() 
{
    dwr.util.useLoadingMessage();
    pets.getCategories(showCategories);
    pets.getCart(updateCart);
    pets.getItemHistory(showItemHistory);
}

function showCategories(categories)
{
	dwr.util.removeAllOptions("item-category");
	dwr.util.addOptions("item-category", categories, "id", "name");
	showCategoryItems();
}