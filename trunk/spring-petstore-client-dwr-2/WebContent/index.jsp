<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@taglib uri="http://acegisecurity.org/authz" prefix="authz"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"
	xmlns:authz="http://acegisecurity.org/authz">
<head>

<script type='text/javascript' src='dwr/interface/pets.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>

<script type='text/javascript' src='scripts/cart.js'></script>
<script type='text/javascript' src='scripts/content.js'></script>
<script type='text/javascript' src='scripts/main.js'></script>


<title>Spring Pet store</title>

</head>

<body onload="init();">
	<!-- content-wrap starts here -->
	<div id="content-wrap"><%@include file="cart.jspf"%>
	<%@include file="content.jspf"%> <!-- content-wrap ends here --></div>
</body>
</html>
