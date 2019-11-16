package com.srd.deviceconfig.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbUtil {

	private static Connection connection = null;

	private static Connection materialDbConnection = null;

	private static final String POSTGRES_USERNAME = "postgres";

	private static final String POSTGRES_PASSWORD = "admin";

	public static Connection getConnection() {

		if (connection != null) {
			return connection;
		} else {
			try {
				String driver = "org.postgresql.Driver";
				String url = "jdbc:postgresql://localhost:5432/deviceconfig";

				Class.forName(driver);
				connection = DriverManager.getConnection(url, POSTGRES_USERNAME, POSTGRES_PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}
	}

	public static Connection getMaterialDbConnection() {

		if (materialDbConnection != null) {
			return materialDbConnection;
		} else {
			try {
				String driver = "org.postgresql.Driver";
				String url = "jdbc:postgresql://localhost:5432/page3_db";

				Class.forName(driver);
				materialDbConnection = DriverManager.getConnection(url, POSTGRES_USERNAME, POSTGRES_PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return materialDbConnection;
		}
	}

	public boolean executeQuery(String sql) {

		boolean isExecuted = false;

		try {

			Connection cn = getConnection();
			PreparedStatement ps = null;

			ps = cn.prepareStatement(sql);
			ps.execute();
			ps.close();

			isExecuted = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isExecuted;
	}

}
