<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Appointment List</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; color: #343a40; }
        .container { max-width: 800px; margin: 50px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #007bff; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #dee2e6; padding: 10px; text-align: left; }
        th { background-color: #007bff; color: #ffffff; }
    </style>
</head>
<body>
<div class="container">
    <h1>Appointment List for ${owner}</h1>
    <p>Date: ${date}</p>
    <table>
        <tr>
            <th>Owner</th>
            <th>Animal</th>
            <th>Date</th>
            <th>Reason</th>
        </tr>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.ownerName}</td>
                <td>${appointment.animalName}</td>
                <td>${appointment.appointmentDate}</td>
                <td>${appointment.reason}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
