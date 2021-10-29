<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Download_site</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
    <body>

    <h1>Downloads</h1>
    <h2>${p.description}</h2>
        
    <table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>${p.song1}</td>
        <td><a href="/musicStore/sound/${p.code}/filter.mp3">MP3</a></td>
    </tr>
    <tr>
        <td>${p.song2}</td>
        <td><a href="/musicStore/sound/${p.code}/so_long.mp3">MP3</a></td>
    </tr>
    </table>

    
    <a href="?action=viewAlbums">
        <button>
            View list of albums
        </button>
    </a>
    

    <a href="?action=viewCookies">
        <button>
            View all cookies
        </button>
    </a>

    </body>
</html>