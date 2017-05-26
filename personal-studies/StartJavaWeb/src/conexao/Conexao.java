package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;

public class Conexao {
	
	private Connection conn;
	
	private void conectar() throws SQLException {
		System.out.println("Conectando..");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/med","root","");
		} catch (Exception e) {
			System.out.println("Drive não encontrado");
			java.util.logging.Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, e);
		}
	}
	
	private Connection getConexao() {
		try {
			conectar();
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return conn;

	}
}
