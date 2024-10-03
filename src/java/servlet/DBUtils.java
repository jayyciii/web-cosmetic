package servlet;

import entity.UserAccount;
import entity.Product;
import entity.Cart;
import entity.ProductType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBUtils {

    public static UserAccount findUser(Connection conn, String userName, String password) throws SQLException {
        String sql = "SELECT a.Username, a.Password, a.Gender FROM USER_ACCOUNT a WHERE a.Username=? AND a.Password=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String gender = rs.getString("Gender");
            UserAccount user = new UserAccount();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            return user;
        }
        return null;
    }

    public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
        String sql = "INSERT INTO USER_ACCOUNT(Username, Gender, Password) VALUES(?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, user.getUserName());
        pstm.setString(2, user.getGender());
        pstm.setString(3, user.getPassword());

        pstm.executeUpdate();
    }

    public static int insertProduct(Connection conn, Product product) throws SQLException, ClassNotFoundException {
        int rows = 0;
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            String sql = "Insert into Product(Id,Name,Type,Price, Image, Description, TypeID) values (?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, product.getId());
            pstm.setString(2, product.getName());
            pstm.setString(3, product.getType());
            pstm.setInt(4, product.getPrice()); // Assuming getPrice() returns Integer
            pstm.setString(5, product.getImage());
            pstm.setString(6, product.getDescription());
            pstm.setString(7, product.getTypeid());
            rows = pstm.executeUpdate();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return rows;
    }

    public static int insertReceipt(Connection conn, Receipt receipt) throws SQLException, ClassNotFoundException {
        int rows = 0;
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            String sql = "Insert into RECEIPT(Id,Name,Image,Price) values (?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, receipt.getId());
            pstm.setString(2, receipt.getName());
            pstm.setString(3, receipt.getImage());
            pstm.setInt(4, receipt.getPrice()); // Assuming getPrice() returns Integer
            rows = pstm.executeUpdate();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return rows;
    }

    public static int insertProduct(Product product) throws
            SQLException, ClassNotFoundException {
        Connection conn = null;
        int rows = 0;
        try {
            conn
                    = MySQLConntUtils.getMySQLConnection();
            String sql = "Insert into Product(Id,Name,Type,Price, Image,Description, Typeid) values (?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, product.getId());
            pstm.setString(2, product.getName());
            pstm.setString(3, product.getType());
            pstm.setInt(4, product.getPrice());
            pstm.setString(5, product.getImage());
            pstm.setString(6, product.getDescription());
            pstm.setString(7, product.getTypeid());
            rows = pstm.executeUpdate();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return rows;
    }

    public static int updateProduct(Connection conn, Product product) throws SQLException, ClassNotFoundException {
        int rows = 0;
        try {
            String sql = "UPDATE Product SET Name=?, Type=?, Price=?, Image=?, Description=?, TypeID=? WHERE Id=?";
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, product.getName());
            pstm.setString(2, product.getType());
            pstm.setInt(3, product.getPrice());
            pstm.setString(4, product.getImage());
            pstm.setString(5, product.getDescription());
            pstm.setString(6, product.getTypeid());
            pstm.setString(7, product.getId());

            rows = pstm.executeUpdate();
        } finally {
        }
        return rows;
    }

    public static void deleteProductById(Connection conn, String id) throws SQLException {
        String sql = "delete from Product where id=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
        pstm.executeUpdate();
    }

    public static Product findProductById(Connection conn, String id) throws
            SQLException, ClassNotFoundException {
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            String sql = "Select * from product where id=?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                Product pro = new Product(rs.getString("id"), rs.getString("Name"), rs.getString("Type"), rs.getInt("Price"), rs.getString("Image"), rs.getString("Description"), rs.getString("TypeID"));
                return pro;
            }
            return null;
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {

                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE,
                            null, ex);
                }
            }
        }
    }

    public static List<Product> selectAllProduct(Connection conn) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> productList = new ArrayList<Product>();
        try {
            ps = conn.prepareStatement("select * from Product");
            rs = ps.executeQuery();
            Product p;
            while (rs.next()) {
                p = new Product(rs.getString("Id"), rs.getString("Name"), rs.getString("Type"), rs.getInt("Price"), rs.getString("Image"), rs.getString("Description"), rs.getString("TypeID"));
                productList.add(p);
            }
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return productList;
    }

    

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();

        try {
            if (!cartList.isEmpty()) {
                for (Cart item : cartList) {
                    Connection conn = MySQLConntUtils.getMySQLConnection();
                    String sql = "Select * from product where id=?";
                    PreparedStatement pstm = conn.prepareStatement(sql);
                    pstm.setString(1, item.getId());
                    ResultSet rs = pstm.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getString("Id"));
                        row.setName(rs.getString("Name"));
                        row.setPrice(rs.getInt("Price") * item.getQuantity());
                        row.setImage(rs.getString("Image"));
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }

        return products;
    }

    public static List<Product> ProductListByTypeID(Connection conn, String id) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> productList = new ArrayList<>();
        try {
            ps = conn.prepareStatement("Select * from product where TypeID=?");
            ps.setString(1, id);
            rs = ps.executeQuery();
            Product p;
            while (rs.next()) {
                p = new Product(
                        rs.getString("Id"),
                        rs.getString("Name"),
                        rs.getString("Type"),
                        rs.getInt("Price"),
                        rs.getString("Image"),
                        rs.getString("Description"),
                        rs.getString("TypeID")
                );
                productList.add(p);
            }
        } catch (SQLException e) {
            System.out.print(e);
        } finally {
            if (ps != null) {
                ps.close();
            }
            // Note: Avoid closing the connection here, as it may be reused externally.
        }

        return productList;
    }

    public static List<Product> selectAllProductTypes(Connection conn) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> productTypeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement("select * from product");
            rs = ps.executeQuery();
            Product productType;
            while (rs.next()) {
                productType = new Product(
                        rs.getString("Id"),
                        rs.getString("Name")
                );
                productTypeList.add(productType);
            }
        } catch (SQLException e) {
            System.out.print(e);
        } finally {
            if (ps != null) {
                ps.close();
            }
        }
        return productTypeList;
    }
    
    public static List<Product> searchProductByName(Connection conn, String txtSearch) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> productList = new ArrayList<Product>();
        try {
            ps = conn.prepareStatement("select * from Product where Name like ?;");
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            Product p;
            while (rs.next()) {
                p = new Product(rs.getString("Id"), rs.getString("Name"), rs.getString("Type"), rs.getInt("Price"), rs.getString("Image"), rs.getString("Description"), rs.getString("TypeID"));
                productList.add(p);
            }
        } catch (SQLException e) {
            System.out.print(e);
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return productList;
    }

}
