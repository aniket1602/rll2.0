package com.mphasis.AirlineRProject.Bo;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.mphasis.AirlineRProject.Model.Booking;
import com.mphasis.AirlineRProject.Model.Flight;


@Repository
public class BookingBo {
	
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public boolean insertBooking(Booking b) throws Exception {
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		s.save(b);
		t1.commit();
		s.close();
		
		return true;
	}
	
	public Booking getBookingById(String flightId) {
		Session s = sf.openSession();
		@SuppressWarnings("unused")
		Transaction t1 = s.beginTransaction();
		Booking b1 = s.get(Booking.class, flightId);
		s.close();
		
		return b1;
	}
	@SuppressWarnings("unchecked")
	public List<Booking> getAllTicket(){
		List<Booking> li = null;
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		
		li = s.createQuery("from Booking").list();
		t1.commit();
		s.close();
		return li;

	}
	
	public int getCountBookedSeatByFlightId(String flightid,LocalDate ld)
	{
		int countseat=0;
		List<Booking> blist=getAllTicket();
		System.out.println("WWWWWW = "+blist);
		for(Booking b:blist) {
			if((b.getFlightId().equals(flightid))&&(b.getBookingdate().equals(ld)))
					{
				if(b.getStatus().equals("issued"))
				countseat=countseat+b.getNoofSeatBooked();
					}
		}
		return countseat;
	}
	@SuppressWarnings("deprecation")
	public List<Booking> getBookingByUser(String mobile) {
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		Criteria c = s.createCriteria(Booking.class);
		c.add(Restrictions.eq("mobile", mobile));
		List<Booking> li = c.list();
		s.close();
		return li;
	}

}
