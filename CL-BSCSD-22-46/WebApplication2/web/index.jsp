<%-- 
    Document   : index
    Created on : Aug 8, 2021, 10:02:15 AM
    Author     : 94711
--%>
<%@page import="oop.UserSession"%>
<%@page import="oop.Utils"%>
<%@page import="java.util.List"%>
<%@page import="java.util.UUID"%>
<%@page import="oop.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
    </head>
    <body>
               
        <%
            UserSession userSession = Utils.handleUserSession(request, response, session);
            if (userSession == null) {
                response.sendRedirect("login.jsp");
            } else {
        %>
        
      
        
        <h1>Welcome <%out.print(userSession.getUsername());%>  

        
        <table id='tblPersons'>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>NIC</th>
                    <th>Gender</th>
                    <th>Mobile No</th>
                    <th>Date of Birth</th>
                </tr>
            <thead>
            <tbody>
                    <%  out.print(Utils.getPersonsHTML());  %>
            </tbody>
    </body>
    <script>
        $(document).ready( function () {
            $('#tblPersons').DataTable();
        } );
    </script>
  <%}%>
</html>
