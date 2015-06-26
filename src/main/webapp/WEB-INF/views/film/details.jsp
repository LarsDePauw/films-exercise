<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>${film.title}</title>
        <style type="text/css">
            body {
                background: url("${film.poster}") no-repeat;
                background-size: 100% 100%;
                background-color: rgba(0, 0, 0, 0.5);
                height: 100%;
            }

            div {
                background-color: rgba(255, 255, 255, 0.5);
                height: 100%;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>${film.title}</h1>
            <p>Lorem ipsum pipsum blipsum descriptum</p>
        </div>
    </body>
</html>
