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
@WebServlet("/NewProject")
public class NewProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("projectTitle");
		String color = request.getParameter("projectColor");
		
		Project project = new Project();
		project.setTitle(title);
		project.setColor(color);
		
		
		
		ProjectDAO projectDao = new ProjectDAO();
		HttpSession session = request.getSession(false);
//		Project[] projects = projectDao.getProjectArray((String)session.getAttribute("username"));
		
		System.out.println("Extracted username is: " + (String)session.getAttribute("username"));
		
		User user = new User();
		UserDAO userDao = new UserDAO();
		user = userDao.autofill(user, (String)session.getAttribute("username"));
		
		System.out.println("User's username is: " + user.getUsername());
		
		projectDao.setUser(user);
		boolean status = projectDao.createProject(project);
		
		if(status == true) {	
			
//			session.setAttribute("project_title", project.getTitle());
//			session.setAttribute("color", project.getColor());
			session.setAttribute("currentProjectId", project.getId());
//			session.setAttribute("projectArray", projects);
			
			System.out.println("Project ID is: " + project.getId());
			
			response.setStatus(HttpServletResponse.SC_OK);
			
		} else if(status == false) {
			response.sendError(401, "Login Failed");
		}
	}
}

