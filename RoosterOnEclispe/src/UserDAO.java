import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {

	Connection con = null;

	public String registerUser(User user) {
		String name = user.getName();
		String username = user.getUsername();
		String password = user.getPassword();
		String confirmpw = user.getConfirmPassword();

		if (password.equals(confirmpw)) {
			try {
				System.out.println("Checkpoint 1");
				con = DBConnection.createConnection();
				Statement stmt;
				stmt = con.createStatement();
				ResultSet rs = stmt
						.executeQuery("SELECT username FROM rooster.user WHERE username = '" + username + "'");

				if (!rs.next()) {
					System.out.println("Checkpoint 2");
					PreparedStatement pst = null;
					String query = "INSERT INTO rooster.user(username, name, password) VALUES ('" + username + "', '"
							+ name + "', '" + password + "' )";
					pst = con.prepareStatement(query);
					int x = pst.executeUpdate();
					if (x > 0) { // If properly inserted, set response status to success
						System.out.println("Information properly inserted into the database");
						return "SUCCESS";
					} else {
						System.out.println("Checkpoint 5");
						return "FAIL";
					}
				} else {
					System.out.println("Checkpoint 3");
					return "FAIL";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "FAIL";
	}
	
	public String authenticateUser(User user) {
		String username = user.getUsername();
		String password = user.getPassword();
		System.out.println("Checkpoint 1");
		if(username != null && password != null) {
			System.out.println("Checkpoint 2");
			try { // this is for login - extracting information from database
				con = DBConnection.createConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT username, password FROM rooster.user WHERE username = '"+username+"' and password = BINARY '"+password+"'");
				
				if(rs.next()) {
					System.out.println("Checkpoint 3");
					return "SUCCESS";				
				} else {
					System.out.println("Checkpoint 4");
					return "FAIL";
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("Checkpoint 5");
		return "FAIL";
	}

	public void updateName(User user) {

	}

	public void updatePfp(User user) {

	}

	public void deleteUser(User user) {

	}
}
