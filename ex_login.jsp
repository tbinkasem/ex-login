<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login System</title>
</head>
<body>
    <%

        if(request.getParameter("Submit") != null){

            String Username = request.getParameter("Username");
            if(Username == "admin"){
                session.setAttribute("user_admin",Username);
            }else if(Username == "user"){
                session.setAttribute("user_user",Username);
            }
    %>
    <jsp:forward page="ex_process_login.jsp" />
    <%
        }else{

    %>
    <form action="ex_process_login.jsp" method="post">
        <table>
            <tr>
                <th colspan="2">Login System</th>
            </tr>
            <tr>
                <th>Username : </th>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <th>Password : </th>
                <td>
                    <input type="password" name="password">
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