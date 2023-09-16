<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Truck Management</title>
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
        }

        h1 {
            font-size: 36px;
            color: #000; /* Black text color */
        }

        form {
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-danger {
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Truck Edit Page</h1>

    <!-- Create/Update Truck Form -->
    <form method="get" action="/updateTruck">
        <input type="hidden" name="truckId" value="${truckDto.truckId}">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="${truckDto.name}" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description">${truckDto.description}</textarea>
        </div>
        <div class="form-group">
            <label for="weight">Weight</label>
            <input type="number" class="form-control" id="weight" name="weight" value="${truckDto.weight}" required>
        </div>
        <div class="form-group">
            <label for="volume">Volume</label>
            <input type="number" class="form-control" id="volume" name="volume" value="${truckDto.volume}" required>
        </div>
        <div class="form-group">
            <label for="pickupDate">Pickup Date</label>
            <input type="date" class="form-control" id="pickupDate" name="pickupDate" pattern="yyyy-MM-dd HH:mm:ss" value="${truckDto.pickupDate}">
        </div>
        <div class="form-group">
            <label for="deliveryDate">Delivery Date</label>
            <input type="date" class="form-control" id="deliveryDate" name="deliveryDate" pattern="yyyy-MM-dd HH:mm:ss" value="${truckDto.deliveryDate}">
        </div>
        <button type="submit" class="btn btn-primary">Save Changes</button>
        <button type="button" class="btn btn-danger" onclick="history.go(-1)">Don't Save</button>
    </form>
</div>
</body>
</html>
