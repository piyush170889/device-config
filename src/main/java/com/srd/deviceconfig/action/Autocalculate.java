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

	// private List<Float> lm;

	private Float[] lm;

	private List<Float> y0;

	private List<Float> y1;

	private List<Float> y2;

	private List<Float> y3;

	private List<Float> y4;

	private Float y0a0;

	private Float y1a0;

	private Float y2a0;

	private Float y3a0;

	private Float y4a0;

	private Float y0a6;

	private Float y1a6;

	private Float y2a6;

	private Float y3a6;

	private Float y4a6;

	public Autocalculate() {
	}

	public Float getY0a0() {
		return y0a0;
	}

	public void setY0a0(Float y0a0) {
		this.y0a0 = y0a0;
	}

	public Float getY1a0() {
		return y1a0;
	}

	public void setY1a0(Float y1a0) {
		this.y1a0 = y1a0;
	}

	public Float getY2a0() {
		return y2a0;
	}

	public void setY2a0(Float y2a0) {
		this.y2a0 = y2a0;
	}

	public Float getY3a0() {
		return y3a0;
	}

	public void setY3a0(Float y3a0) {
		this.y3a0 = y3a0;
	}

	public Float getY4a0() {
		return y4a0;
	}

	public void setY4a0(Float y4a0) {
		this.y4a0 = y4a0;
	}

	public Float getY0a6() {
		return y0a6;
	}

	public void setY0a6(Float y0a6) {
		this.y0a6 = y0a6;
	}

	public Float getY1a6() {
		return y1a6;
	}

	public void setY1a6(Float y1a6) {
		this.y1a6 = y1a6;
	}

	public Float getY2a6() {
		return y2a6;
	}

	public void setY2a6(Float y2a6) {
		this.y2a6 = y2a6;
	}

	public Float getY3a6() {
		return y3a6;
	}

	public void setY3a6(Float y3a6) {
		this.y3a6 = y3a6;
	}

	public Float getY4a6() {
		return y4a6;
	}

	public void setY4a6(Float y4a6) {
		this.y4a6 = y4a6;
	}

	public List<Float> getY0() {
		return y0;
	}

	public Float[] getLm() {
		return lm;
	}

	public void setLm(Float[] lm) {
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
		return "Autocalculate [lm=" + lm + ", y0=" + y0 + ", y1=" + y1 + ", y2=" + y2 + ", y3=" + y3 + ", y4=" + y4
				+ "]";
	}

	@Override
	public String execute() throws Exception {

		System.out.println(this.toString());
		
		SimpleRegression simpleRegression = new SimpleRegression();
		
		System.out.println("lm Size = " + this.lm.length);
		System.out.println("lm[1] = " + this.lm[1]);
		
//		this.y0a0 = simpleRegression.reg
		return Constants.SUCCESS_MSG;
	}
}
