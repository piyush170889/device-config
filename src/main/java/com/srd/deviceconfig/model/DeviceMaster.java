package com.srd.deviceconfig.model;

import java.io.Serializable;

public class DeviceMaster implements Serializable {

	private static final long serialVersionUID = 1L;

	private String serialNo;

	private int comPort;

	private String comments;

	private int dataRate;

	public DeviceMaster() {
	}

	public String getSerialNo() {
		return this.serialNo;
	}

	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}

	public int getComPort() {
		return this.comPort;
	}

	public void setComPort(int comPort) {
		this.comPort = comPort;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public int getDataRate() {
		return this.dataRate;
	}

	public void setDataRate(int dataRate) {
		this.dataRate = dataRate;
	}

}