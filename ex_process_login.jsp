<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Process Login</title>
        <style>
            table{
                border: 1px dotted red;
            }
        </style>
    </head>
    <body>
        
        <%
            if(session.getAttribute("user_login") == null || session.getAttribute("user_login") == null){
                out.print("Please to Login...");
                out.print("<meta http-equiv='refresh' content='3; url=ex_login.jsp'>");
            }else{
                out.print("Welcome to This Page...");
        %>
        <form action="ex_logout.jsp" method="post">
            <table>
                <tr>
                    <th>Homepage System</th>
                </tr>
                <tr>
                    <th>Hello : </th>
                    <td>
                        <%
                        if(session.getAttribute("user_login") == "admin"){
                            out.print("Admin...");
                        }else if(session.getAttribute("user_login") == "user"){
                            out.print("User...");
                        }else{
                            out.print("Quest...");
                        }
                        %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="logout" value="Logout">
                    </td>
                </tr>
            </table>
        </form>
        <% } %>
    </body>
</html>