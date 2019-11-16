package com.srd.deviceconfig.model;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;

public class SlnoIrR implements Serializable {
	private static final long serialVersionUID = 1L;

	private Date timestamp;

	private float a;

	private float a1;

	private float a2;

	private BigInteger ADC_Counts_I;

	private BigInteger ADC_Counts_Q;

	private float calphi0;

	private float calphi01;

	private float calphi02;

	private float calR0;

	private float calR01;

	private float calR02;

	private float d;

	private float d1;

	private float d2;

	private float density;

	private float dphi;

	private float dphi1;

	private float dphi2;

	private float dz;

	private float dz1;

	private float dz2;

	private int emptyFlag;

	private float h_Dutycycle;

	private float i;

	private float i1;

	private float i2;

	private float mat_Temp;

	private float phi;

	private float phi1;

	private float phi2;

	private float phiz;

	private float phiz1;

	private float phiz2;

	private int PLL_lock_flag;

	private float q;

	private float q1;

	private float q2;

	private float r;

	private float r_z;

	private float r_z1;

	private float r_z2;

	private float r1;

	private float r2;

	private int remaining_time;

	private float temp_CPU;

	private float temp_PS;

	private float temp_RF;

	private float y0_Dry;

	private float y1_Wet;

	public SlnoIrR() {
	}

