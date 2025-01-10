<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Awesome Bookstore</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('Web/Images/Register.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        

        /* Flex container for alignment */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            position: absolute;
        }

        /* Left-side Text Section */
        .text-section {
            position: absolute;
            left: 50px; /* Move it closer to the left edge */
            text-align: left; /* Align text to the left */
            color: black;
        }

        .text-section h1 {
            font-weight: bold;
            margin-bottom: 20px;
        }

        .text-section h3 {
            font-weight: bold;
            margin-bottom: 10px;
        }

        /* Centered Glass Registration Box */
        .glass-container {
            max-width: 400px;
            width: 300px;
            height: 380px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            border: 1px solid #fff;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            text-align: center;
        }

        .glass-container h2 {
            color: black;
            margin-bottom: 20px;
            
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input {
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 10px;
            background: transparent;
            border: 1px solid #fff;
            color: black;
            font-size: 14px;
        }

        input::placeholder {
            color: black;
        }

        input:focus {
            outline: none;
        }

        button {
            background: #fff;
            color: black;
            padding: 10px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background: transparent;
            color: black;
            outline: 1px solid #fff;
        }

        p {
            font-size: 12px;
            color: black;
            margin-top: 15px;
            text-align: center;
        }

        p a {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Left Text Section -->
        <div class="text-section">
            <h1>Register for Awesome Bookstore</h1>
            <h3>Books open your mind</h3>
            <h3>Unlock the doors to knowledge</h3>
        </div>

        <!-- Registration Form -->
        <div class="glass-container">
            <h2>Register</h2>
            <form action="#" method="POST">
                <input type="text" id="username" name="username" required placeholder="Username">
                <input type="email" id="email" name="email" required placeholder="Email">
                <input type="password" id="password" name="password" required placeholder="Password">
                <button type="submit">Register</button>
                <p>Already have an account? <a href="index.html">Login here</a></p>
            </form>
        </div>
    </div>
</body>
</html>
