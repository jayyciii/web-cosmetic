package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddProductServlet
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100)
@WebServlet("/PayProductServlet")
public class PayProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String LOCAL_UPLOAD_DIR = "/Users/lengocloc/Documents/java-img/";

    public PayProductServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
// TODO Auto-generated method stub
        request.getRequestDispatcher("/index-loggedin.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        try {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            conn = MySQLConntUtils.getMySQLConnection();

            // Xử lý tham số từ form
            String id = request.getParameter("ID");
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String image = request.getParameter("image");

            Receipt receipt = new Receipt(id, name, image, price);
            DBUtils.insertReceipt(conn, receipt);

            request.getRequestDispatcher("/index-loggedin.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        doGet(request, response);
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
