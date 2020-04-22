import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		
		String name = request.getParameter("rname");
		String username = request.getParameter("rusername");
		String password = request.getParameter("ruserpw");
		String confirmpw = request.getParameter("rconfirmpw");
		
		User user = new User();
		user.setName(name);
		user.setUsername(username);
		user.setPassword(password);
		user.setConfirmPassword(confirmpw);
		
		UserDAO userDao = new UserDAO();
		String userRegistered = userDao.registerUser(user);
		
		if(userRegistered.equals("SUCCESS")) {
			response.setStatus(HttpServletResponse.SC_OK);
		} else if(userRegistered.equals("FAIL")) {
			response.sendError(401, "Login Failed");
		}
	}
		
		
//		PrintWriter out = response.getWriter();
//		
//		String rname = request.getParameter("rname");
//		String rusername = request.getParameter("rusername");
//		String ruserpw = request.getParameter("ruserpw");
//		String rconfirmpw = request.getParameter("rconfirmpw");
//		
//		System.out.println(rname);
//		System.out.println(rusername);
//		System.out.println(ruserpw);
//		System.out.println(rconfirmpw);
//		
//		if(ruserpw.equals(rconfirmpw)) {
//			try {
//				System.out.println("Checkpoint 1");
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection con;
//				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rooster", "root", "RoosterSQL123");
//				Statement stmt;
//				stmt = con.createStatement();
//				ResultSet rs = stmt.executeQuery("SELECT username FROM rooster.user WHERE username = '"+rusername+"'");
//				
//				if(!rs.next()) {
//					System.out.println("Checkpoint 2");
//					PreparedStatement pst = null;
//					String query = "INSERT INTO rooster.user(username, name, password) VALUES ('"+rusername+"', '"+rname+"', '"+ruserpw+"' )";
//					pst = con.prepareStatement(query);
//					int x = pst.executeUpdate();
//				    if(x > 0){ // If properly inserted, set response status to success
//				    	System.out.println("Information properly inserted into the database");
//				    	response.setStatus(HttpServletResponse.SC_OK);	
//				    } else {
//						System.out.println("Checkpoint 5");
//						response.sendError(401, "Login Failed");
//				    }
//				} else {
//					System.out.println("Checkpoint 3");
//					response.sendError(401, "Login Failed");
//					// somehow return this to ui and say username taken
//				}    
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		} else {
//			System.out.println("Checkpoint 4");
//			response.sendError(401, "Login Failed");
//			// somehow return this to ui and say username taken
//		}
//	}
}
