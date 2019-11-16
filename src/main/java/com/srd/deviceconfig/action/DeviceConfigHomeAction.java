package com.srd.deviceconfig.action;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;

public class DeviceConfigHomeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String errorMssg;

	@Override
	public String execute() throws Exception {
		return Constants.SUCCESS_MSG;
	}

	public String getErrorMssg() {
		return errorMssg;
	}

	public void setErrorMssg(String errorMssg) {
		this.errorMssg = errorMssg;
	}

}
