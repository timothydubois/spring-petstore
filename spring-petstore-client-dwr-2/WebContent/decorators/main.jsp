<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@taglib uri="http://acegisecurity.org/authz" prefix="authz"%>
<html>
<head>

<link rel="stylesheet" href="style/style.css" type="text/css" />
<decorator:head />
<title><decorator:title default="Spring Pet store" /></title>

</head>


	<body onload="init();">
	<!-- wrap starts here -->


	<div id="wrap"><!--header -->
	<div id="header">

	<h1 id="logo-text">Spring Pet store <sup
		style="font: 40%/ 1.5em Verdana, Tahoma, arial, sans-serif;">beta</sup></h1>
	<!-- <h2 id="slogan">put your site slogan here...</h2> -->

	<div id="header-links">
	<p><a href="#">Home</a> | <a href="#">Contact</a> | <a href="#">Site Map</a> |<authz:authentication
		operation="username" />|<a href="j_acegi_logout">Log out</a></p>
	</div>
	</div>
	<decorator:body /> <!--footer starts here-->
	<div id="footer">

	<p>&copy; 2007 <strong>Spring Pet Store</strong> | Design by: <a
		href="http://www.styleshout.com/">styleshout</a></p>

	</div>

	<!-- wrap ends here --></div>

	</body>
</html>
