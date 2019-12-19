package com.mphasis.AirlineRProject.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "passengers")
public class Passenger {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int passengerNo;
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ticketNo;
	private String firstName;
	private String lastName;
	private int age;
	
	
	public int getPassengerNo() {
		return passengerNo;
	}
	public void setPassengerNo(int passengerNo) {
		this.passengerNo = passengerNo;
	}
	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Passenger(int passengerNo, int ticketNo, String firstName, String lastName, int age) {
		super();
		this.passengerNo = passengerNo;
		this.ticketNo = ticketNo;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}
	public Passenger() {
		super();
	}
	@Override
	public String toString() {
		return "Passenger [passengerNo=" + passengerNo + ", ticketNo=" + ticketNo + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", age=" + age + "]";
	}
	
	

}
