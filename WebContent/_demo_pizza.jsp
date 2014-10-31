<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<html>

<head>
  <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico">
  <title>Demo Pizzeria</title>
</head>

<body bgcolor='#CFFFBF'>
<h1>Demo Pizzeria</h1>
<p>Das ist eine DEMO Homepage von einer DEMO Pizzeria.</p>
<p>Sie k&ouml;nnen alle unsere Speisen auch online bestellen.</p>

	<a href="<%=Const.URL_WEB_APP%>/list_items.do?partner_id=1&language=de">
		<img src="images/demo_pizza.gif" width="150" height="40">
	</a>

<ul>
  <li>Demo Pizzaria: <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=1&language=de'>zum Shop</a></li>
</ul>

</body>

</html>
