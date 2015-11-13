package app.tasks;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import app.utils.DBConn;

public class TaskList {

	public TaskList() {}

	
	
	// Add task to database.
	public static boolean addTask(String t, String p, int d, int id) {
		boolean isAdded = false;

		System.out.println("adding task...");
		Connection con = null;

		try {
			con = DBConn.connect();

			PreparedStatement stat = con.prepareStatement(
					"INSERT INTO tasks (taskname, taskpriority, done, users_id) VALUES (?,?,?,?);");

			stat.setString(1, t);
			stat.setString(2, p);
			stat.setInt(3, d);
			stat.setInt(4, id);

			stat.executeUpdate();
			isAdded = true;

			System.out.println("task added...");

		}
		catch (Exception e) {
			System.out.println("task NOT added...");
			e.printStackTrace();
		}
		try {
			con.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return isAdded;
	}

	public static boolean markTaskDone(String task, int i){
		boolean isDone = false;
		
Connection con = null;
		
		try {
			con = DBConn.connect();

			System.out.println("marking task as done...");
			PreparedStatement stat = con.prepareStatement(
					"UPDATE tasks SET done=1 WHERE taskname=? AND users_id=?;");

			stat.setString(1, task);
			stat.setInt(2, i);

			stat.executeUpdate();
			isDone = true;

			System.out.println("task marked as done...");

		}
		catch (Exception e) {
			System.out.println("task NOT marked as done...");
			e.printStackTrace();
		}
		try {
			con.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isDone;
	}
	
	public static boolean removeTask(String task, int i){
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
	
	public static ArrayList<Task> getTasks(int i) {
		
		ArrayList<Task> tasks = new ArrayList<Task>();
		
		try {
			Connection con = DBConn.connect();

			PreparedStatement stat = con
					.prepareStatement("SELECT * FROM tasks WHERE users_id = ?;");
			stat.setInt(1, i);
			ResultSet rs = stat.executeQuery();

			while (rs.next()) {
				Task task = new Task(rs.getString(2), rs.getString(3),
						rs.getInt(4));

				System.out.println(task.getTaskName() + " " + task.getPriority());
				tasks.add(task);
				System.out.println(tasks);
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
		
		return tasks;
	}

}
