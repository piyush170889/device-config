package com.srd.deviceconfig.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.utils.CommonUtility;
import com.srd.deviceconfig.utils.DbUtil;

public class SlnoHrW {

	private int calibValue;

	private Date time_stamp;

	private float ch1alpha0;

	private float ch1beta0;

	private float ch2alpha0;

	private float ch2beta0;

	private float a0;

	private float a1;

	private float a2;

	private float a3;

	private float coeff_d;

	private float a5;

	private float a6;

	private float modbus_mattemp;

	private float pll_freq1;

	private float pll_freq2;

	private float average_time_zero;

	private float normal_avg_time;

	private float det_avg_time;

	private int temp_sel;

	private int mval_sel;

	private int ch1_a_gain;

	private int ch1_rf_gain;

	private int mode;

	private int p;

	private int i;

	private int d;

	private float int_temp_setpoint;

	private float blink_range_max;

	private float blink_range_min;

	private float mat_temp_min;

	private float mat_temp_max;

	private int ch2_a_gain;

	private int ch2_rf_gain;

	private int proxi_enable;

	private int tempcont_enable;

	private float iout_calib_5_ma;

	private float iout_calib_19_ma;

	private float s1;

	private float s2;

	private int n1;

	private int n2;

	private int spare;

	private float rho;

	private float a8;

	private float iz_2;

	private float iz1_2;

	private float iz2_2;

	private float qz_2;

	private float qz1_2;

	private float qz2_2;

	private String fieldId;

	private String fieldValue;

	public SlnoHrW() {
	}

	public int getCalibValue() {
		return calibValue;
	}

	public void setCalibValue(int calibValue) {
		this.calibValue = calibValue;
	}

	public Date getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(Date time_stamp) {
		this.time_stamp = time_stamp;
	}

	public float getCh1alpha0() {
		return ch1alpha0;
	}

	public void setCh1alpha0(float ch1alpha0) {
		this.ch1alpha0 = ch1alpha0;
	}

	public float getCh1beta0() {
		return ch1beta0;
	}

	public void setCh1beta0(float ch1beta0) {
		this.ch1beta0 = ch1beta0;
	}

	public float getCh2alpha0() {
		return ch2alpha0;
	}

	public void setCh2alpha0(float ch2alpha0) {
		this.ch2alpha0 = ch2alpha0;
	}

	public float getCh2beta0() {
		return ch2beta0;
	}

	public void setCh2beta0(float ch2beta0) {
		this.ch2beta0 = ch2beta0;
	}

	public float getA0() {
		return a0;
	}

	public void setA0(float a0) {
		this.a0 = a0;
	}

	public float getA1() {
		return a1;
	}

	public void setA1(float a1) {
		this.a1 = a1;
	}

	public float getA2() {
		return a2;
	}

	public void setA2(float a2) {
		this.a2 = a2;
	}

	public float getA3() {
		return a3;
	}

	public void setA3(float a3) {
		this.a3 = a3;
	}

	public float getCoeff_d() {
		return coeff_d;
	}

	public void setCoeff_d(float coeff_d) {
		this.coeff_d = coeff_d;
	}

	public float getA5() {
		return a5;
	}

	public void setA5(float a5) {
		this.a5 = a5;
	}

	public float getA6() {
		return a6;
	}

	public void setA6(float a6) {
		this.a6 = a6;
	}

	public float getModbus_mattemp() {
		return modbus_mattemp;
	}

	public void setModbus_mattemp(float modbus_mattemp) {
		this.modbus_mattemp = modbus_mattemp;
	}

	public float getPll_freq1() {
		return pll_freq1;
	}

	public void setPll_freq1(float pll_freq1) {
		this.pll_freq1 = pll_freq1;
	}

	public float getPll_freq2() {
		return pll_freq2;
	}

	public void setPll_freq2(float pll_freq2) {
		this.pll_freq2 = pll_freq2;
	}

	public float getAverage_time_zero() {
		return average_time_zero;
	}

	public void setAverage_time_zero(float average_time_zero) {
		this.average_time_zero = average_time_zero;
	}

