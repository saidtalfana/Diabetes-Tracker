<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diabete Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
        }
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>Diabete Form</h2>
<form action="save" method="post">
    <div>
        <label for="date">Date:</label>
        <input type="date" id="date" name="date">
    </div>
    <div>
        <label for="date">Time:</label>
        <input type="time" id="time" name="time">
    </div>
    <div>
        <label for="glucoseLevel">Glucose Level:</label>
        <input type="number" id="glucoseLevel" name="glucoseLevel" step="0.1">
    </div>
    <div>
        <label for="idDibate">User Id:</label>
        <input type="number" id="idDibate" name="user.idDiabete" step="0.1">
    </div>
    <div>
        <input type="submit" value="Save">
    </div>
</form>
</body>
</html>
