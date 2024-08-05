<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Animal Info</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; color: #343a40; }
        .container { max-width: 600px; margin: 50px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #007bff; }
        p { font-size: 18px; line-height: 1.6; }
    </style>
</head>
<body>
<div class="container">
    <h1>Animal Information</h1>
    <p>Name: ${name}</p>
    <p>Species: ${species}</p>
    <p>Age: ${age}</p>
</div>
</body>
</html>
