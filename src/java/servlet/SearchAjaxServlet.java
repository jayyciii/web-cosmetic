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

@WebServlet("/SearchAjaxServlet")
public class SearchAjaxServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SearchAjaxServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String errorString = null;
        String txtSearch = request.getParameter("txtSearch");
        List<Product> list = new ArrayList<Product>();
        try {
            Connection conn = MySQLConntUtils.getMySQLConnection();
            list = DBUtils.searchProductByName(conn, txtSearch);
            System.out.print("okdoskdoskdosdk");
        } catch (SQLException | ClassNotFoundException e) {
        }

        String productHTML = generateProductHTML(list);

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(productHTML);
    }

    private String generateProductHTML(List<Product> productList) {
    StringBuilder html = new StringBuilder();
    for (Product product : productList) {
        html.append("<div class=\"col-lg-4 col-sm-6\">")
            .append("<div class=\"single_product_item\">")
            .append("<a href=\"DetailsProductServlet?id=").append(product.getId()).append("\">")
            .append("<img src=\"").append(product.getImage()).append("\" alt=\"\">")
            .append("</a>")
            .append("<div class=\"single_product_text\">")
            .append("<h4>").append(product.getName()).append("</h4>")
            .append("<h3>Price : ").append(product.getPrice()).append("</h3>")
            .append("<a href=\"AddToCart?id=").append(product.getId()).append("\">+ add to cart<i class=\"ti-heart\"></i></a>")
            .append("</div></div></div>");
    }
    return html.toString();
}

}
