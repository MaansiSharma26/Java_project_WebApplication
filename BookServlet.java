package BookStore;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {

    // Handle GET request to retrieve books from the database and forward them to JSP
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<String[]> books = new ArrayList<>();
        
        // SQL query to fetch books from the database, including the image_url
        String query = "SELECT title, price, image_url FROM books"; 

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            // Loop through each result in the database and add the book data to the list
            while (rs.next()) {
                String title = rs.getString("title");
                String price = rs.getString("price");
                String imageUrl = rs.getString("image_url");

                // Add the book data (title, price, image_url) to the books list
                books.add(new String[]{title, price, imageUrl});
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Pass the books list to the JSP
        request.setAttribute("books", books);

        // Forward the request to the JSP page for rendering
        request.getRequestDispatcher("bookCollection.jsp").forward(request, response);
    }
}