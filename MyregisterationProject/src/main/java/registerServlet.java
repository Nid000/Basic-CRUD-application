
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.submit.registration.Employee;
import login.submit.registration.EmployeeDAO;
import login.submit.registration.EmployeeDAOimp;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("able to reach here");
		EmployeeDAO cd = new EmployeeDAOimp();
		Employee emp = new Employee();

		String username = request.getParameter("username");
		String password = request.getParameter("password1");
		String retypepass = request.getParameter("password2");
		String name = request.getParameter("name");

		emp.setName(name);
		emp.setPassword1(password);
		emp.setPassword2(retypepass);
		emp.setUsername(username);
		if (!password.equals(retypepass)) {
			request.setAttribute("mismatchmessage", "Password doesn't match");
			request.setAttribute("username", username);
			request.setAttribute("name", request.getParameter("name"));
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {
			cd.insertEmployee(emp);

			request.setAttribute("successmessage", "Registration done, Please login to continue");
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

	}

}
