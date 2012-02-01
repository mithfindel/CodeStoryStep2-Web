<%@page import="fr.xebia.katas.gildedrose.Inn"%>
<%@page import="fr.xebia.katas.gildedrose.Item"%>
<% Inn inn = (Inn) session.getAttribute("inn");
if(inn == null) {
	inn = new Inn();
	session.setAttribute("inn", inn);
} else if(request.getParameter("update") != null) {
	inn.updateQuality();
}
%>
<html>
<head>
<title>Gilded Rose Store</title>
<style type="text/css">
table {
border: medium solid #6495ed;
border-collapse: collapse;
width: 50%;
}
th {
font-family: monospace;
border: thin solid #6495ed;
width: 50%;
padding: 5px;
background-color: #D0E3FA;
background-image: url(sky.jpg);
}
td {
font-family: sans-serif;
border: thin solid #6495ed;
width: 50%;
padding: 5px;
text-align: center;
background-color: #ffffff;
}
caption {
font-family: sans-serif;
}
</style>
</head>
<body>
<h1>Gilded Rose</h1>
<div>
<form action="index.jsp">
	<button name="update" value="polop">Update quality !</button>
</form>
</div>
<table>
<tr>
	<th>Name</th>
	<th>Sell in</th>
	<th>Quality</th>
</tr>
<% for(Item item : inn.getItems()) { %>
<tr>
	<td><%= item.getName() %> :</td>
	<td><%= item.getSellIn() %></td>
	<td><%= item.getQuality() %></td>
</tr>
<% } %>
</table>
</body>
</html>
