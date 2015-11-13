package app.tasks;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManageTasks")
public class ManageTasks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManageTasks() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Get Served at: ")
				.append(request.getContextPath());
		
		int uidy = (Integer) request.getSession().getAttribute("uuid");
		String taskname = request.getParameter("TaskName");
		
		System.out.println(taskname);
		
		if(request.getParameter("Delete") !=null){
			TaskList.removeTask(taskname, uidy);
			response.sendRedirect("completed.jsp");
		}
		
		if(request.getParameter("MarkDone") != null){
			TaskList.markTaskDone(taskname, uidy);
			response.sendRedirect("welcome.jsp");
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String task = request.getParameter("taskname");
		String prio = request.getParameter("taskpriority");	
		int uid = (Integer) request.getSession().getAttribute("uuid");
		int done = 0;
		int user = uid;

		if(request.getParameter("MarkDone") != null){
			System.out.println("Marking as done");
		}
		
		
		System.out.println("UID - " + uid);
		TaskList.addTask(task, prio, done, user);
		response.sendRedirect("welcome.jsp");
	}

	
}
