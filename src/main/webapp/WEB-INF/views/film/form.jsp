<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="k" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Create a film</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Create film</h1>
            <sf:form commandName="film" action="/create">
                <k:form-element path="title" label="Title:"/>
                <k:form-element path="poster" label="Poster:"/>
                <sf:hidden path="id"/>
                <button type="submit" class="btn btn-success">Submit</button>
            </sf:form>
        </div>
    </body>
</html>
