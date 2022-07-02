package login.submit.registration;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnectionProvider {

	static Connection con;

	public static Connection getcon() {
		try {
			DriverManager.registerDriver(new org.apache.derby.jdbc.EmbeddedDriver());
			System.out.println("helloooooo");
			con = DriverManager.getConnection("jdbc:derby:/Users/nid/MyDB;create=true;upgrade=true", "nidhin", "nidhhin123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("con" + con);
		return con;

	}

}
