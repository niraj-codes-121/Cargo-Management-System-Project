<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Success Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e0e9f0; /* Light blue background color */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff; /* White container background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            font-size: 36px;
            color: #007bff; /* Blue text color */
            margin-bottom: 20px;
        }

        p {
            font-size: 20px;
            color: #007bff; /* Blue text color */
            margin-bottom: 30px;
        }

        .btn-danger {
            background-color: #28a745; /* Light green button background color */
            color: #fff; /* White button text color */
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-danger:hover {
            background-color: #1e7e34; /* Darker green on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Success Page</h1>
    <p> Created Successfully</p>
    <form>
        <input type="button" value="Go Back" class="btn btn-danger" onclick="history.go(-1)">
    </form>
</div>
</body>
</html>
