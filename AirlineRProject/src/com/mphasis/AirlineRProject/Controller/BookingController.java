package com.mphasis.AirlineRProject.Controller;

import java.time.LocalDate;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mphasis.AirlineRProject.Bo.BookingBo;
import com.mphasis.AirlineRProject.Bo.FlightBo;
import com.mphasis.AirlineRProject.Bo.PassengerBo;
import com.mphasis.AirlineRProject.Bo.UserBo;
import com.mphasis.AirlineRProject.Model.Booking;
import com.mphasis.AirlineRProject.Model.Flight;
import com.mphasis.AirlineRProject.Model.Passenger;

@Controller
public class BookingController {
	
	@Autowired
	UserBo ub;
	
	@Autowired
	FlightBo fb;
	
	@Autowired
	BookingBo bb;
	
	@Autowired
	PassengerBo pb;
	
	@RequestMapping("booking")
	public ModelAndView firstCall(HttpServletRequest req) throws Exception{
		ModelAndView mv = null;
		String flightNo = req.getParameter("flightNo");
		
		Flight f = fb.getFlightByNumber(flightNo);
		
		mv = new ModelAndView("booking");
		mv.addObject("f",f);
		return mv;
	}
	
	@RequestMapping(value = "allowbooking" , method = RequestMethod.GET)
	public ModelAndView secondCall(HttpServletRequest req ) throws Exception{
		String flightNo = req.getParameter("fid");
		String mobileNo = req.getParameter("mobileNO");
		LocalDate bookingDate = LocalDate.now();
		System.out.println(bookingDate);
		
		String travlingDate = req.getParameter("date");
		LocalDate travalDtae = LocalDate.parse(travlingDate);
		
		System.out.println(travlingDate);
		//Double fare = Double.parseDouble(req.getParameter("fare"));
		//int noofSeat = Integer.parseInt(req.getParameter("noofseat"));
		
		Flight f = fb.getFlightByNumber(flightNo);
		String status;
		int seatBooked = Integer.parseInt(req.getParameter("passenger"));
		String flightName = f.getFlightName();
		String sourceName = f.getSourceName();
		String destinationName = f.getDestinationName();
		String arrivalTime = f.getArrivalTime();
		String departureTime = f.getDepartureTime();
		String availbleDay = f.getAvailbleDays();
		double fare = Double.parseDouble(req.getParameter("fare"));
		System.out.println(fare);
		status="issued";
		
								
		Booking b = new Booking(0, flightNo, mobileNo, fare , bookingDate, travalDtae, seatBooked, status);
		bb.insertBooking(b);
		
		Booking b1 = new Booking(b.getTicketNo(), flightNo, b.getMobile(), fare, bookingDate, travalDtae, f.getNoofSeatAvailble(), status);
		ModelAndView mv = null;
		mv=new ModelAndView("bookingconfirm");
		mv.addObject("b1",b1);
		return mv;
		
		//LocalDate dob = LocalDate.parse(travlingDate, formatter);
	}
	
	
	  @RequestMapping("passengerdetails") 
	  public ModelAndView thirdCall() {
		  return new ModelAndView("passengerdetails"); 
		  
	  }
	 
	

	@RequestMapping(value = "insertPassenger", method = RequestMethod.POST)
	public ModelAndView sevenCall(HttpServletRequest req) throws Exception{
		int passNo;
		int ticketNo;
		String fname =req.getParameter("fname");
		String lname = req.getParameter("lname");
		int age = Integer.parseInt(req.getParameter("age"));
		Passenger p = new Passenger(1, 1, fname, lname, age);
		System.out.println(p);
		pb.insertPassenger(p);
		return new ModelAndView("success");
	}
	
	 @RequestMapping("paymentdetails") 
	 public ModelAndView fifthCall() {
		  return new ModelAndView("paymentdetails"); 
		  
	 }
	 
	 @RequestMapping("bookingconfirm")
	 public ModelAndView eighthCall() {
		 return new ModelAndView("bookingconfirm");
	 }
	 
	
	 
	

}
