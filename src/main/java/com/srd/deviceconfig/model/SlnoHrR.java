package com.srd.deviceconfig.model;

import java.io.Serializable;
import java.util.Date;

public class SlnoHrR implements Serializable {
	private static final long serialVersionUID = 1L;

	private Date timestamp;

	private float a0;

	private float a1;

	private float a2;

	private float a3;

	private float a5;

	private float a6;

	private float a8;

	private float average_time_zero;

	private float blink_Range_max;

	private float blink_range_min;

	private int ch1_A_Gain;

	private float ch1_Beta0;

	private int ch1_RF_Gain;

	private float ch1Alpha0;

	private int ch2_A_Gain;

	private int CH2_RF_Gain;

	private float ch2Alpha0;

	private float ch2Beta0;

	private float coeffD;

	private float d;

	private float det_Avg_time;

	private float i;

	private float int_temp_setpoint;

	private float iout_Calib_19_mA;

	private float iout_Calib_5_mA;

	private float iz_2;

	private float iz1_2;

	private float iz2_2;

	private float mat_temp_Max;

	private float mat_temp_min;

	private float modBus_MatTemp;

	private int mode;

	private int mval_sel;

	private int n1;

	private int n2;

	private float normal_Avg_time;

	private float p;

	private float PLL_Freq1;

	private float PLL_Freq2;

	private int proxi_Enable;

	private float qz_2;

	private float qz1_2;

	private float qz2_2;

	private float rho;

	private float s1;

	private float s2;

	private int spare;

	private int temp_sel;

	private int tempCont_Enable;

	public SlnoHrR() {
	}

	public SlnoHrR(Date timestamp, float a0, float a1, float a2, float a3, float a5, float a6, float a8,
			float average_time_zero, float blink_Range_max, float blink_range_min, int ch1_A_Gain, float ch1_Beta0,
			int ch1_RF_Gain, float ch1Alpha0, int ch2_A_Gain, int cH2_RF_Gain, float ch2Alpha0, float ch2Beta0,
			float coeffD, float d, float det_Avg_time, float i, float int_temp_setpoint, float iout_Calib_19_mA,
			float iout_Calib_5_mA, float iz_2, float iz1_2, float iz2_2, float mat_temp_Max, float mat_temp_min,
			float modBus_MatTemp, int mode, int mval_sel, int n1, int n2, float normal_Avg_time, float p,
			float pLL_Freq1, float pLL_Freq2, int proxi_Enable, float qz_2, float qz1_2, float qz2_2, float rho,
			float s1, float s2, int spare, int temp_sel, int tempCont_Enable) {
		this.timestamp = timestamp;
		this.a0 = a0;
		this.a1 = a1;
		this.a2 = a2;
		this.a3 = a3;
		this.a5 = a5;
		this.a6 = a6;
		this.a8 = a8;
		this.average_time_zero = average_time_zero;
		this.blink_Range_max = blink_Range_max;
		this.blink_range_min = blink_range_min;
		this.ch1_A_Gain = ch1_A_Gain;
		this.ch1_Beta0 = ch1_Beta0;
		this.ch1_RF_Gain = ch1_RF_Gain;
		this.ch1Alpha0 = ch1Alpha0;
		this.ch2_A_Gain = ch2_A_Gain;
		CH2_RF_Gain = cH2_RF_Gain;
		this.ch2Alpha0 = ch2Alpha0;
		this.ch2Beta0 = ch2Beta0;
		this.coeffD = coeffD;
		this.d = d;
		this.det_Avg_time = det_Avg_time;
		this.i = i;
		this.int_temp_setpoint = int_temp_setpoint;
		this.iout_Calib_19_mA = iout_Calib_19_mA;
		this.iout_Calib_5_mA = iout_Calib_5_mA;
		this.iz_2 = iz_2;
		this.iz1_2 = iz1_2;
		this.iz2_2 = iz2_2;
		this.mat_temp_Max = mat_temp_Max;
		this.mat_temp_min = mat_temp_min;
		this.modBus_MatTemp = modBus_MatTemp;
		this.mode = mode;
		this.mval_sel = mval_sel;
		this.n1 = n1;
		this.n2 = n2;
		this.normal_Avg_time = normal_Avg_time;
		this.p = p;
		PLL_Freq1 = pLL_Freq1;
		PLL_Freq2 = pLL_Freq2;
		this.proxi_Enable = proxi_Enable;
		this.qz_2 = qz_2;
		this.qz1_2 = qz1_2;
		this.qz2_2 = qz2_2;
		this.rho = rho;
		this.s1 = s1;
		this.s2 = s2;
		this.spare = spare;
		this.temp_sel = temp_sel;
		this.tempCont_Enable = tempCont_Enable;
	}

