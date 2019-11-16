package com.srd.deviceconfig.utils;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.srd.deviceconfig.constants.Constants;

public class CommonUtility {

	public static String getDeviceTable() throws Exception {

		HttpSession session = ServletActionContext.getRequest().getSession(false);

		if (session != null && session.getAttribute(Constants.CON_DEVICE_KEY) != null) {
			String deviceKey = (String) session.getAttribute(Constants.CON_DEVICE_KEY);
//			System.out.println("Constants.CON_DEVICE_KEY=" + deviceKey);
//
//			System.out.println("deviceToTableMapping Table name=" + Constants.deviceToTableMapping.get(deviceKey));
			return Constants.deviceToTableMapping.get(deviceKey);
		} else
			throw new Exception("No Session Exists");
	}

}
