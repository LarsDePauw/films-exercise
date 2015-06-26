<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Films</title>
    </head>
    <body>
        <h1>Films</h1>
        <c:choose>
            <c:when test="${films == null or empty films}">
                <div>No films found</div>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <tr>
                        <th>Id</th>
                        <th>Title</th>
                    </tr>
                    <c:forEach items="${films}" var="film">
                        <tr>
                            <td>${film.id}</td>
                            <td><a href="film?id=${film.id}">${film.title}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
        <a href="form">Voeg nieuwe film toe</a>
    </body>
</html>
