package servlet;

import entity.UserAccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = MySQLConntUtils.getMySQLConnection()) {
            // Process parameters from the form
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            UserAccount usr = new UserAccount(username, password);

            // Add the object to the database
            UserAccount u = DBUtils.findUser(conn, usr.getUserName(), usr.getPassword());

            if (u != null) {
                // Tạo một session
                HttpSession session = request.getSession();
                
                // Lưu thông tin người dùng vào session
                session.setAttribute("username", u.getUserName());

                // Chuyển hướng đến trang đã đăng nhập
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Thông báo</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1>Thông tin đăng nhập không chính xác <a href=index.jsp>Nhập lại</a></h1>");
                    out.println("</body>");
                    out.println("</html>");
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}