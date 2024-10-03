package servlet;

import entity.Product;
import entity.ProductType;
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
@WebServlet("/ProductListServletForUser")
public class ProductListServletForUser extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ProductListServletForUser() {
        super();
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String errorString = null;
        List<Product> list = new ArrayList<Product>();
        try {
            Connection conn = MySQLConntUtils.getMySQLConnection();
            list = DBUtils.selectAllProduct(conn);
            System.out.print("okdoskdoskdosdk");
        } catch (SQLException | ClassNotFoundException e) {
        }
        request.setAttribute("productList", list);
        request.getRequestDispatcher("/Productlistforuser.jsp").forward(request, response);
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
