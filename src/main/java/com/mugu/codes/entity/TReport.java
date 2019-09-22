package com.mugu.codes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="TReport")
public class TReport {

	@Id
	@Column(name="testdate")
	private String TestDate;
	
	@Column(name="assessment")
	private String Assessment;
	
	@Column(name="testmark")
	private int TestMark;
	
	@Column(name="mail")
	private String Mail;
	
	@Column(name="total")
	private int Total;
	
	@Column(name="result")
	private String Result;

	public String getTestDate() {
		return TestDate;
	}

	public void setTestDate(String testDate) {
		TestDate = testDate;
	}

	public String getAssessment() {
		return Assessment;
	}

	public void setAssessment(String assessment) {
		Assessment = assessment;
	}

	public int getTestMark() {
		return TestMark;
	}

	public void setTestMark(int testMark) {
		TestMark = testMark;
	}

	public String getMail() {
		return Mail;
	}

	public void setMail(String mail) {
		Mail = mail;
	}

	public int getTotal() {
		return Total;
	}

	public void setTotal(int total) {
		Total = total;
	}

	public String getResult() {
		return Result;
	}

	public void setResult(String result) {
		Result = result;
	}
	
	
}