	public float getNormal_avg_time() {
		return normal_avg_time;
	}

	public void setNormal_avg_time(float normal_avg_time) {
		this.normal_avg_time = normal_avg_time;
	}

	public float getDet_avg_time() {
		return det_avg_time;
	}

	public void setDet_avg_time(float det_avg_time) {
		this.det_avg_time = det_avg_time;
	}

	public int getTemp_sel() {
		return temp_sel;
	}

	public void setTemp_sel(int temp_sel) {
		this.temp_sel = temp_sel;
	}

	public int getMval_sel() {
		return mval_sel;
	}

	public void setMval_sel(int mval_sel) {
		this.mval_sel = mval_sel;
	}

	public int getCh1_a_gain() {
		return ch1_a_gain;
	}

	public void setCh1_a_gain(int ch1_a_gain) {
		this.ch1_a_gain = ch1_a_gain;
	}

	public int getCh1_rf_gain() {
		return ch1_rf_gain;
	}

	public void setCh1_rf_gain(int ch1_rf_gain) {
		this.ch1_rf_gain = ch1_rf_gain;
	}

	public int getMode() {
		return mode;
	}

	public void setMode(int mode) {
		this.mode = mode;
	}

	public int getP() {
		return p;
	}

	public void setP(int p) {
		this.p = p;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public int getD() {
		return d;
	}

	public void setD(int d) {
		this.d = d;
	}

	public float getInt_temp_setpoint() {
		return int_temp_setpoint;
	}

	public void setInt_temp_setpoint(float int_temp_setpoint) {
		this.int_temp_setpoint = int_temp_setpoint;
	}

	public float getBlink_range_max() {
		return blink_range_max;
	}

	public void setBlink_range_max(float blink_range_max) {
		this.blink_range_max = blink_range_max;
	}

	public float getBlink_range_min() {
		return blink_range_min;
	}

	public void setBlink_range_min(float blink_range_min) {
		this.blink_range_min = blink_range_min;
	}

	public float getMat_temp_min() {
		return mat_temp_min;
	}

	public void setMat_temp_min(float mat_temp_min) {
		this.mat_temp_min = mat_temp_min;
	}

	public float getMat_temp_max() {
		return mat_temp_max;
	}

	public void setMat_temp_max(float mat_temp_max) {
		this.mat_temp_max = mat_temp_max;
	}

	public int getCh2_a_gain() {
		return ch2_a_gain;
	}

	public void setCh2_a_gain(int ch2_a_gain) {
		this.ch2_a_gain = ch2_a_gain;
	}

	public int getCh2_rf_gain() {
		return ch2_rf_gain;
	}

	public void setCh2_rf_gain(int ch2_rf_gain) {
		this.ch2_rf_gain = ch2_rf_gain;
	}

	public int getProxi_enable() {
		return proxi_enable;
	}

	public void setProxi_enable(int proxi_enable) {
		this.proxi_enable = proxi_enable;
	}

	public int getTempcont_enable() {
		return tempcont_enable;
	}

	public void setTempcont_enable(int tempcont_enable) {
		this.tempcont_enable = tempcont_enable;
	}

	public float getIout_calib_5_ma() {
		return iout_calib_5_ma;
	}

	public void setIout_calib_5_ma(float iout_calib_5_ma) {
		this.iout_calib_5_ma = iout_calib_5_ma;
	}

	public float getIout_calib_19_ma() {
		return iout_calib_19_ma;
	}

	public void setIout_calib_19_ma(float iout_calib_19_ma) {
		this.iout_calib_19_ma = iout_calib_19_ma;
	}

	public float getS1() {
		return s1;
	}

	public void setS1(float s1) {
		this.s1 = s1;
	}

	public float getS2() {
		return s2;
	}

	public void setS2(float s2) {
		this.s2 = s2;
	}

	public int getN1() {
		return n1;
	}

	public void setN1(int n1) {
		this.n1 = n1;
	}

	public int getN2() {
		return n2;
	}

	public void setN2(int n2) {
		this.n2 = n2;
	}

	public int getSpare() {
		return spare;
	}

	public void setSpare(int spare) {
		this.spare = spare;
	}

	public float getRho() {
		return rho;
	}

	public void setRho(float rho) {
		this.rho = rho;
	}

	public float getA8() {
		return a8;
	}

	public void setA8(float a8) {
		this.a8 = a8;
	}

	public float getIz_2() {
		return iz_2;
	}

	public void setIz_2(float iz_2) {
		this.iz_2 = iz_2;
	}

	public float getIz1_2() {
		return iz1_2;
	}

	public void setIz1_2(float iz1_2) {
		this.iz1_2 = iz1_2;
	}

	public float getIz2_2() {
		return iz2_2;
	}

	public void setIz2_2(float iz2_2) {
		this.iz2_2 = iz2_2;
	}

	public float getQz_2() {
		return qz_2;
	}

	public void setQz_2(float qz_2) {
		this.qz_2 = qz_2;
	}

	public float getQz1_2() {
		return qz1_2;
	}

	public void setQz1_2(float qz1_2) {
		this.qz1_2 = qz1_2;
	}

	public float getQz2_2() {
		return qz2_2;
	}

	public void setQz2_2(float qz2_2) {
		this.qz2_2 = qz2_2;
	}

	public String getFieldId() {
		return fieldId;
	}

	public void setFieldId(String fieldId) {
		this.fieldId = fieldId;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public String insertFocusOutData() {

		System.out.println("fieldId = " + this.fieldId + ", fieldVal = " + this.fieldValue);
		String returnMssg = Constants.SUCCESS_MSG;

		try {
			String columnName = Constants.fieldIdToDbColumnMapping.get(this.fieldId);

			String insertSlnoHrWSql = "INSERT INTO " + CommonUtility.getDeviceTable() + "_hr_w(time_stamp, "
					+ columnName + ") VALUES ('" + new Date() + "', " + this.fieldValue + ")";
			System.out.println("insertSlnoHrWSql = " + insertSlnoHrWSql);

			Connection con = DbUtil.getConnection();
			PreparedStatement ps = con.prepareStatement(insertSlnoHrWSql);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			returnMssg = Constants.ERROR_MSG;
		}

		return returnMssg;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SlnoHrW [calibValue=");
		builder.append(calibValue);
		builder.append(", time_stamp=");
		builder.append(time_stamp);
		builder.append(", ch1alpha0=");
		builder.append(ch1alpha0);
		builder.append(", ch1beta0=");
		builder.append(ch1beta0);
		builder.append(", ch2alpha0=");
		builder.append(ch2alpha0);
		builder.append(", ch2beta0=");
		builder.append(ch2beta0);
		builder.append(", a0=");
		builder.append(a0);
		builder.append(", a1=");
		builder.append(a1);
		builder.append(", a2=");
		builder.append(a2);
		builder.append(", a3=");
		builder.append(a3);
		builder.append(", coeff_d=");
		builder.append(coeff_d);
		builder.append(", a5=");
		builder.append(a5);
		builder.append(", a6=");
		builder.append(a6);
		builder.append(", modbus_mattemp=");
		builder.append(modbus_mattemp);
		builder.append(", pll_freq1=");
		builder.append(pll_freq1);
		builder.append(", pll_freq2=");
		builder.append(pll_freq2);
		builder.append(", average_time_zero=");
		builder.append(average_time_zero);
		builder.append(", normal_avg_time=");
		builder.append(normal_avg_time);
		builder.append(", det_avg_time=");
		builder.append(det_avg_time);
		builder.append(", temp_sel=");
		builder.append(temp_sel);
		builder.append(", mval_sel=");
		builder.append(mval_sel);
		builder.append(", ch1_a_gain=");
		builder.append(ch1_a_gain);
		builder.append(", ch1_rf_gain=");
		builder.append(ch1_rf_gain);
		builder.append(", mode=");
		builder.append(mode);
		builder.append(", p=");
		builder.append(p);
		builder.append(", i=");
		builder.append(i);
		builder.append(", d=");
		builder.append(d);
		builder.append(", int_temp_setpoint=");
		builder.append(int_temp_setpoint);
		builder.append(", blink_range_max=");
		builder.append(blink_range_max);
		builder.append(", blink_range_min=");
		builder.append(blink_range_min);
		builder.append(", mat_temp_min=");
		builder.append(mat_temp_min);
		builder.append(", mat_temp_max=");
		builder.append(mat_temp_max);
		builder.append(", ch2_a_gain=");
		builder.append(ch2_a_gain);
		builder.append(", ch2_rf_gain=");
		builder.append(ch2_rf_gain);
		builder.append(", proxi_enable=");
		builder.append(proxi_enable);
		builder.append(", tempcont_enable=");
		builder.append(tempcont_enable);
		builder.append(", iout_calib_5_ma=");
		builder.append(iout_calib_5_ma);
		builder.append(", iout_calib_19_ma=");
		builder.append(iout_calib_19_ma);
		builder.append(", s1=");
		builder.append(s1);
		builder.append(", s2=");
		builder.append(s2);
		builder.append(", n1=");
		builder.append(n1);
		builder.append(", n2=");
		builder.append(n2);
		builder.append(", spare=");
		builder.append(spare);
		builder.append(", rho=");
		builder.append(rho);
		builder.append(", a8=");
		builder.append(a8);
		builder.append(", iz_2=");
		builder.append(iz_2);
		builder.append(", iz1_2=");
		builder.append(iz1_2);
		builder.append(", iz2_2=");
		builder.append(iz2_2);
		builder.append(", qz_2=");
		builder.append(qz_2);
		builder.append(", qz1_2=");
		builder.append(qz1_2);
		builder.append(", qz2_2=");
		builder.append(qz2_2);
		builder.append("]");
		return builder.toString();
	}

	public String updateDataTabDetailsJson() throws SQLException {

		System.out.println(this.toString());
		String mssgToReturn = Constants.SUCCESS_MSG;

		try {
			Connection con = DbUtil.getConnection();

			// Insert values into Slno_Hr_W table

			String slNoIrRSql = "INSERT INTO " + CommonUtility.getDeviceTable()
					+ "_hr_w(time_stamp, ch1alpha0, ch1beta0, ch2alpha0, "
					+ "ch2beta0, a0, a1, a2, a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1, "
					+ "pll_freq2, average_time_zero, normal_avg_time, det_avg_time, temp_sel, "
					+ "mval_sel, ch1_a_gain, ch1_rf_gain, mode, p, i, d, int_temp_setpoint, "
					+ "blink_range_max, blink_range_min, mat_temp_min, mat_temp_max, ch2_a_gain, "
					+ "ch2_rf_gain, proxi_enable, tempcont_enable, iout_calib_5_ma, iout_calib_19_ma, "
					+ "s1, s2, n1, n2, spare, rho, a8, iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2) VALUES " + "('"
					+ new Date() + "', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = con.prepareStatement(slNoIrRSql);
			// ps.setDate(1, new Date());
			// ps.setFloat(1, this.ch1alpha0);
			// ps.setFloat(2, this.ch1beta0);
			// ps.setFloat(3, this.ch2alpha0);
			// ps.setFloat(4, this.ch2beta0);
			// ps.setFloat(5, this.a0);
			// ps.setFloat(6, this.a1);
			// ps.setFloat(7, this.a2);
			// ps.setFloat(8, this.a3);
			// ps.setFloat(9, this.coeff_d);
			// ps.setFloat(10, this.a5);
			// ps.setFloat(11, this.a6);
			// ps.setFloat(12, this.modbus_mattemp);
			// ps.setFloat(13, this.pll_freq1);
			// ps.setFloat(14, this.pll_freq2);
			// ps.setFloat(15, this.average_time_zero);
			// ps.setFloat(16, this.normal_avg_time);
			// ps.setFloat(17, this.det_avg_time);
			// ps.setFloat(18, this.temp_sel);
			// ps.setFloat(19, this.mval_sel);
			// ps.setFloat(20, this.ch1_a_gain);
			// ps.setFloat(21, this.ch1_rf_gain);
			// ps.setFloat(22, this.mode);
			// ps.setFloat(23, this.p);
			// ps.setFloat(24, this.i);
			// ps.setFloat(25, this.d);
			// ps.setFloat(26, this.int_temp_setpoint);
			// ps.setFloat(27, this.blink_range_max);
			// ps.setFloat(28, this.blink_range_min);
			// ps.setFloat(29, this.mat_temp_min);
			// ps.setFloat(30, this.mat_temp_max);
			// ps.setInt(31, this.ch2_a_gain);
			// ps.setInt(32, this.ch2_rf_gain);
			// ps.setInt(33, this.proxi_enable);
			// ps.setInt(34, this.tempcont_enable);
			// ps.setFloat(35, this.iout_calib_5_ma);
			// ps.setFloat(36, this.iout_calib_19_ma);
			// ps.setFloat(37, this.s1);
			// ps.setFloat(38, this.s2);
			// ps.setInt(39, this.n1);
			// ps.setInt(40, this.n2);
			// ps.setInt(41, this.spare);
			// ps.setFloat(42, this.rho);
			// ps.setFloat(43, this.a8);
			// ps.setFloat(44, this.iz_2);
			// ps.setFloat(45, this.iz1_2);
			// ps.setFloat(46, this.iz2_2);
			// ps.setFloat(47, this.qz_2);
			// ps.setFloat(48, this.qz1_2);
			// ps.setFloat(49, this.qz2_2);

			ps.setFloat(1, this.calibValue);
			ps.setFloat(2, this.calibValue);
			ps.setFloat(3, this.calibValue);
			ps.setFloat(4, this.calibValue);
			ps.setFloat(5, this.calibValue);
			ps.setFloat(6, this.calibValue);
			ps.setFloat(7, this.calibValue);
			ps.setFloat(8, this.calibValue);
			ps.setFloat(9, this.calibValue);
			ps.setFloat(10, this.calibValue);
			ps.setFloat(11, this.calibValue);
			ps.setFloat(12, this.calibValue);
			ps.setFloat(13, this.calibValue);
			ps.setFloat(14, this.calibValue);
			ps.setFloat(15, this.calibValue);
			ps.setFloat(16, this.calibValue);
			ps.setFloat(17, this.calibValue);
			ps.setFloat(18, this.calibValue);
			ps.setFloat(19, this.calibValue);
			ps.setFloat(20, this.calibValue);
			ps.setFloat(21, this.calibValue);
			ps.setFloat(22, this.calibValue);
			ps.setFloat(23, this.calibValue);
			ps.setFloat(24, this.calibValue);
			ps.setFloat(25, this.calibValue);
			ps.setFloat(26, this.calibValue);
			ps.setFloat(27, this.calibValue);
			ps.setFloat(28, this.calibValue);
			ps.setFloat(29, this.calibValue);
			ps.setFloat(30, this.calibValue);
			ps.setInt(31, this.calibValue);
			ps.setInt(32, this.calibValue);
			ps.setInt(33, this.calibValue);
			ps.setInt(34, this.calibValue);
			ps.setFloat(35, this.calibValue);
			ps.setFloat(36, this.calibValue);
			ps.setFloat(37, this.calibValue);
			ps.setFloat(38, this.calibValue);
			ps.setInt(39, this.calibValue);
			ps.setInt(40, this.calibValue);
			ps.setInt(41, this.calibValue);
			ps.setFloat(42, this.calibValue);
			ps.setFloat(43, this.calibValue);
			ps.setFloat(44, this.calibValue);
			ps.setFloat(45, this.calibValue);
			ps.setFloat(46, this.calibValue);
			ps.setFloat(47, this.calibValue);
			ps.setFloat(48, this.calibValue);
			ps.setFloat(49, this.calibValue);

			ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			mssgToReturn = Constants.ERROR_MSG;
		}

		return mssgToReturn;
	}

}
