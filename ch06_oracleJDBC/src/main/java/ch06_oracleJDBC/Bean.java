package ch06_oracleJDBC;

public class Bean {
	private String dept_id;
	private String dept_title;
	private String locaiton_id;
	
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}
	public String getDept_title() {
		return dept_title;
	}
	public void setDept_title(String dept_title) {
		this.dept_title = dept_title;
	}
	public String getLocaiton_id() {
		return locaiton_id;
	}
	public void setLocaiton_id(String locaiton_id) {
		this.locaiton_id = locaiton_id;
	}
}
