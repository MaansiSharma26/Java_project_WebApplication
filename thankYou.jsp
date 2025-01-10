<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You for Your Purchase!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('Web/Images/back3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4CAF50;
            text-align: center;
        }
        p {
            font-size: 18px;
            color: #333;
            text-align: center;
        }
        .btn-container {
            text-align: center; /* Centering the button container */
            margin-top: 20px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
        }
        .btn:hover {
            background-color: #45a049;
            
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Thank You for Your Purchase!</h2>
        
        <p>You have successfully purchased! <strong>${requestScope.bookTitle}</strong>.</p>
        <p>Your order number is 1777E84F6108.</p>
        <p>It will be delivered in 2-12 business days.</p>


        <p>Please continue shopping with us </p>
        <p>Email us at help@harrys.com with any questions,</p>
        <p>suggestions, or your favorite Books.</p>
        <form action="BookServlet" method="POST">
        <div class="btn-container">
            <a href="bookCollection.jsp" class="btn">Go Back to Book Collection</a>
        </div>
        </form>
    </div>

</body>
</html>