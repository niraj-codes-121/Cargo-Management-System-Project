<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Driver Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e0e9f0; /* Light blue background color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff; /* White container background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 20px;
        }

        h2 {
            font-size: 28px;
            color: #007bff; /* Blue text color */
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        table th {
            background-color: #007bff; /* Blue header background color */
            color: #fff; /* White header text color */
        }

        .btn-primary {
            background-color: #007bff; /* Blue button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            font-size: 16px;
            margin-right: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .btn-danger {
            background-color: #dc3545; /* Red button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        .btn-success {
            background-color: #28a745; /* Green button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-success:hover {
            background-color: #1e7e34; /* Darker green on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Driver List</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Weight</th>
            <th>Volume</th>
            <th>Pickup Date</th>
            <th>Delivery Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="driverItem" items="${driverList}">
            <tr>
                <td>${driverItem.name}</td>
                <td>${driverItem.description}</td>
                <td>${driverItem.weight}</td>
                <td>${driverItem.volume}</td>
                <td>${driverItem.pickupDate}</td>
                <td>${driverItem.deliveryDate}</td>
                <td>
                    <a href="/driver-edit?driverId=${driverItem.driverId}" class="btn btn-primary">Edit</a>
                    <a href="/driver-delete?driverId=${driverItem.driverId}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container">
    ${message}
    <form>
        <input type="button" value="Go Back" class="btn btn-success" onclick="history.go(-1)">
    </form>
</div>
</body>
</html>
