package servlet;

import entity.Product;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/DetailsProductServlet")
public class DetailsProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DetailsProductServlet() {
        super();
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
// TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.getWriter().append("Served at:").append(request.getContextPath());
String errorString = null;
        String id = request.getParameter("id");
        Product product = new Product();
        try {
            Connection conn = MySQLConntUtils.getMySQLConnection();
            product = DBUtils.findProductById(conn, id);
        } catch (SQLException | ClassNotFoundException e) {
        }
// TODO Auto-generated catch block
        request.setAttribute("errorString", errorString);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/DetailsProduct.jsp").forward(request,response);
    }


    /**
     * @param request
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
