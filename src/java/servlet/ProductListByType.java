/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import entity.Product;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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


@WebServlet("/ProductListByType")
public class ProductListByType extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ProductListByType() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");

        if (id != null && !id.isEmpty()) {
            // Bước 2: Gọi phương thức để lấy danh sách sản phẩm
            List<Product> list = new ArrayList<>();
            try {
                Connection conn = MySQLConntUtils.getMySQLConnection();
                list = DBUtils.ProductListByTypeID(conn, id);
            } catch (SQLException | ClassNotFoundException e) {
                // Xử lý ngoại lệ nếu cần
                e.printStackTrace();
            }

            // Bước 3: Đặt danh sách sản phẩm vào thuộc tính của request
            request.setAttribute("productList", list);

            // Bước 4: Chuyển hướng đến trang JSP để hiển thị danh sách
            request.getRequestDispatcher("/Productlistforuser.jsp").forward(request, response);
        } else {
            // Xử lý khi id không tồn tại hoặc không hợp lệ
            response.getWriter().println("Invalid or missing 'id' parameter");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Xử lý yêu cầu POST nếu cần
        // Bạn có thể thêm logic để cập nhật hoặc chèn dữ liệu ở đây
    }
}

