<%-- 
    Document   : response
    Created on : 21/09/2022, 04:29:36 PM
    Author     : DANIEL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:setProperty name="mybean" property="nacimiento"/>
        <jsp:setProperty name="mybean" property="hora"/>
        <jsp:setProperty name="myBean" property="edad" value= "{<%=mybean%>}" />
    
      
        <c:choose>
            <c:when test="${mybean.hora>=12 && mybean.hora<=18}">
                Good afternoon!
            </c:when>
            <c:when test="${mybean.hora>=18 && mybean.hora<=23}">
                Good night!
            </c:when>
            <c:otherwise>
                    Buenos dias
            </c:otherwise>    
        </c:choose>
        
        <h1>Hello, <jsp:getProperty name="mybean" property="name" />!

        </h1>
        <h2>
            Su fecha de nacimiento es, <jsp:getProperty name="mybean" property="nacimiento" /><br/>
            Su edad es, <jsp:getProperty name="mybean" property="edad" />
        
        </h2>
        
        
    </body>
</html>
