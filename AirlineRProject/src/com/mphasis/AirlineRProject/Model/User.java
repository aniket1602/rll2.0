package com.mphasis.AirlineRProject.Model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "Airuser")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	@Id
	private String mobile;
	private String email;
	private String password;
	private String address;
	private String securityQuestion;
	private String answer;
	private LocalDate dob;
	private String gender;
	private String idName;
	@Id
	private String idNumber;
	private String userType;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSecurityQuestion() {
		return securityQuestion;
	}
	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIdName() {
		return idName;
	}
	public void setIdName(String idName) {
		this.idName = idName;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public User(String name, String mobile, String email, String password, String address, String securityQuestion,
			String answer, LocalDate dob, String gender, String idName, String idNumber, String userType) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
		this.address = address;
		this.securityQuestion = securityQuestion;
		this.answer = answer;
		this.dob = dob;
		this.gender = gender;
		this.idName = idName;
		this.idNumber = idNumber;
		this.userType = userType;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "Username=" + name + ", mobile=" + mobile + ", email=" + email + ", password=" + password
				+ ", address=" + address + ", securityQuestion=" + securityQuestion + ", answer=" + answer + ", dob="
				+ dob + ", gender=" + gender + ", idName=" + idName + ", idNumber=" + idNumber + ", userType="
				+ userType;
	}
	
	
}
