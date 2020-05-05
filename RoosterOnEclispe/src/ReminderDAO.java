import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

public class ReminderDAO {
	
	Connection con = null;
	User user;
	Project project;
	
	public void setUser(User user) {
		this.user = user;
		System.out.println("Username in void method of ReminderDAO class is: " + user.getUsername());
	}
	
	public void setProject(Project project) {
		this.project = project;
	}
	
	public boolean createReminder(Reminder reminder){
		
		System.out.println("Username in the ReminderDAO class is: " + user.getUsername());
		
		String username = user.getUsername();
		int project_id = project.getId();
		String title = reminder.getTitle();
		Date date = reminder.getDate();
		int id = -1;
		
		con = DBConnection.createConnection();
		
		try {
			String query = "INSERT INTO rooster.reminder(username, project_id, title, due_date) VALUES (?, ?, ?, ?)";
			PreparedStatement pst = null;
			pst = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, username);
			pst.setInt(2, project_id);
			pst.setString(3, title);
			pst.setDate(4, date);
            
			int x = pst.executeUpdate();
			
			ResultSet rs = pst.getGeneratedKeys(); // dunno where to use this
            if(rs.next()){
                id = rs.getInt(1);
            } 
            
            System.out.println("Reminder ID in ReminderDAO is: " + id);
            reminder.setId(id);
            
			if (x > 0) { // If properly inserted, set response status to success
				System.out.println("New reminder properly inserted into the database.");
				con.close();
				return true;
			} else {
				System.out.println("New reminder failed to insert into the database.");
				con.close();
				return false;
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
}
