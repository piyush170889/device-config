package com.srd.deviceconfig.action;

import java.util.List;

import org.apache.commons.math3.stat.regression.SimpleRegression;

import com.opensymphony.xwork2.ActionSupport;
import com.srd.deviceconfig.constants.Constants;

public class Autocalculate extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3902224790686116066L;

	private List<Float> lm;

	private List<Float> y0;

	private List<Float> y1;

	private List<Float> y2;

	private List<Float> y3;

	private List<Float> y4;

	private Double y0a0;

	private Double y1a0;

	private Double y2a0;

	private Double y3a0;

	private Double y4a0;

	private Double y0a6;

	private Double y1a6;

	private Double y2a6;

	private Double y3a6;

	private Double y4a6;

	public Autocalculate() {
	}

	public Double getY0a0() {
		return y0a0;
	}

	public void setY0a0(Double y0a0) {
		this.y0a0 = y0a0;
	}

	public Double getY1a0() {
		return y1a0;
	}

	public void setY1a0(Double y1a0) {
		this.y1a0 = y1a0;
	}

	public Double getY2a0() {
		return y2a0;
	}

	public void setY2a0(Double y2a0) {
		this.y2a0 = y2a0;
	}

	public Double getY3a0() {
		return y3a0;
	}

	public void setY3a0(Double y3a0) {
		this.y3a0 = y3a0;
	}

	public Double getY4a0() {
		return y4a0;
	}

	public void setY4a0(Double y4a0) {
		this.y4a0 = y4a0;
	}

	public Double getY0a6() {
		return y0a6;
	}

	public void setY0a6(Double y0a6) {
		this.y0a6 = y0a6;
	}

	public Double getY1a6() {
		return y1a6;
	}

	public void setY1a6(Double y1a6) {
		this.y1a6 = y1a6;
	}

	public Double getY2a6() {
		return y2a6;
	}

	public void setY2a6(Double y2a6) {
		this.y2a6 = y2a6;
	}

	public Double getY3a6() {
		return y3a6;
	}

	public void setY3a6(Double y3a6) {
		this.y3a6 = y3a6;
	}

	public Double getY4a6() {
		return y4a6;
	}

	public void setY4a6(Double y4a6) {
		this.y4a6 = y4a6;
	}

	public List<Float> getY0() {
		return y0;
	}

	public List<Float> getLm() {
		return lm;
	}

	public void setLm(List<Float> lm) {
		this.lm = lm;
	}

	public void setY0(List<Float> y0) {
		this.y0 = y0;
	}

	public List<Float> getY1() {
		return y1;
	}

	public void setY1(List<Float> y1) {
		this.y1 = y1;
	}

	public List<Float> getY2() {
		return y2;
	}

	public void setY2(List<Float> y2) {
		this.y2 = y2;
	}

	public List<Float> getY3() {
		return y3;
	}

	public void setY3(List<Float> y3) {
		this.y3 = y3;
	}

	public List<Float> getY4() {
		return y4;
	}

	public void setY4(List<Float> y4) {
		this.y4 = y4;
	}

	@Override
	public String toString() {
		return "Autocalculate [lm=" + lm + ", y0=" + y0.toString() + ", y1=" + y1 + ", y2=" + y2 + ", y3=" + y3
				+ ", y4=" + y4 + "]";
	}

	@Override
	public String execute() throws Exception {

		System.out.println(this.toString());

		SimpleRegression simpleRegressiony0 = getSimpleRegression(y0);
		y0a0 = simpleRegressiony0.getSlope();
		y0a6 = simpleRegressiony0.getIntercept();

		SimpleRegression simpleRegressiony1 = getSimpleRegression(y1);
		y1a0 = simpleRegressiony1.getSlope();
		y1a6 = simpleRegressiony1.getIntercept();

		SimpleRegression simpleRegressiony2 = getSimpleRegression(y2);
		y2a0 = simpleRegressiony2.getSlope();
		y2a6 = simpleRegressiony2.getIntercept();

		SimpleRegression simpleRegressiony3 = getSimpleRegression(y3);
		y3a0 = simpleRegressiony3.getSlope();
		y3a6 = simpleRegressiony3.getIntercept();

		SimpleRegression simpleRegressiony4 = getSimpleRegression(y4);
		y4a0 = simpleRegressiony4.getSlope();
		y4a6 = simpleRegressiony4.getIntercept();

		return Constants.SUCCESS_MSG;
	}

	private SimpleRegression getSimpleRegression(List<Float> values) {

		SimpleRegression simpleRegression = new SimpleRegression();

		int lmSize = this.lm.size();
		System.out.println("lm Size = " + lmSize);

		if (lmSize > 2) {
			for (int i = 0; i < lmSize; i++) {
				simpleRegression.addData(lm.get(i), values.get(i));
			}
			simpleRegression.regress();
		} 

		return simpleRegression;
	}
}
