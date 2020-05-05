import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/NewReminder")
public class NewReminder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewReminder() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("reminderTitle");
		String dateValue = request.getParameter("reminderDate");
		Date date = null;
		
		System.out.println("DateValue is " + dateValue);
		
		if(dateValue != "") {
			 date = Date.valueOf(dateValue);
			 System.out.println("dateValue is not null");
		} else {
			System.out.println("dateValue is null");
		}
		
		HttpSession session = request.getSession(false);
		
		User user = new User();
		UserDAO userDao = new UserDAO();
		user = userDao.autofill(user, (String)session.getAttribute("username"));
		
		Project project = new Project();
		ProjectDAO projectDao = new ProjectDAO();
		projectDao.autofill(project, (Integer)session.getAttribute("project_id"));
		
		
		Reminder reminder = new Reminder();
		reminder.setTitle(title);
		reminder.setDate(date);
		reminder.setUsername(user.getUsername());
		reminder.setProject_id((Integer)session.getAttribute("project_id"));
		
		System.out.println(reminder.getTitle());
		System.out.println(reminder.getDate());
		System.out.println(user.getUsername());
		System.out.println("id#" + reminder.getProject_id());
		
		ReminderDAO reminderDao = new ReminderDAO();
		reminderDao.setUser(user);
		reminderDao.setProject(project);
		boolean status = reminderDao.createReminder(reminder);
		
		if(status = true) {
			
			session.setAttribute("reminder_title", reminder.getTitle());
			session.setAttribute("reminder_id", reminder.getId());
			session.setAttribute("due_date", reminder.getDate());
			
			System.out.println("NewReminder " + reminder.getTitle());
			System.out.println("NewReminder " + reminder.getId());
			System.out.println("NewReminder " + reminder.getDate());
			
			response.setStatus(HttpServletResponse.SC_OK);
		} else if(status == false) {
			response.sendError(401, "Login Failed");
		}

//		String title = request.getParameter("projectTitle");
//		String color = request.getParameter("projectColor");
//		
//		Project project = new Project();
//		project.setTitle(title);
//		project.setColor(color);
//		
//		
//		
//		ProjectDAO projectDao = new ProjectDAO();
//		HttpSession session = request.getSession(false);
//		
//		System.out.println("Extracted username is: " + (String)session.getAttribute("username"));
//		
//		User user = new User();
//		UserDAO userDao = new UserDAO();
//		user = userDao.autofill(user, (String)session.getAttribute("username"));
//		
//		System.out.println("User's username is: " + user.getUsername());
//		
//		projectDao.setUser(user);
//		boolean status = projectDao.createProject(project);
//		
//		if(status == true) {	
//			
//			session.setAttribute("title", project.getTitle());
//			session.setAttribute("color", project.getColor());
//			session.setAttribute("id", project.getId());
//			
//			System.out.println("Project ID is: " + project.getId());
//			
//			response.setStatus(HttpServletResponse.SC_OK);
//			
//		} else if(status == false) {
//			response.sendError(401, "Login Failed");
//		}
	}
}