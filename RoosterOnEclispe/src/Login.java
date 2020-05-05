import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("lusername");
		String password = request.getParameter("luserpw");
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		UserDAO userDao = new UserDAO();
		boolean status = userDao.authenticateUser(user);
		
		ProjectDAO projectDao = new ProjectDAO();
		Project[] project = projectDao.getProjectArray(username);
		
		
		if(status == true) {
			
			user = userDao.autofill(user, username);
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("name", user.getName());
			session.setAttribute("darkmode", user.getDarkmode());
			session.setAttribute("icon", user.getIcon());
			session.setAttribute("projectArray", project);
			
//			System.out.println(projectDao.getProjectArray(username)[4].getId());
//			
//			Object obj = session.getAttribute("projectArray");
//			Project[] projectTest = (Project[])obj;
//			System.out.println(projectTest[4].getTitle());
			
			response.setStatus(HttpServletResponse.SC_OK);
			
		} else if(status == false) {
			response.sendError(401, "Login Failed");
		}
	}
}