	public Date getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public float getA0() {
		return this.a0;
	}

	public void setA0(float a0) {
		this.a0 = a0;
	}

	public float getA1() {
		return this.a1;
	}

	public void setA1(float a1) {
		this.a1 = a1;
	}

	public float getA2() {
		return this.a2;
	}

	public void setA2(float a2) {
		this.a2 = a2;
	}

	public float getA3() {
		return this.a3;
	}

	public void setA3(float a3) {
		this.a3 = a3;
	}

	public float getA5() {
		return this.a5;
	}

	public void setA5(float a5) {
		this.a5 = a5;
	}

	public float getA6() {
		return this.a6;
	}

	public void setA6(float a6) {
		this.a6 = a6;
	}

	public float getA8() {
		return this.a8;
	}

	public void setA8(float a8) {
		this.a8 = a8;
	}

	public float getAverage_time_zero() {
		return this.average_time_zero;
	}

	public void setAverage_time_zero(float average_time_zero) {
		this.average_time_zero = average_time_zero;
	}

	public float getBlink_Range_max() {
		return this.blink_Range_max;
	}

	public void setBlink_Range_max(float blink_Range_max) {
		this.blink_Range_max = blink_Range_max;
	}

	public float getBlink_range_min() {
		return this.blink_range_min;
	}

	public void setBlink_range_min(float blink_range_min) {
		this.blink_range_min = blink_range_min;
	}

	public int getCh1_A_Gain() {
		return this.ch1_A_Gain;
	}

	public void setCh1_A_Gain(int ch1_A_Gain) {
		this.ch1_A_Gain = ch1_A_Gain;
	}

	public float getCh1_Beta0() {
		return this.ch1_Beta0;
	}

	public void setCh1_Beta0(float ch1_Beta0) {
		this.ch1_Beta0 = ch1_Beta0;
	}

	public int getCh1_RF_Gain() {
		return this.ch1_RF_Gain;
	}

	public void setCh1_RF_Gain(int ch1_RF_Gain) {
		this.ch1_RF_Gain = ch1_RF_Gain;
	}

	public float getCh1Alpha0() {
		return this.ch1Alpha0;
	}

	public void setCh1Alpha0(float ch1Alpha0) {
		this.ch1Alpha0 = ch1Alpha0;
	}

	public int getCh2_A_Gain() {
		return this.ch2_A_Gain;
	}

	public void setCh2_A_Gain(int ch2_A_Gain) {
		this.ch2_A_Gain = ch2_A_Gain;
	}

	public int getCH2_RF_Gain() {
		return this.CH2_RF_Gain;
	}

	public void setCH2_RF_Gain(int CH2_RF_Gain) {
		this.CH2_RF_Gain = CH2_RF_Gain;
	}

	public float getCh2Alpha0() {
		return this.ch2Alpha0;
	}

	public void setCh2Alpha0(float ch2Alpha0) {
		this.ch2Alpha0 = ch2Alpha0;
	}

	public float getCh2Beta0() {
		return this.ch2Beta0;
	}

	public void setCh2Beta0(float ch2Beta0) {
		this.ch2Beta0 = ch2Beta0;
	}

	public float getCoeffD() {
		return this.coeffD;
	}

	public void setCoeffD(float coeffD) {
		this.coeffD = coeffD;
	}

	public float getD() {
		return this.d;
	}

	public void setD(float d) {
		this.d = d;
	}

	public float getDet_Avg_time() {
		return this.det_Avg_time;
	}

	public void setDet_Avg_time(float det_Avg_time) {
		this.det_Avg_time = det_Avg_time;
	}

	public float getI() {
		return this.i;
	}

	public void setI(float i) {
		this.i = i;
	}

	public float getInt_temp_setpoint() {
		return this.int_temp_setpoint;
	}

	public void setInt_temp_setpoint(float int_temp_setpoint) {
		this.int_temp_setpoint = int_temp_setpoint;
	}

