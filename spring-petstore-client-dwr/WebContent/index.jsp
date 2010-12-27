<html>
<head>
<script type='text/javascript' src='dwr/interface/pets.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<link rel="stylesheet" href="style/petshop.css" type="text/css" />

<script type="text/javascript">
function init() 
{
    //dwr.util.useLoadingMessage();
    pets.getCategories(showCategories);
    pets.getCart(updateCart);
    pets.getItemHistory(showItemHistory);
}
var cats;
function showCategories(categories)
{
	cats = categories;
	dwr.util.removeAllOptions("race-selection");
	dwr.util.addOptions("race-selection", cats, "id", "name");
}
</script>
<title>Spring Pets</title>
</head>
<body onload="init();">
<div
	style="padding: 0pt 0px 550px; overflow: hidden; position: relative; width: 100%; height: 100%;">
<div style="overflow: auto; position: relative;"><img
	src="images/petshop.gif" alt="Petshop"
	style="margin-top: 18px; margin-left: 12px;" /></div>

<div
	style="padding: 0pt 0px 550px; overflow: hidden; position: relative; width: 100%; height: 100%;">

<div
	style="padding: 0px 245px 0px 0pt; overflow: hidden; background-color: rgb(221, 227, 230); position: absolute; width: 100%; height: 550px; bottom: 0px; left: 0px;">
<%@ include file="content.jsp"%> <%@ include
	file="cart.jsp"%></div>
</div>
</div>
</body>
</html>