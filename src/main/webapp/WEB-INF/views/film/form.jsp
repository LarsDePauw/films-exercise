<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

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
                <div class="form-group">
                    <label for="title">Title:</label>
                    <%--Having a duplicate id IntelliJ error? That's just a glitch; ignore it.--%>
                    <sf:input path="title" class="form-control"/>
                    <span class="label label-danger"><sf:errors path="title"/></span>
                </div>
                <div class="form-group">
                    <label for="poster">Poster:</label>
                    <sf:input path="poster" class="form-control"/>
                </div>
                <sf:hidden path="id"/>
                <button type="submit" class="btn btn-success">Submit</button>
            </sf:form>
        </div>
    </body>
</html>
