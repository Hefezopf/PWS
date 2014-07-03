<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<html>

<head>
  <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico">
  <title>Demo DVD Shop</title>
</head>

<body bgcolor='FFFFDF'>

<h1>Welcome to our Demo DVD Shop</h1>

<p>This is the homepage of a DVD Online Shop.
<br>
You can order all of our products online.</p>
<p>
	<a href="<%=Const.URL_WEB_APP%>/list_items.do?partner_id=2&language=en">
		<img src="images/demo_dvd.gif" width="120" height="107" border="0">
	</a>
</p>

<p> <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=2&language=en'>    >>> Order online <<<   </a> 
</p>

</body>

</html>
