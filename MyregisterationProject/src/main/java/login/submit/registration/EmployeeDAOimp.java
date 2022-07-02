package login.submit.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployeeDAOimp implements EmployeeDAO {

	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertEmployee(Employee emp) {

		int status = 0;
		try {
			con = MyConnectionProvider.getcon();

			ps = con.prepareStatement("insert into nidhin.employee1(USERNAME, PASSWORD, NAME) values(?,?,?)");
			ps.setString(1, emp.getUsername());
			ps.setString(2, emp.getPassword1());
			ps.setString(3, emp.getName());
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Employee getEmployee(String username, String password) {
		Employee emp = new Employee();

		try {

			con = MyConnectionProvider.getcon();
			System.out.println("i am here");
			ps = con.prepareStatement("select * from nidhin.EMPLOYEE1 where username = ? and password = ?");

			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				emp.setUsername(rs.getString(1));
				emp.setPassword1(rs.getString(2));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return emp;
	}

	@Override
	public int insertUpdatedEmp(Employee emp) {
		int status = 0;
		try {
			con = MyConnectionProvider.getcon();
			ps = con.prepareStatement("UPDATE nidhin.employee1 SET PASSWORD = ?, NAME = ? WHERE ID = ?");
			ps.setString(1, emp.getPassword1());
			ps.setString(2, emp.getName());
			ps.setInt(3, emp.getId());
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	@Override
	public String get_name(String username) {
		String wname = "";
		try {

			con = MyConnectionProvider.getcon();
			ps = con.prepareStatement("select name from nidhin.employee1 where USERNAME = ?");

			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				wname = rs.getString("NAME");

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return wname;
	}
	
	@Override
	public int delete(String id ) {
		int status = 0;
		try {
			con = MyConnectionProvider.getcon();
			ps = con.prepareStatement("DELETE FROM nidhin.employee1 WHERE id=?");
			ps.setString(1, id);
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("status" + status);
		return status;
	}

}
