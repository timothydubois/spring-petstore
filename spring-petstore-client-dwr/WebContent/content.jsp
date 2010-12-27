<script>

function showCategoryItems()
{
	var catId= $("race-selection").value;
	pets.getItems(catId, showItems);
}

function showItems(items)
{
	$("details").style.display = 'none';
	dwr.util.removeAllOptions("listing");
	dwr.util.addOptions("listing", items, formatter, { escapeHtml:false });
	$("listing").style.display = 'block';
}

function formatter(item)
{
	return "<a onclick='javascript:showDetails("+ item.id +")' <img class='medium' src='images/animals/" + item.name + ".jpg></a>";
}

function showDetails(itemId)
{
	pets.getItem(itemId, showItemDetail);
	$("listing").style.display = 'none';
	$("details").style.display = 'inline';
}

function showItemDetail(item)
{
	pets.getItemHistory(showItemHistory);
	$("detail-image").src="images/animals/"+ item.name + ".jpg";
	$("order").onclick=function() {addItem(item.id);} 
	dwr.util.setValue("product-desc",item.desc);
	dwr.util.setValue("item-name",item.name);
}

function addItem(itemId)
{
	pets.addItem(itemId, updateCart);
}

</script>
<style>
#listing li {
	display: inline;
}
</style>
<div
	style="overflow: hidden; padding-right: 5px; position: relative; width: 100%; height: 100%;">
<div class="header" style="text-align: right;"><select
	id="race-selection" 
	onchange="javascript:showCategoryItems()">
</select></div>
<div
	style="border: 1px solid rgb(255, 255, 255); padding: 10px; position: relative; height: 300px;">
<ul id="listing"></ul>
<div id="details" style="display:none;">
<div
	style="overflow: auto; padding-top: 40px; padding-left: 8px; position: relative; width: 100%; height: 100%;">
<img id="detail-image" class="large" src="" /></div>
<div
	style="padding: 10px 20px 10px 0pt; overflow: auto; width: 417px; position: absolute; height: 100%; right: 0px; top: 0px;">
<div style="position: relative; width: 350px;">
<h2 id="item-name"></h2>
<div id="product-desc"></div>

</div>
<br />
<img src="images/app/continue.png" onclick="javascript:void();" id="order" /> Order
<img src="images/app/remove.png" onclick="javascript:showCategoryItems();" /> Close
</div>
</div>
</div>
</div>