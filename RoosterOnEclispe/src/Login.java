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
		String userLogin = userDao.authenticateUser(user);
		
		if(userLogin.equals("SUCCESS")) {
			response.setStatus(HttpServletResponse.SC_OK);
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
		} else if(userLogin.equals("FAIL")) {
			response.sendError(401, "Login Failed");
		}
	}
}

