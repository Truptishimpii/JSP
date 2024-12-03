package cwpc;

public class Student {
   
	String firstname;
	String lastname;
	boolean goldcustomers;
	public Student(String firstname, String lastname, boolean goldcustomers) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.goldcustomers = goldcustomers;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public boolean isGoldcustomers() {
		return goldcustomers;
	}
	public void setGoldcustomers(boolean goldcustomers) {
		this.goldcustomers = goldcustomers;
	}
	
	

}
