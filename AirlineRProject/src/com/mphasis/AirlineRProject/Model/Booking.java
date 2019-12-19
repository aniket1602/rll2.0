package com.mphasis.AirlineRProject.Model;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bookingdeatils")
public class Booking implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ticketNo;
	private String flightId;
	private String mobile;
	private Double totalFare;
	private LocalDate bookingdate;
	private LocalDate traveldate;
	private int noofSeatBooked;
	private String status;
	
	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public String getFlightId() {
		return flightId;
	}
	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Double getTotalFare() {
		return totalFare;
	}
	public void setTotalFare(Double totalFare) {
		this.totalFare = totalFare;
	}
	public LocalDate getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(LocalDate bookingdate) {
		this.bookingdate = bookingdate;
	}
	public LocalDate getTraveldate() {
		return traveldate;
	}
	public void setTraveldate(LocalDate traveldate) {
		this.traveldate = traveldate;
	}
	public int getNoofSeatBooked() {
		return noofSeatBooked;
	}
	public void setNoofSeatBooked(int noofSeatBooked) {
		this.noofSeatBooked = noofSeatBooked;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Booking(int ticketNo, String flightId, String mobile, Double totalFare, LocalDate bookingdate,
			LocalDate traveldate, int noofSeatBooked, String status) {
		super();
		this.ticketNo = ticketNo;
		this.flightId = flightId;
		this.mobile = mobile;
		this.totalFare = totalFare;
		this.bookingdate = bookingdate;
		this.traveldate = traveldate;
		this.noofSeatBooked = noofSeatBooked;
		this.status = status;
	}
	public Booking() {
		super();
	}
	@Override
	public String toString() {
		return "Booking ticketNo=" + ticketNo + ", flightId=" + flightId + ", mobile=" + mobile + ", totalFare="
				+ totalFare + ", bookingdate=" + bookingdate + ", traveldate=" + traveldate + ", noofSeatBooked="
				+ noofSeatBooked + ", status=" + status;
	}
	
	
	
}