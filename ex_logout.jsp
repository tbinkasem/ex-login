<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Logout System</title>
    </head>
    <body>
        <%
            session.invalidate();
            out.print("Logout from Page...");
            out.print("<meta http-equiv='refresh' content='3; url=ex_login.jsp'>");
        %>
    </body>
</html>

