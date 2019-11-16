package com.srd.deviceconfig.constants;

import java.util.HashMap;
import java.util.Map;

public class Constants {

	public static final String SUCCESS_MSG = "SUCCESS";

	public static final String ERROR_MSG = "ERROR";

	public static final String LINE_SEPARATOR = System.getProperty("line.separator");

	public static final String FILE_SEPARATOR = System.getProperty("file.separator");

	public static final String CON_DEVICE_KEY = "connected_device_id";

	public static Map<String, String> fieldIdToDbColumnMapping = new HashMap<String, String>();

	public static Map<String, String> deviceToTableMapping = new HashMap<String, String>();

	static {
		// Populate fieldIdToDbColumnMapping Hashmap
		fieldIdToDbColumnMapping.put("itc_int_temp_setpoint", "int_temp_setpoint");
		fieldIdToDbColumnMapping.put("itc_p", "p");
		fieldIdToDbColumnMapping.put("itc_i", "i");
		fieldIdToDbColumnMapping.put("itc_d", "d");
		fieldIdToDbColumnMapping.put("ds_average_time_zero", "average_time_zero");
		fieldIdToDbColumnMapping.put("ds_normal_Avg_time", "normal_avg_time");
		fieldIdToDbColumnMapping.put("ds_det_Avg_time", "det_avg_time");
		fieldIdToDbColumnMapping.put("itc_freq", ""); // No Column Mapping
		fieldIdToDbColumnMapping.put("itc_freq1", "pll_freq1");
		fieldIdToDbColumnMapping.put("itc_freq2", "pll_freq2");
		fieldIdToDbColumnMapping.put("itc_rf_gain", ""); // No Column Mapping
		fieldIdToDbColumnMapping.put("itc_rf_gain1", "ch1_rf_gain");
		fieldIdToDbColumnMapping.put("itc_rf_gain2", "ch2_rf_gain");
		fieldIdToDbColumnMapping.put("itc_analog_gain", ""); // No Column
																// Mapping
		fieldIdToDbColumnMapping.put("itc_analog_gain1", "ch1_a_gain");
		fieldIdToDbColumnMapping.put("itc_analog_gain2", "ch2_a_gain");
		fieldIdToDbColumnMapping.put("ce_coeffD", "coeff_d");
		fieldIdToDbColumnMapping.put("ce_rho", "rho");
		fieldIdToDbColumnMapping.put("ce_ch1Alpha0", "ch1alpha0");
		fieldIdToDbColumnMapping.put("ce_a1", "a1");
		fieldIdToDbColumnMapping.put("ce_a2", "a2");
		fieldIdToDbColumnMapping.put("ce_a3", "a3");
		fieldIdToDbColumnMapping.put("ce_ch1_Beta0", "ch1beta0");
		fieldIdToDbColumnMapping.put("ce_a8", "a8");
		fieldIdToDbColumnMapping.put("ce_ch2Alpha0", "ch2alpha0");
		fieldIdToDbColumnMapping.put("ce_a0", "a0");
		fieldIdToDbColumnMapping.put("ce_a5", "a5");
		fieldIdToDbColumnMapping.put("ce_ch2Beta0", "ch2beta0");
		fieldIdToDbColumnMapping.put("ce_a6", "a6");
		fieldIdToDbColumnMapping.put("ce_s1", "s1");
		fieldIdToDbColumnMapping.put("ce_s2", "s2");
		fieldIdToDbColumnMapping.put("ce_n1", "n1");
		fieldIdToDbColumnMapping.put("ce_n2", "n2");
		fieldIdToDbColumnMapping.put("dp_blink_Range_max", "blink_range_max");
		fieldIdToDbColumnMapping.put("dp_mat_temp_Max", "mat_temp_max");
		fieldIdToDbColumnMapping.put("dp_blink_range_min", "blink_range_min");
		fieldIdToDbColumnMapping.put("dp_mat_temp_min", "mat_temp_min");

		// Populate deviceToTableMapping Hashmap
		deviceToTableMapping.put("SR NO 1", "slno1");
		deviceToTableMapping.put("SR NO 2", "slno2");
		deviceToTableMapping.put("SR NO 3", "slno3");
	}
}
