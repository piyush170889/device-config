package com.srd.deviceconfig.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.utils.CommonUtility;
import com.srd.deviceconfig.utils.DbUtil;

public class MaterialTableAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7027384288872681420L;

	private String tableName;

	private float freq;

	private float y0a1;

	private float y0a2;

	private float y0a3;

	private float y0a5;

	private float y0a8;

	private float y1a1;

	private float y1a2;

	private float y1a3;

	private float y1a5;

	private float y1a8;

	private float y2a1;

	private float y2a2;

	private float y2a3;

	private float y2a5;

	private float y2a8;

	private float y3a1;

	private float y3a2;

	private float y3a3;

	private float y3a5;

	private float y3a8;

	private float y4a1;

	private float y4a2;

	private float y4a3;

	private float y4a5;

	private float y4a8;

	public MaterialTableAction() {
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public float getFreq() {
		return freq;
	}

	public void setFreq(float freq) {
		this.freq = freq;
	}

	public float getY0a1() {
		return y0a1;
	}

	public void setY0a1(float y0a1) {
		this.y0a1 = y0a1;
	}

	public float getY0a2() {
		return y0a2;
	}

	public void setY0a2(float y0a2) {
		this.y0a2 = y0a2;
	}

	public float getY0a3() {
		return y0a3;
	}

	public void setY0a3(float y0a3) {
		this.y0a3 = y0a3;
	}

	public float getY0a5() {
		return y0a5;
	}

	public void setY0a5(float y0a5) {
		this.y0a5 = y0a5;
	}

	public float getY0a8() {
		return y0a8;
	}

	public void setY0a8(float y0a8) {
		this.y0a8 = y0a8;
	}

	public float getY1a1() {
		return y1a1;
	}

	public void setY1a1(float y1a1) {
		this.y1a1 = y1a1;
	}

	public float getY1a2() {
		return y1a2;
	}

	public void setY1a2(float y1a2) {
		this.y1a2 = y1a2;
	}

	public float getY1a3() {
		return y1a3;
	}

	public void setY1a3(float y1a3) {
		this.y1a3 = y1a3;
	}

	public float getY1a5() {
		return y1a5;
	}

	public void setY1a5(float y1a5) {
		this.y1a5 = y1a5;
	}

	public float getY1a8() {
		return y1a8;
	}

	public void setY1a8(float y1a8) {
		this.y1a8 = y1a8;
	}

	public float getY2a1() {
		return y2a1;
	}

	public void setY2a1(float y2a1) {
		this.y2a1 = y2a1;
	}

	public float getY2a2() {
		return y2a2;
	}

	public void setY2a2(float y2a2) {
		this.y2a2 = y2a2;
	}

	public float getY2a3() {
		return y2a3;
	}

	public void setY2a3(float y2a3) {
		this.y2a3 = y2a3;
	}

	public float getY2a5() {
		return y2a5;
	}

	public void setY2a5(float y2a5) {
		this.y2a5 = y2a5;
	}

	public float getY2a8() {
		return y2a8;
	}

	public void setY2a8(float y2a8) {
		this.y2a8 = y2a8;
	}

	public float getY3a1() {
		return y3a1;
	}

	public void setY3a1(float y3a1) {
		this.y3a1 = y3a1;
	}

	public float getY3a2() {
		return y3a2;
	}

	public void setY3a2(float y3a2) {
		this.y3a2 = y3a2;
	}

	public float getY3a3() {
		return y3a3;
	}

	public void setY3a3(float y3a3) {
		this.y3a3 = y3a3;
	}

	public float getY3a5() {
		return y3a5;
	}

	public void setY3a5(float y3a5) {
		this.y3a5 = y3a5;
	}

	public float getY3a8() {
		return y3a8;
	}

	public void setY3a8(float y3a8) {
		this.y3a8 = y3a8;
	}

	public float getY4a1() {
		return y4a1;
	}

	public void setY4a1(float y4a1) {
		this.y4a1 = y4a1;
	}

	public float getY4a2() {
		return y4a2;
	}

	public void setY4a2(float y4a2) {
		this.y4a2 = y4a2;
	}

	public float getY4a3() {
		return y4a3;
	}

	public void setY4a3(float y4a3) {
		this.y4a3 = y4a3;
	}

	public float getY4a5() {
		return y4a5;
	}

	public void setY4a5(float y4a5) {
		this.y4a5 = y4a5;
	}

	public float getY4a8() {
		return y4a8;
	}

	public void setY4a8(float y4a8) {
		this.y4a8 = y4a8;
	}

	@Override
	public String execute() throws Exception {

		try {

			System.out.println("Table Name = " + this.tableName);

			Connection con = DbUtil.getConnection();

			String pllFreqSql = "SELECT pll_freq1 from " + CommonUtility.getDeviceTable() + "_hr_r LIMIT 1";
			System.out.println("pllFreqSql = " + pllFreqSql);
			PreparedStatement ps = con.prepareStatement(pllFreqSql);
			ResultSet rs = ps.executeQuery();

			float pllFreq = 0F;
			if (rs.next()) {
				pllFreq = rs.getFloat("pll_freq1");
			}

			Connection materialDbCon = DbUtil.getMaterialDbConnection();

			String materialFreqDataSql = "SELECT * FROM " + this.tableName + " WHERE freq<=" + pllFreq
					+ " ORDER BY freq DESC LIMIT 1";
			System.out.println("materialFreqDataSql = " + materialFreqDataSql);
			PreparedStatement materialDbPs = materialDbCon.prepareStatement(materialFreqDataSql);
			ResultSet materialDbRs = materialDbPs.executeQuery();

			if (materialDbRs.next()) {

				this.y0a1 = materialDbRs.getFloat("y0_a1");
				this.y0a2 = materialDbRs.getFloat("y0_a2");
				this.y0a3 = materialDbRs.getFloat("y0_a3");
				this.y0a5 = materialDbRs.getFloat("y0_a5");
				this.y0a8 = materialDbRs.getFloat("y0_a8");

				this.y1a1 = materialDbRs.getFloat("y1_a1");
				this.y1a2 = materialDbRs.getFloat("y1_a2");
				this.y1a3 = materialDbRs.getFloat("y1_a3");
				this.y1a5 = materialDbRs.getFloat("y1_a5");
				this.y1a8 = materialDbRs.getFloat("y1_a8");

				this.y2a1 = materialDbRs.getFloat("y2_a1");
				this.y2a2 = materialDbRs.getFloat("y2_a2");
				this.y2a3 = materialDbRs.getFloat("y2_a3");
				this.y2a5 = materialDbRs.getFloat("y2_a5");
				this.y2a8 = materialDbRs.getFloat("y2_a8");

				this.y3a1 = materialDbRs.getFloat("y3_a1");
				this.y3a2 = materialDbRs.getFloat("y3_a2");
				this.y3a3 = materialDbRs.getFloat("y3_a3");
				this.y3a5 = materialDbRs.getFloat("y3_a5");
				this.y3a8 = materialDbRs.getFloat("y3_a8");

				this.y4a1 = materialDbRs.getFloat("y4_a1");
				this.y4a2 = materialDbRs.getFloat("y4_a2");
				this.y4a3 = materialDbRs.getFloat("y4_a3");
				this.y4a5 = materialDbRs.getFloat("y4_a5");
				this.y4a8 = materialDbRs.getFloat("y4_a8");

				this.freq = materialDbRs.getFloat("freq");
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return Constants.SUCCESS_MSG;
	}
}
