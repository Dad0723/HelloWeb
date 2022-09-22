<%-- 
    Document   : response
    Created on : 21/09/2022, 04:29:36 PM
    Author     : DANIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name"/>
        
        <h1>Hello, <jsp:getProperty name="mybean" property="name" />!

        </h1>
    </body>
</html>
