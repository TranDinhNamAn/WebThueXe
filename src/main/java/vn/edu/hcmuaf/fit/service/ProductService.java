package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Brand;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ProductService {
    public static List<Product> getData() throws SQLException {
        List<Product> list = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product");
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4),
                        rs.getInt(5),
                        rs.getInt(6)

                ));
            }
        } else {
            System.out.println("No result");
        }
        return list;
    }

    public static List<Product> getProduct() throws SQLException {
        List<Product> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product");

            while (rs.next()) {
                list1.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4),
                        rs.getInt(5),
                        rs.getInt(6)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }

    public static List<Product> getListByPage(List<Product> arr, int start, int end) {
        List<Product> list = new ArrayList<>();
        for (int i = start; i < end; i++) {
            list.add(arr.get(i));
        }
        return list;
    }
    public static List<Product> getListProductByCategory(String san_pham) throws SQLException {
        List<Product> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product inner join brand on product.brandID = brand.brandID where brand.brandID = '"+ san_pham + "'");

            while (rs.next()) {
                list1.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4),
                        rs.getInt(5),
                        rs.getInt(6)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }
    public static List<Brand> getListBrand() throws SQLException {
        List<Brand> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from brand");

            while (rs.next()) {
                list1.add(new Brand(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }

    public static void main(String[] args) throws SQLException {
        ProductService sv = new ProductService();
        sv.getListBrand();
    }
}
