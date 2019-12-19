package com.mphasis.AirlineRProject.Bo;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.stringtemplate.v4.compiler.CodeGenerator.list_return;

import com.mphasis.AirlineRProject.Model.Flight;


@Repository
public class FlightBo {
	
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public boolean insertFlight(Flight f) {
		System.out.println("inside flight insert..");
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(f);
		s.getTransaction().commit();
		s.close();
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Flight> getAllFlight(){
		List<Flight> li = null;
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		
		li = s.createQuery("from Flight").list();
		t1.commit();
		s.close();
		return li;

	}
	public Flight getFlightByNumber(String fid) {
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		Flight f = s.get(Flight.class, fid);
		t1.commit();
		s.close();
		return f;
	}
	public boolean updateFlight(Flight f) throws Exception{
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		s.merge(f);
		t1.commit();
		s.close();
		return false;
	}
	
	
	@SuppressWarnings("deprecation")
	public List<Flight> getseatNoAvailableonFlight(){
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();		
		  Criteria crit = s.createCriteria(Flight.class);
		  ProjectionList projList =	  Projections.projectionList();
		  projList.add(Projections.property("noofSeatAvailble"));
		  crit.setProjection(projList);
		  
		  @SuppressWarnings("unchecked") List<Flight> li = crit.list();
		 
		System.out.println(li);
		t1.commit();
		s.close();
		return li;
		
	}
	
	
	public List<Flight> getFlightByPara(String source, String dest,String strdate,int passeng){
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		
		@SuppressWarnings("deprecation")
		Criteria c = s.createCriteria(Flight.class);
		c.add(Restrictions.eq("sourceName", source));
		c.add(Restrictions.eq("destinationName", dest));
		System.out.println(strdate);		 
		LocalDate ld = LocalDate.parse(strdate);
		System.out.println(ld);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("E");
		String day = ld.format(formatter);
		System.out.println(day);
		c.add(Restrictions.eq("availbleDays", day));
		
		c.add(Restrictions.ge("noofSeatAvailble",passeng ));
		
		
		/* c.add(Restrictions.eq("passengers",passengers)); */
		
		@SuppressWarnings("unchecked")
		List<Flight> li = c.list();
		t1.commit();
		s.close();
		return li;
		
	}
	
	public boolean deleteFlight(Flight f)
	{
	    Session s = sf.openSession();
	    Transaction t1 =s.beginTransaction();
	    s.remove(f);
	    t1.commit();
	    s.close();
		return false;

	} 

	
}
