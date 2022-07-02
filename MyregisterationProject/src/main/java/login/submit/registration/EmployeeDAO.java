package login.submit.registration;

public interface EmployeeDAO {
	public int insertEmployee(Employee emp);
	public Employee getEmployee(String username, String password);
	public int insertUpdatedEmp(Employee emp);
	public String get_name(String username);
	public int delete(String id );
}
