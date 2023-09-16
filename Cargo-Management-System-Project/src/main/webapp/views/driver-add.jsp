<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
            text-align: left; /* Align form elements to the left */
        }

        h1 {
            font-size: 36px;
            color: #007bff; /* Blue text color */
            margin-bottom: 20px;
        }

        form {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block; /* Display labels as blocks to stack them vertically */
        }

        .btn-primary {
            background-color: #007bff; /* Blue button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
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
            padding: 10px 20px;
            font-size: 18px;
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
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-success:hover {
            background-color: #1e7e34; /* Darker green on hover */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Driver Management</h1>

    <!-- Create/Update  Form -->
    <form method="post" action="/createDriver">
        <input type="hidden" name="driverId" value="${driverDto.id}">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="${driverDto.name}" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description">${driverDto.description}</textarea>
        </div>
        <div class="form-group">
            <label for="weight">Weight</label>
            <input type="number" class="form-control" id="weight" name="weight" value="${driverDto.weight}" required>
        </div>
        <div class="form-group">
            <label for="volume">Volume</label>
            <input type="number" class="form-control" id="volume" name="volume" value="${driverDto.volume}" required>
        </div>
        <div class="form-group">
            <label for="pickupDate">Pickup Date</label>
            <input type="date" class="form-control" id="pickupDate" name="pickupDate" value="${driverDto.pickupDate}">
        </div>
        <div class="form-group">
            <label for="deliveryDate">Delivery Date</label>
            <input type="date" class="form-control" id="deliveryDate" name="deliveryDate" value="${driverDto.deliveryDate}">
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
        <button type="button" class="btn btn-success" onclick="history.go(-1)">Go Back</button>
    </form>
</div>
</body>
</html>
