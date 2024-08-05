<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Animal Detail</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; color: #343a40; }
        .container { max-width: 600px; margin: 50px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #007bff; }
        p { font-size: 18px; line-height: 1.6; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #dee2e6; padding: 10px; text-align: left; }
        th { background-color: #007bff; color: #ffffff; }
    </style>
</head>
<body>
<div class="container">
    <h1>Animal Detail</h1>
    <p>ID: ${id}</p>
    <p>Name: ${animalDTO.name}</p>
    <p>Species: ${animalDTO.species}</p>
    <p>Age: ${animalDTO.age}</p>
    <h2>All Animals</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Species</th>
            <th>Age</th>
        </tr>
        <c:forEach var="animal" items="${animals}">
            <tr>
                <td>${animal.name}</td>
                <td>${animal.species}</td>
                <td>${animal.age}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
