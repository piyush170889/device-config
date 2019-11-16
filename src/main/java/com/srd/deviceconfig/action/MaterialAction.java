package com.srd.deviceconfig.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.utils.DbUtil;

public class MaterialAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5333896481191870602L;

	private List<String> tableNames;

	public MaterialAction() {
	}

	@Override
	public String execute() throws Exception {

		Connection con = DbUtil.getMaterialDbConnection();

		String tableNameSql = "SELECT table_name FROM information_schema.tables WHERE table_schema='public'";
		PreparedStatement ps = con.prepareStatement(tableNameSql);
		ResultSet rs = ps.executeQuery();

		this.tableNames = new ArrayList<String>();
		while (rs.next()) {
			this.tableNames.add(rs.getString("table_name"));
		}

		System.out.println("Table Name = " + this.tableNames.toString());

		return Constants.SUCCESS_MSG;
	}

	public List<String> getTableNames() {
		return tableNames;
	}

	public void setTableNames(List<String> tableNames) {
		this.tableNames = tableNames;
	}

}
