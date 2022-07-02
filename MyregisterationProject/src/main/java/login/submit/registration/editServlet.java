package login.submit.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editServlet
 */
@WebServlet("/edit")
public class editServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editServlet() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Employee emp = new Employee();
		EmployeeDAO up = new EmployeeDAOimp();

		int id = Integer.parseInt(request.getParameter("id"));
		String pwsd = request.getParameter("newpassword");
		String name = request.getParameter("newname");

		emp.setId(id);
		emp.setPassword1(pwsd);
		emp.setName(name);

		up.insertUpdatedEmp(emp);
		request.setAttribute("success1message", "Updation done, Thank you");
		request.getRequestDispatcher("welcome.jsp").forward(request, response);

	}

}
