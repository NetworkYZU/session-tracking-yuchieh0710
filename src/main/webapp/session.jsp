<%-- 
    Document   : cookie
    Created on : Sep 13, 2018, 9:19:51 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String food=(String)session.getAttribute("food");
            if(food==null){
                food="";
            }
        %>
        <form action="saveSession" method="POST">
            Your Favorite Food: <input type="text" name="food" value="<%=food%>"/><br/>
            <input type="submit"/>
        </form><br/>
        <a href="LogoutServlet">Log out</a>
    </body>
</html>
