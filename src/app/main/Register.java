package app.main;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import app.utils.DBConn;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ")
				.append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		if(register(username, password, firstName, lastName, address, phone, email)){
			response.sendRedirect("login.jsp");
		}
		
	}

	private boolean register(String u, String p, String fn, String ln, String ad, String ph, String em) {
		boolean registered = false;

		Connection con = null;

		try {
			con = DBConn.connect();

			PreparedStatement stat = con.prepareStatement(
					"INSERT INTO users (username, password, first_name, last_name, address, phone, email)  VALUES (?,?,?,?,?,?,?)");

			stat.setString(1, u);
			stat.setString(2, p);
			stat.setString(3, fn);
			stat.setString(4, ln);
			stat.setString(5, ad);
			stat.setString(6, ph);
			stat.setString(7, em);
			
			stat.executeUpdate();
			registered = true;

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
		return registered;
	}
}