	public SlnoIrR(Date timestamp, float a, float a1, float a2, BigInteger aDC_Counts_I, BigInteger aDC_Counts_Q,
			float calphi0, float calphi01, float calphi02, float calR0, float calR01, float calR02, float d, float d1,
			float d2, float density, float dphi, float dphi1, float dphi2, float dz, float dz1, float dz2,
			int emptyFlag, float h_Dutycycle, float i, float i1, float i2, float mat_Temp, float phi, float phi1,
			float phi2, float phiz, float phiz1, float phiz2, int pLL_lock_flag, float q, float q1, float q2, float r,
			float r_z, float r_z1, float r_z2, float r1, float r2, int remaining_time, float temp_CPU, float temp_PS,
			float temp_RF, float y0_Dry, float y1_Wet) {
		this.timestamp = timestamp;
		this.a = a;
		this.a1 = a1;
		this.a2 = a2;
		ADC_Counts_I = aDC_Counts_I;
		ADC_Counts_Q = aDC_Counts_Q;
		this.calphi0 = calphi0;
		this.calphi01 = calphi01;
		this.calphi02 = calphi02;
		this.calR0 = calR0;
		this.calR01 = calR01;
		this.calR02 = calR02;
		this.d = d;
		this.d1 = d1;
		this.d2 = d2;
		this.density = density;
		this.dphi = dphi;
		this.dphi1 = dphi1;
		this.dphi2 = dphi2;
		this.dz = dz;
		this.dz1 = dz1;
		this.dz2 = dz2;
		this.emptyFlag = emptyFlag;
		this.h_Dutycycle = h_Dutycycle;
		this.i = i;
		this.i1 = i1;
		this.i2 = i2;
		this.mat_Temp = mat_Temp;
		this.phi = phi;
		this.phi1 = phi1;
		this.phi2 = phi2;
		this.phiz = phiz;
		this.phiz1 = phiz1;
		this.phiz2 = phiz2;
		PLL_lock_flag = pLL_lock_flag;
		this.q = q;
		this.q1 = q1;
		this.q2 = q2;
		this.r = r;
		this.r_z = r_z;
		this.r_z1 = r_z1;
		this.r_z2 = r_z2;
		this.r1 = r1;
		this.r2 = r2;
		this.remaining_time = remaining_time;
		this.temp_CPU = temp_CPU;
		this.temp_PS = temp_PS;
		this.temp_RF = temp_RF;
		this.y0_Dry = y0_Dry;
		this.y1_Wet = y1_Wet;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public float getA() {
		return this.a;
	}

	public void setA(float a) {
		this.a = a;
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

	public BigInteger getADC_Counts_I() {
		return this.ADC_Counts_I;
	}

	public void setADC_Counts_I(BigInteger ADC_Counts_I) {
		this.ADC_Counts_I = ADC_Counts_I;
	}

	public BigInteger getADC_Counts_Q() {
		return this.ADC_Counts_Q;
	}

	public void setADC_Counts_Q(BigInteger ADC_Counts_Q) {
		this.ADC_Counts_Q = ADC_Counts_Q;
	}

	public float getCalphi0() {
		return this.calphi0;
	}

	public void setCalphi0(float calphi0) {
		this.calphi0 = calphi0;
	}

	public float getCalphi01() {
		return this.calphi01;
	}

	public void setCalphi01(float calphi01) {
		this.calphi01 = calphi01;
	}

	public float getCalphi02() {
		return this.calphi02;
	}

	public void setCalphi02(float calphi02) {
		this.calphi02 = calphi02;
	}

	public float getCalR0() {
		return this.calR0;
	}

	public void setCalR0(float calR0) {
		this.calR0 = calR0;
	}

	public float getCalR01() {
		return this.calR01;
	}

	public void setCalR01(float calR01) {
		this.calR01 = calR01;
	}

	public float getCalR02() {
		return this.calR02;
	}

	public void setCalR02(float calR02) {
		this.calR02 = calR02;
	}

	public float getD() {
		return this.d;
	}

	public void setD(float d) {
		this.d = d;
	}

	public float getD1() {
		return this.d1;
	}

	public void setD1(float d1) {
		this.d1 = d1;
	}

	public float getD2() {
		return this.d2;
	}

	public void setD2(float d2) {
		this.d2 = d2;
	}

	public float getDensity() {
		return this.density;
	}

	public void setDensity(float density) {
		this.density = density;
	}

	public float getDphi() {
		return this.dphi;
	}

	public void setDphi(float dphi) {
		this.dphi = dphi;
	}

	public float getDphi1() {
		return this.dphi1;
	}

	public void setDphi1(float dphi1) {
		this.dphi1 = dphi1;
	}

	public float getDphi2() {
		return this.dphi2;
	}

	public void setDphi2(float dphi2) {
		this.dphi2 = dphi2;
	}

	public float getDz() {
		return this.dz;
	}

	public void setDz(float dz) {
		this.dz = dz;
	}

	public float getDz1() {
		return this.dz1;
	}

	public void setDz1(float dz1) {
		this.dz1 = dz1;
	}

	public float getDz2() {
		return this.dz2;
	}

	public void setDz2(float dz2) {
		this.dz2 = dz2;
	}

	public int getEmptyFlag() {
		return this.emptyFlag;
	}

	public void setEmptyFlag(int emptyFlag) {
		this.emptyFlag = emptyFlag;
	}

	public float getH_Dutycycle() {
		return this.h_Dutycycle;
	}

	public void setH_Dutycycle(float h_Dutycycle) {
		this.h_Dutycycle = h_Dutycycle;
	}

	public float getI() {
		return this.i;
	}

	public void setI(float i) {
		this.i = i;
	}

	public float getI1() {
		return this.i1;
	}

	public void setI1(float i1) {
		this.i1 = i1;
	}

	public float getI2() {
		return this.i2;
	}

	public void setI2(float i2) {
		this.i2 = i2;
	}

	public float getMat_Temp() {
		return this.mat_Temp;
	}

	public void setMat_Temp(float mat_Temp) {
		this.mat_Temp = mat_Temp;
	}

	public float getPhi() {
		return this.phi;
	}

	public void setPhi(float phi) {
		this.phi = phi;
	}

	public float getPhi1() {
		return this.phi1;
	}

	public void setPhi1(float phi1) {
		this.phi1 = phi1;
	}

	public float getPhi2() {
		return this.phi2;
	}

	public void setPhi2(float phi2) {
		this.phi2 = phi2;
	}

	public float getPhiz() {
		return this.phiz;
	}

	public void setPhiz(float phiz) {
		this.phiz = phiz;
	}

	public float getPhiz1() {
		return this.phiz1;
	}

	public void setPhiz1(float phiz1) {
		this.phiz1 = phiz1;
	}

	public float getPhiz2() {
		return this.phiz2;
	}

	public void setPhiz2(float phiz2) {
		this.phiz2 = phiz2;
	}

	public int getPLL_lock_flag() {
		return this.PLL_lock_flag;
	}

	public void setPLL_lock_flag(int PLL_lock_flag) {
		this.PLL_lock_flag = PLL_lock_flag;
	}

	public float getQ() {
		return this.q;
	}

	public void setQ(float q) {
		this.q = q;
	}

	public float getQ1() {
		return this.q1;
	}

	public void setQ1(float q1) {
		this.q1 = q1;
	}

	public float getQ2() {
		return this.q2;
	}

	public void setQ2(float q2) {
		this.q2 = q2;
	}

	public float getR() {
		return this.r;
	}

	public void setR(float r) {
		this.r = r;
	}

	public float getR_z() {
		return this.r_z;
	}

	public void setR_z(float r_z) {
		this.r_z = r_z;
	}

	public float getR_z1() {
		return this.r_z1;
	}

	public void setR_z1(float r_z1) {
		this.r_z1 = r_z1;
	}

	public float getR_z2() {
		return this.r_z2;
	}

	public void setR_z2(float r_z2) {
		this.r_z2 = r_z2;
	}

	public float getR1() {
		return this.r1;
	}

	public void setR1(float r1) {
		this.r1 = r1;
	}

	public float getR2() {
		return this.r2;
	}

	public void setR2(float r2) {
		this.r2 = r2;
	}

	public int getRemaining_time() {
		return this.remaining_time;
	}

	public void setRemaining_time(int remaining_time) {
		this.remaining_time = remaining_time;
	}

	public float getTemp_CPU() {
		return this.temp_CPU;
	}

	public void setTemp_CPU(float temp_CPU) {
		this.temp_CPU = temp_CPU;
	}

	public float getTemp_PS() {
		return this.temp_PS;
	}

	public void setTemp_PS(float temp_PS) {
		this.temp_PS = temp_PS;
	}

	public float getTemp_RF() {
		return this.temp_RF;
	}

	public void setTemp_RF(float temp_RF) {
		this.temp_RF = temp_RF;
	}

	public float getY0_Dry() {
		return this.y0_Dry;
	}

	public void setY0_Dry(float y0_Dry) {
		this.y0_Dry = y0_Dry;
	}

	public float getY1_Wet() {
		return this.y1_Wet;
	}

	public void setY1_Wet(float y1_Wet) {
		this.y1_Wet = y1_Wet;
	}

}