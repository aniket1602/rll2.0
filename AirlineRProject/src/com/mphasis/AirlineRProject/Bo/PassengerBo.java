package com.mphasis.AirlineRProject.Bo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.mphasis.AirlineRProject.Model.Passenger;

@Repository
public class PassengerBo {
	
SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public boolean insertPassenger(Passenger p) throws Exception {
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		s.save(p);
		t1.commit();
		s.close();
		
		return true;
	}
	
	public Passenger getPassengerById(int ticketNo) {
		Session s = sf.openSession();
		@SuppressWarnings("unused")
		Transaction t1 = s.beginTransaction();
		Passenger p1 = s.get(Passenger.class, ticketNo);
		s.close();
		
		return p1;
	}
	
	@SuppressWarnings("unchecked")
	public List<Passenger> getAllPassenger(){
		List<Passenger> li = null;
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		
		li = s.createQuery("from passengers").list();
		t1.commit();
		s.close();
		return li;

	}


}
