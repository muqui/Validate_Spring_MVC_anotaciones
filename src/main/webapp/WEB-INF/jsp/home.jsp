<%-- 
    Document   : home
    Created on : 15/06/2018, 03:26:41 PM
    Author     : mq12
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Validar formulario</h1>
        <form:form method="POST" action="home" modelAttribute="user">
            <form:errors  path="*" element="div" cssClass="alert alert-danger" /> 
            <p> <form:label path="nombre">Nombre </form:label> 
                <form:input path="nombre" cssClass="form-control"></form:input>
                <form:errors  path="nombre" /> 
            </p>
            <p> <form:label path="email">Nombre </form:label> 
                <form:input path="email" cssClass="form-control"></form:input>
                <form:errors  path="email" /> 
            </p>
            <hr>
            
            <input type="submit" value="Enviar" Class="form-control"  />

        </form:form>
    </body>
</html>
