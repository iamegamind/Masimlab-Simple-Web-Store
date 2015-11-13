package app.tasks;

public class Task {

	private String taskName;
	private String priority;
	private boolean done;
	
	public Task(String tn, String prio, int done){
		this.setTaskName(tn);
		this.setPriority(prio);
		
		if(done == 0){
			this.setDone(false);
		}
		else if (done == 1){
			this.setDone(true);
		}
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}
}
