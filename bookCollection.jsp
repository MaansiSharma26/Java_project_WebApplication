<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Collection - Awesome Bookstore</title>
    <style>
        body {
            background-image: url('Web/Images/back2.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 185vh;
            margin: 0;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: white;
        }

        .book-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .book-item {
            width: 180px;
            background: #fff;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .book-item img {
            width: 150px;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .book-item h3 {
            font-size: 16px;
            margin: 10px 0;
        }

        .book-item p {
            font-size: 14px;
            margin: 5px 0;
        }

        .book-item .price {
            font-weight: bold;
            color: green;
        }

        .book-item button {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            background: #ff4081;
            color: #fff;
            cursor: pointer;
        }

        .book-item button:hover {
            background: #ff6090;
        }
    </style>
</head>
<body>
    <h1>Self-Help Books on Sale</h1>
    <div class="book-list">
        <%
            // Assuming books are being passed from the controller as a list of book details
            List<String[]> books = (List<String[]>) request.getAttribute("books");
            if (books != null && !books.isEmpty()) {
                for (String[] book : books) {
                    String title = book[0];
                    String price = book[1];
                    String imageUrl = book[2]; // Assuming image URL is in the database
        %>
                    <div class="book-item">
                        <img src="<%= imageUrl %>" alt="<%= title %> Cover">
                        <h3><%= title %></h3>
                        <p class="price">Rs. <%= price %>.00</p>
                        <form method="POST" action="buyBook">
                            <input type="hidden" name="action" value="buy">
                            <input type="hidden" name="bookTitle" value="<%= title %>">
                            <!-- Added quantity input field -->
                            <input type="number" name="quantity" value="1" min="1">
                            <button type="submit">BUY</button>
                        </form>
                    </div>
        <%
                }
            } else {
        %>
            <p>No books available.</p>
        <%
            }
        %>
    </div>
</body>
</html>
