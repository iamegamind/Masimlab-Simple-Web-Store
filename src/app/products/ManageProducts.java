package app.products;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ManageProducts")
public class ManageProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManageProducts() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String prodName = request.getParameter("ProductName");
		System.out.println(prodName);
		ArrayList<Product> carty = (ArrayList<Product>)session.getAttribute("userCart");

		if (request.getParameter("LikeProduct") != null) {
			ProductsList.likeProduct(prodName);
			response.sendRedirect("welcome.jsp");
		}
		else if (request.getParameter("AddToCart") != null) {
			carty.add(ProductsList.getProduct(prodName));
			response.sendRedirect("welcome.jsp");
		}
		else if (request.getParameter("RemoveFromCart") != null){
			if(!carty.remove(ProductsList.getProduct(prodName))){
				System.out.println("item Not removed");
			};
			response.sendRedirect("cart.jsp");
		}
		else if(request.getParameter("Logout") != null){
			session.invalidate();
			response.sendRedirect("login.jsp");
		}
		else if(request.getParameter("Checkout") !=null){
			int uid = (Integer)session.getAttribute("uid");
			System.out.print("uid - "+uid +" ");
			double total = Double.parseDouble(request.getParameter("total"));
			System.out.println("total - "+ total +" ");
			java.util.Date dt = new java.util.Date();

			java.text.SimpleDateFormat sdf = 
			     new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

			String time = sdf.format(dt);
			System.out.println("time - "+ time);
			
			ProductsList.checkOut(uid, total, time);
			
			carty.clear();
			
			response.sendRedirect("./confirmation.jsp");
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
