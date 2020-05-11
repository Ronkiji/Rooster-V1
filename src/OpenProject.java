import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.rooster.type.*;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/OpenProject")
public class OpenProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OpenProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		HttpSession session = request.getSession(false);
		String username = (String)session.getAttribute("username");
		
		ProjectDAO projectDao = new ProjectDAO();
		
		if(projectDao.authenticateProject(username, id)) {
			session.setAttribute("currentProjectId", id);
			System.out.println(id);
			response.sendRedirect("pem.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
}

