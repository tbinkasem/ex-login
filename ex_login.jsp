<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login System</title>
    <style>
        table{
            border: 1px dotted red;
        }
    </style>
</head>
<body>
    <%

        if(request.getParameter("Submit") != null){
            String user = request.getParameter("Username");
            session.setAttribute("user_login", user);
    %>
    <jsp:forward page="ex_process_login.jsp" />
    <%
        }else{

    %>
    <form action="ex_login.jsp" method="post">
        <table>
            <tr>
                <th colspan="2">Login System</th>
            </tr>
            <tr>
                <th>Username : </th>
                <td>
                    <input type="text" name="Username">
                </td>
            </tr>
            <tr>
                <th>Password : </th>
                <td>
                    <input type="password" name="Password">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="Submit" value="Login">
                </td>
            </tr>
        </table>
    </form>
    <% } %>
</body>
</html>