<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
            <form action="/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Title">
                </div>
                <div class="form-group">
                    <label for="poster">Poster</label>
                    <input type="text" class="form-control" id="poster" name="poster" placeholder="Poster">
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>
    </body>
</html>
