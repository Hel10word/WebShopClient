package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao {

	
	protected Connection conn;
	protected PreparedStatement ps;
	protected ResultSet rs;
	
}
