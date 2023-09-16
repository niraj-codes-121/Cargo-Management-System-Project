<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Driver Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e0e9f0; /* Light blue background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        .button-container {
            text-align: center;
        }

        /* Style for the buttons */
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #28a745; /* Green background color */
            color: #fff; /* White text color */
            text-decoration: none; /* Remove underlining from links */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin: 10px;
        }

        /* Add CSS styles for the links */
        a {
            font-size: 24px;
            color: red;
            text-decoration: none; /* Remove default link underline */
        }

        /* Style for the container */
        .container {
            text-align: center;
            padding: 20px;
            background-color: #fff; /* White container background */
            border-radius: 10px; /* Rounded corners for container */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Add shadow to container */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary"></nav>
<div class="container mt-1">
    <h1>Welcome to Driver Module</h1>
    <br>

    <div class="button-container">
        <a href="/driver-add" class="button">Add Driver</a>
        <a href="/driver-view" class="button">View Driver</a>
        <form>
        <input type="button" value="Go Back" class="btn btn-success" onclick="history.go(-1)">
    </form>
    </div>
</div>
</body>
</html>
