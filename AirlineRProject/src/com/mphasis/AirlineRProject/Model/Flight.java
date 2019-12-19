package com.mphasis.AirlineRProject.Model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;





@Entity
@Table(name = "flightdetails")
public class Flight implements Serializable {
	
	@Id
	private String flightId;
	private String flightName;
	private String sourceName;
	private String destinationName;
	private String arrivalTime;
	private String departureTime;
	private Double fare;
	private int noofSeatAvailble;
	private String availbleDays;
	
	public String getFlightId() {
		return flightId;
	}
	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public String getSourceName() {
		return sourceName;
	}
	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}
	public String getDestinationName() {
		return destinationName;
	}
	public void setDestinationName(String destinationName) {
		this.destinationName = destinationName;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public Double getFare() {
		return fare;
	}
	public void setFare(Double fare) {
		this.fare = fare;
	}
	public String getAvailbleDays() {
		return availbleDays;
	}
	public void setAvailbleDays(String availbleDays) {
		this.availbleDays = availbleDays;
	}
	public int getNoofSeatAvailble() {
		return noofSeatAvailble;
	}
	public void setNoofSeatAvailble(int noofSeatAvailble) {
		this.noofSeatAvailble = noofSeatAvailble;
	}
	
	
	public Flight(String flightId, String flightName, String sourceName, String destinationName, String arrivalTime,
			String departureTime, Double fare, int noofSeatAvailble, String availbleDays) {
		super();
		this.flightId = flightId;
		this.flightName = flightName;
		this.sourceName = sourceName;
		this.destinationName = destinationName;
		this.arrivalTime = arrivalTime;
		this.departureTime = departureTime;
		this.fare = fare;
		this.noofSeatAvailble = noofSeatAvailble;
		this.availbleDays = availbleDays;
	}
	public Flight() {
		super();
	}
	
	@Override
	public String toString() {
		return "Flight flightId=" + flightId + ", flightName=" + flightName + ", sourceName=" + sourceName
				+ ", destinationName=" + destinationName + ", arrivalTime=" + arrivalTime + ", departureTime="
				+ departureTime + ", fare=" + fare + ", noofSeatAvailble=" + noofSeatAvailble + ", availbleDays="
				+ availbleDays ;
	}
	
	

}