	public float getIout_Calib_19_mA() {
		return this.iout_Calib_19_mA;
	}

	public void setIout_Calib_19_mA(float iout_Calib_19_mA) {
		this.iout_Calib_19_mA = iout_Calib_19_mA;
	}

	public float getIout_Calib_5_mA() {
		return this.iout_Calib_5_mA;
	}

	public void setIout_Calib_5_mA(float iout_Calib_5_mA) {
		this.iout_Calib_5_mA = iout_Calib_5_mA;
	}

	public float getIz_2() {
		return this.iz_2;
	}

	public void setIz_2(float iz_2) {
		this.iz_2 = iz_2;
	}

	public float getIz1_2() {
		return this.iz1_2;
	}

	public void setIz1_2(float iz1_2) {
		this.iz1_2 = iz1_2;
	}

	public float getIz2_2() {
		return this.iz2_2;
	}

	public void setIz2_2(float iz2_2) {
		this.iz2_2 = iz2_2;
	}

	public float getMat_temp_Max() {
		return this.mat_temp_Max;
	}

	public void setMat_temp_Max(float mat_temp_Max) {
		this.mat_temp_Max = mat_temp_Max;
	}

	public float getMat_temp_min() {
		return this.mat_temp_min;
	}

	public void setMat_temp_min(float mat_temp_min) {
		this.mat_temp_min = mat_temp_min;
	}

	public float getModBus_MatTemp() {
		return this.modBus_MatTemp;
	}

	public void setModBus_MatTemp(float modBus_MatTemp) {
		this.modBus_MatTemp = modBus_MatTemp;
	}

	public int getMode() {
		return this.mode;
	}

	public void setMode(int mode) {
		this.mode = mode;
	}

	public int getMval_sel() {
		return this.mval_sel;
	}

	public void setMval_sel(int mval_sel) {
		this.mval_sel = mval_sel;
	}

	public int getN1() {
		return this.n1;
	}

	public void setN1(int n1) {
		this.n1 = n1;
	}

	public int getN2() {
		return this.n2;
	}

	public void setN2(int n2) {
		this.n2 = n2;
	}

	public float getNormal_Avg_time() {
		return this.normal_Avg_time;
	}

	public void setNormal_Avg_time(float normal_Avg_time) {
		this.normal_Avg_time = normal_Avg_time;
	}

	public float getP() {
		return this.p;
	}

	public void setP(float p) {
		this.p = p;
	}

	public float getPLL_Freq1() {
		return this.PLL_Freq1;
	}

	public void setPLL_Freq1(float PLL_Freq1) {
		this.PLL_Freq1 = PLL_Freq1;
	}

	public float getPLL_Freq2() {
		return this.PLL_Freq2;
	}

	public void setPLL_Freq2(float PLL_Freq2) {
		this.PLL_Freq2 = PLL_Freq2;
	}

	public int getProxi_Enable() {
		return this.proxi_Enable;
	}

	public void setProxi_Enable(int proxi_Enable) {
		this.proxi_Enable = proxi_Enable;
	}

	public float getQz_2() {
		return this.qz_2;
	}

	public void setQz_2(float qz_2) {
		this.qz_2 = qz_2;
	}

	public float getQz1_2() {
		return this.qz1_2;
	}

	public void setQz1_2(float qz1_2) {
		this.qz1_2 = qz1_2;
	}

	public float getQz2_2() {
		return this.qz2_2;
	}

	public void setQz2_2(float qz2_2) {
		this.qz2_2 = qz2_2;
	}

	public float getRho() {
		return this.rho;
	}

	public void setRho(float rho) {
		this.rho = rho;
	}

	public float getS1() {
		return this.s1;
	}

	public void setS1(float s1) {
		this.s1 = s1;
	}

	public float getS2() {
		return this.s2;
	}

	public void setS2(float s2) {
		this.s2 = s2;
	}

	public int getSpare() {
		return this.spare;
	}

	public void setSpare(int spare) {
		this.spare = spare;
	}

	public int getTemp_sel() {
		return this.temp_sel;
	}

	public void setTemp_sel(int temp_sel) {
		this.temp_sel = temp_sel;
	}

	public int getTempCont_Enable() {
		return this.tempCont_Enable;
	}

	public void setTempCont_Enable(int tempCont_Enable) {
		this.tempCont_Enable = tempCont_Enable;
	}

}