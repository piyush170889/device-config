package com.srd.deviceconfig.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.utils.DbUtil;

public class DeviceMasterAction extends ActionSupport implements SessionAware {

	private String serialNo;

	private String comments;

	private int comPort;

	private int dataRate;

	private int baudRate;

	private int parity;

	private int stopBits;

	private int isConn;

	private List<DeviceMasterAction> deviceMasterList;

	private SessionMap<String, Object> sessionMap;

	public DeviceMasterAction() {
	}

	public DeviceMasterAction(String serialNo, String comments, int comPort, int dataRate, int baudRate, int parity,
			int stopBits, int isConn) {
		this.serialNo = serialNo;
		this.comments = comments;
		this.comPort = comPort;
		this.dataRate = dataRate;
		this.baudRate = baudRate;
		this.parity = parity;
		this.stopBits = stopBits;
		this.isConn = isConn;
	}

	@Override
	public String toString() {
		return "DeviceMasterAction [serialNo=" + serialNo + ", comments=" + comments + ", comPort=" + comPort
				+ ", dataRate=" + dataRate + ", baudRate=" + baudRate + ", parity=" + parity + ", stopBits=" + stopBits
				+ ", isConn=" + isConn + ", deviceMasterList=" + deviceMasterList + "]";
	}

	public int getBaudRate() {
		return baudRate;
	}

	public void setBaudRate(int baudRate) {
		this.baudRate = baudRate;
	}

	public int getParity() {
		return parity;
	}

	public void setParity(int parity) {
		this.parity = parity;
	}

	public int getStopBits() {
		return stopBits;
	}

	public void setStopBits(int stopBits) {
		this.stopBits = stopBits;
	}

	public int getIsConn() {
		return isConn;
	}

	public void setIsConn(int isConn) {
		this.isConn = isConn;
	}

	public void setDeviceMasterList(List<DeviceMasterAction> deviceMasterList) {
		this.deviceMasterList = deviceMasterList;
	}

	public List<DeviceMasterAction> getDeviceMasterList() {
		return deviceMasterList;
	}

	public String getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}

	public int getComPort() {
		return comPort;
	}

	public void setComPort(int comPort) {
		this.comPort = comPort;
	}

	public int getDataRate() {
		return dataRate;
	}

	public void setDataRate(int dataRate) {
		this.dataRate = dataRate;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("Execute Called");
		deviceMasterList = new ArrayList<DeviceMasterAction>();

		try {
			this.deviceMasterList.addAll(getMasterList());
			System.out.println("Size = " + this.deviceMasterList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return Constants.SUCCESS_MSG;
	}

	// DAO Methods
	private List<DeviceMasterAction> getMasterList() throws SQLException {

		Connection con = DbUtil.getConnection();
		String deviceMasterSql = "SELECT * FROM device_master";

		PreparedStatement ps = con.prepareStatement(deviceMasterSql);
		ResultSet rs = ps.executeQuery();

		List<DeviceMasterAction> deviceMasterActionList = new ArrayList<DeviceMasterAction>();

		while (rs.next()) {
			DeviceMasterAction deviceMasterAction = new DeviceMasterAction(rs.getString("SERIAL_NO"),
					rs.getString("COMMENTS"), rs.getInt("COM_PORT"), rs.getInt("DATA_RATE"), rs.getInt("BAUD_RATE"),
					rs.getInt("PARITY"), rs.getInt("STOP_BITS"), rs.getInt("IS_CONN"));

			System.out.println("OUTPUT::::::::::::::::::::\n" + deviceMasterAction.toString());

			deviceMasterActionList.add(deviceMasterAction);
		}

		return deviceMasterActionList;
	}

	public String updateDeviceData() {

		String returnMssg = Constants.SUCCESS_MSG;

		try {
			System.out.println(this.toString());
			Connection con = DbUtil.getConnection();

			String deviceMasterUpdateSql = "UPDATE device_master SET \"COMMENTS\"=?, \"COM_PORT\"=?, "
					+ "\"DATA_RATE\"=?, \"BAUD_RATE\"=?, \"PARITY\"=?, \"STOP_BITS\"=? WHERE \"SERIAL_NO\"=?";
			PreparedStatement ps = con.prepareStatement(deviceMasterUpdateSql);
			ps.setString(1, this.comments);
			ps.setInt(2, this.comPort);
			ps.setInt(3, this.dataRate);
			ps.setInt(4, this.baudRate);
			ps.setInt(5, this.parity);
			ps.setInt(6, this.stopBits);
			ps.setString(7, this.serialNo);
			ps.executeUpdate();
			sessionMap.put(Constants.CON_DEVICE_KEY, this.serialNo);
			System.out.println("SESSION_MAP= " + sessionMap.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return returnMssg;
	}

	public void setSession(Map<String, Object> map) {
		sessionMap = (SessionMap) map;
	}

}
