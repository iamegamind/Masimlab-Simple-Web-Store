package app.products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.*;
import javax.servlet.*;

import javax.servlet.http.HttpSession;

import app.tasks.Task;
import app.utils.DBConn;

public class ProductsList {

	public ProductsList() {
	}

	// public static boolean addProductToCart(String p) {
	// boolean isAdded = false;
	//
	// System.out.println("adding product...");
	//
	// HttpServletRequest req = null;
	// HttpSession session = req.getSession();
	//
	// ArrayList<Product> cart = (ArrayList<Product>)
	// session.getAttribute("userCart");
	//
	// Product prod = getProduct(p);
	// cart.add(prod);
	//
	// return isAdded;
	// }

	public static boolean checkOut(int uid, double total, String time) {
		boolean isCheckedOut = false;

		Connection con = null;

		try {
			con = DBConn.connect();

			PreparedStatement stat = con.prepareStatement(
					"INSERT INTO sales (user_id, total_cost, sale_date) VALUES (?, ?, ?);");

			stat.setInt(1, uid);
			stat.setDouble(2, total);
			stat.setString(3, time);

			stat.executeUpdate();
			isCheckedOut = true;

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return isCheckedOut;
	}

	public static boolean likeProduct(String p) {
		boolean isLiked = false;

		Connection con = null;

		try {
			con = DBConn.connect();

			System.out.println("liking product...");

			PreparedStatement stat = con.prepareStatement(
					"SELECT likes FROM products WHERE prod_name =?;");

			stat.setString(1, p);

			ResultSet rs = stat.executeQuery();

			int likes = 0;

			while (rs.next()) {

				likes = rs.getInt(1);
			}

			// System.out.println("likes - " + likes);

			PreparedStatement update = con.prepareStatement(
					"UPDATE products SET likes=? WHERE prod_name =?;");
			likes += 1;

			update.setInt(1, likes);
			update.setString(2, p);

			update.executeUpdate();
			//
			// System.out.println("likes after update - " + likes);
			// System.out.println("product '" + p + "' has been liked....");

		}
		catch (Exception e) {
			System.out.println("task NOT marked as done...");
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isLiked;
	}

	public static boolean removeTask(String task, int i) {
		boolean isRemoved = false;

		Connection con = null;

		try {
			con = DBConn.connect();

			System.out.println("removing task....");
			PreparedStatement stat = con.prepareStatement(
					"DELETE FROM tasks WHERE taskname=? AND users_id=?;");

			stat.setString(1, task);
			stat.setInt(2, i);

			stat.executeUpdate();
			isRemoved = true;

			System.out.println("task removed...");

		}
		catch (Exception e) {
			System.out.println("task NOT removed...");
			e.printStackTrace();
		}
		try {
			con.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return isRemoved;
	}

	public static Product getProduct(String p) {
		Product prod = null;
		Connection con = null;

		try {
			con = DBConn.connect();

			PreparedStatement stat = con.prepareStatement(
					"SELECT * FROM products WHERE prod_name =?;");

			stat.setString(1, p);

			ResultSet rs = stat.executeQuery();

			while (rs.next()) {
				boolean available = false;
				if (rs.getInt(5) == 1) {
					available = true;
				}

				prod = new Product(rs.getString(2), rs.getString(3),
						rs.getInt(4), available, rs.getString(6), rs.getInt(7));
			}

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return prod;

	}

	public static ArrayList<Product> getProducts() {

		ArrayList<Product> products = new ArrayList<Product>();

		try {
			Connection con = DBConn.connect();

			PreparedStatement stat = con
					.prepareStatement("SELECT * FROM products;");
			ResultSet rs = stat.executeQuery();

			while (rs.next()) {
				boolean available = false;
				if (rs.getInt(5) == 1) {
					available = true;
				}

				Product prod = new Product(rs.getString(2), rs.getString(3),
						rs.getInt(4), available, rs.getString(6), rs.getInt(7));
				products.add(prod);

			}
			con.close();
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("SQL EXCEPTION, CHECK SQL");
		}
		catch (NumberFormatException e) {
			System.out.println("NUMBER FORMAT EXCEPTION");
		}

		return products;
	}

}
