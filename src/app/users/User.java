package app.users;

public class User {
	private String userName;
	private String password;
	private String firstName;
	private String lastName;
	private String address;
	private String phone;
	private String email;
	
	public User(String u, String p, String fn, String ln, String ad, String ph, String em){
		this.userName = u;
		this.password = p;
		this.firstName = fn;
		this.lastName = ln;
		this.address = ad;
		this.phone = ph;
		this.email = em;
		
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
