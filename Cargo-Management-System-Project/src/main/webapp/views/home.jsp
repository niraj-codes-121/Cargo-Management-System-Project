<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Cargo Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e0e9f0; /* Light blue background color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #000; /* Black text color for the entire page */
        }

        /* Navbar styles */
        .navbar {
            background-color: #007bff;
        }

        .navbar-brand {
            color: #fff;
            font-size: 24px;
            font-weight: bold;
        }

        .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-nav {
            margin-left: auto;
        }

        .nav-link {
            color: #fff;
            font-size: 18px;
            margin-right: 20px;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: #e0e0e0;
        }

        /* Page content styles */
        .container {
            padding: 40px;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #000; /* Black text color */
        }

        /* Add a button style */
        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Cargo Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/cargo-home">Cargo <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/truck-home">Truck</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/driver-home">Driver</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/route">Route</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Page content -->
<div class="container mt-4">
    <h1>Welcome to Cargo Management System</h1>
    <p>Your Trusted Solution for Efficient Cargo and Logistics Management</p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
