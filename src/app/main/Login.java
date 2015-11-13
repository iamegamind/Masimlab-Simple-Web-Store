package app.main;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import app.products.Product;
import app.users.User;
import app.utils.*;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int UID = 0;

	public Login() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ")
				.append(request.getContextPath());
		
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

		response.setContentType("text/html;charset=UTF-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (username != null && password != null) {
			if (isAuth(username, password)) {

				HttpSession session = request.getSession();
				session.setAttribute("uid", UID);
				session.setAttribute("currentUser",
						getCurrentUser(UID));
				 
				// initialize a new empty cart.
				ArrayList<Product> cart = new ArrayList<Product>();
				session.setAttribute("userCart", cart);
				
				RequestDispatcher rd = request
						.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
			}
			else {
				response.sendRedirect("login.jsp");
			}
		}
	}

	private User getCurrentUser(int i) {
		User u = null;
		Connection con = null;
		
		try {
			con = DBConn.connect();

			PreparedStatement stat = con
					.prepareStatement("SELECT * FROM users WHERE user_id = ?");

			stat.setInt(1, UID);

			ResultSet rs = stat.executeQuery();
			
			while (rs.next()) {
				u = new User(
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8)
						);
				
			}

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

		return u;
	}

	private boolean isAuth(String u, String p) {
		boolean auth = false;

		try {
			Connection conn = DBConn.connect();
			Statement stmnt = conn.createStatement();
			ResultSet rs = stmnt.executeQuery("SELECT * FROM users");

			while (rs.next()) {
				if (rs.getString("username").equalsIgnoreCase(u)
						&& rs.getString("password").equals(p)) {
					auth = true;

					UID = rs.getInt("user_id");
				}
			}
			conn.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return auth;
	}
}