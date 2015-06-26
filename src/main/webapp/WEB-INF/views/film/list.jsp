<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
    <head>
        <title>List films</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <link rel="stylesheet" href="/static/style.css">

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="page-header jumbotron backdrop">
                 <h1>Explore</h1>
                <p>Our film database</p>
            </div>
            <div class="alert alert-info" role="alert">
                Welcome to our site. Do you like the new page design?
                <button class="btn btn-lg btn-success" onclick="alert('Thanks!')">Yes</button>
                <button class="btn btn-xs btn-danger" onclick="alert('Whatever.')">No</button>
            </div>
            <c:choose>
                <c:when test="${films == null or empty films}">
                    <div>No films found</div>
                </c:when>
                <c:otherwise>
                    <table class="table table-striped">
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
            <a class='btn btn-info' href="/form">Voeg nieuwe film toe</a>
        </div>
    </body>
</html>
