<%-- 
    Document   : mybranddeleteconfirm
    Created on : Sep 26, 2014, 11:06:25 PM
    Author     : intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String id=request.getParameter("ID").toString().trim();

            Connection connection=null;
            Statement statement=null;

            String connectionstring="jdbc:mysql://localhost:3306/myemployeeperformanceerp";

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection=DriverManager.getConnection(connectionstring,"root","i472bmt");

            statement=connection.createStatement();

            String sqlQuery="DELETE FROM brand WHERE ID='"+id+"'";

            statement.executeUpdate(sqlQuery);

            statement.close();
            connection.close();

        %>
        <h2>deleted successfully<br>Refresh the page</h2>
    </body>
</html>
