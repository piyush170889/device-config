package com.srd.deviceconfig.action;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.srd.deviceconfig.constants.Constants;
import com.srd.deviceconfig.model.SlnoHrR;
import com.srd.deviceconfig.model.SlnoIrR;
import com.srd.deviceconfig.utils.CommonUtility;
import com.srd.deviceconfig.utils.DbUtil;

public class DataTabAction {

	private SlnoHrR slnoHrR;

	private SlnoIrR slnoIrR;

	public DataTabAction() {
	}

	public SlnoHrR getSlnoHrR() {
		return slnoHrR;
	}

	public void setSlnoHrR(SlnoHrR slnoHrR) {
		this.slnoHrR = slnoHrR;
	}

	public SlnoIrR getSlnoIrR() {
		return slnoIrR;
	}

	public void setSlnoIrR(SlnoIrR slnoIrR) {
		this.slnoIrR = slnoIrR;
	}

	public String getDataTabDetailsJson() {

		try {
			this.slnoHrR = getSlnoHrRFromDb();
			this.slnoIrR = getSlnoIrRFromDb();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return Constants.SUCCESS_MSG;
	}

	// DAO Methods
	private SlnoHrR getSlnoHrRFromDb() throws SQLException {

		SlnoHrR slnoHrR = null;

		try {
			Connection con = DbUtil.getConnection();
			String slNoHrRSql = "SELECT * FROM " + CommonUtility.getDeviceTable()
					+ "_hr_r ORDER BY time_stamp DESC LIMIT 1";

			PreparedStatement ps = con.prepareStatement(slNoHrRSql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				slnoHrR = new SlnoHrR(rs.getDate("time_stamp"), rs.getFloat("a0"), rs.getFloat("a1"), rs.getFloat("a2"),
						rs.getFloat("a3"), rs.getFloat("a5"), rs.getFloat("a6"), rs.getFloat("a8"),
						rs.getFloat("Average_time_zero"), rs.getFloat("Blink_Range_max"),
						rs.getFloat("Blink_range_min"), rs.getInt("Ch1_A_Gain"), rs.getFloat("Ch1_Beta0"),
						rs.getInt("Ch1_RF_Gain"), rs.getFloat("Ch1Alpha0"), rs.getInt("Ch2_A_Gain"),
						rs.getInt("CH2_RF_Gain"), rs.getFloat("Ch2Alpha0"), rs.getFloat("Ch2Beta0"),
						rs.getFloat("coeff_d"), rs.getFloat("D"), rs.getFloat("Det_Avg_time"), rs.getFloat("I"),
						rs.getFloat("Int_temp_setpoint"), rs.getFloat("iout_calib_19_mA"),
						rs.getFloat("iout_calib_5_mA"), rs.getFloat("Iz1_2"), rs.getFloat("Iz2_2"), rs.getFloat("Iz_2"),
						rs.getFloat("Mat_temp_Max"), rs.getFloat("Mat_temp_min"), rs.getFloat("ModBus_MatTemp"),
						rs.getInt("Mode"), rs.getInt("Mval_sel"), rs.getInt("n1"), rs.getInt("n2"),
						rs.getFloat("Normal_Avg_time"), rs.getFloat("P"), rs.getFloat("PLL_Freq1"),
						rs.getFloat("PLL_Freq2"), rs.getInt("Proxi_Enable"), rs.getFloat("Qz1_2"), rs.getFloat("Qz2_2"),
						rs.getFloat("Qz_2"), rs.getFloat("Rho"), rs.getFloat("S1"), rs.getFloat("S2"),
						rs.getInt("spare"), rs.getInt("Temp_sel"), rs.getInt("TempCont_Enable"));
			} else {
				slnoHrR = new SlnoHrR();
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return slnoHrR;
	}

	private SlnoIrR getSlnoIrRFromDb() throws SQLException {

		SlnoIrR slnoIrR = null;

		try {
			Connection con = DbUtil.getConnection();
			String slNoIrRSql = "SELECT * FROM " + CommonUtility.getDeviceTable()
					+ "_ir_r ORDER BY time_stamp DESC LIMIT 1";

			PreparedStatement ps = con.prepareStatement(slNoIrRSql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				slnoIrR = new SlnoIrR(rs.getDate("time_stamp"), rs.getFloat("A"), rs.getFloat("A1"), rs.getFloat("A2"),
						BigInteger.valueOf(rs.getLong("ADC_Counts_I")), BigInteger.valueOf(rs.getLong("ADC_Counts_Q")),
						rs.getFloat("Calphi0"), rs.getFloat("Calphi01"), rs.getFloat("Calphi02"), rs.getFloat("CalR0"),
						rs.getFloat("CalR01"), rs.getFloat("CalR02"), rs.getFloat("D"), rs.getFloat("D1"),
						rs.getFloat("D2"), rs.getInt("Density"), rs.getFloat("Dphi"), rs.getFloat("Dphi1"),
						rs.getFloat("Dphi2"), rs.getFloat("Dz"), rs.getFloat("Dz1"), rs.getFloat("Dz2"),
						rs.getInt("empty_flag"), rs.getFloat("H_Dutycycle"), rs.getFloat("I"), rs.getFloat("I1"),
						rs.getFloat("I2"), rs.getFloat("Mat_Temp"), rs.getFloat("Phi"), rs.getFloat("Phi1"),
						rs.getFloat("Phi2"), rs.getFloat("Phiz"), rs.getFloat("Phiz1"), rs.getFloat("Phiz2"),
						rs.getInt("PLL_lock_flag"), rs.getFloat("Q"), rs.getFloat("Q1"), rs.getFloat("Q2"),
						rs.getFloat("R"), rs.getFloat("R_z"), rs.getFloat("R_z1"), rs.getFloat("R_z2"),
						rs.getFloat("R1"), rs.getFloat("R2"), rs.getInt("Remaining_time"), rs.getFloat("Temp_CPU"),
						rs.getFloat("Temp_PS"), rs.getFloat("Temp_RF"), rs.getFloat("Y0_Dry"), rs.getFloat("Y1_Wet"));
			} else {
				slnoIrR = new SlnoIrR();
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return slnoIrR;
	}
}
