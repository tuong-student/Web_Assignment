<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Cookies</h1>

<p>Here's a table with all of the cookies that this 
browser is sending to the current server.</p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">      
  <tr>
    <td>${c.value.name}</td>
    <td>${c.value.value}</td>
  </tr>
  </c:forEach>  
</table>

<a href="?action=viewAlbums">
    <button>
        View list of albums
    </button>
</a>

<a href="?action=deleteCookies">
    <button>
        Delete all cookies
    </button>
</a>

</body>
</html>