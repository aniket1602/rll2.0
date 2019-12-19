package com.mphasis.AirlineRProject.Bo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.mphasis.AirlineRProject.Model.User;

@Repository
public class UserBo {
	
SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public boolean insertUser(User u) {
		//TODO Auto-generated method stub
		System.out.println("inside user insert..");
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(u);
		s.getTransaction().commit();
		s.close();
		return true;
	}
	
	public List<User> getAllUser(){
		Session s = sf.openSession();
		Transaction t1 = s.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> li = s.createQuery("from User").list();
		t1.commit();
		s.close();
		return li;
	}
	
	public User getUserByMobile(String value) {
		Session s = sf.openSession();
		@SuppressWarnings("unused")
		Transaction t1 = s.beginTransaction();
		User u = s.get(User.class, value);
		System.out.println(u);
		return u;
	}
	
	@SuppressWarnings("deprecation")
	public boolean changeUserPwd(String upassword , String uemail) throws Exception
	   {	
		 
			Session s=sf.openSession();
			Transaction t1=s.beginTransaction();
			//s.merge(u);//insert query vl be executed at this place
			String hql = "UPDATE User SET password = :upassword WHERE email = :uemail";
			@SuppressWarnings("rawtypes")
			Query query = s.createQuery(hql);
			query.setParameter("upassword",upassword);
			query.setParameter("uemail",uemail);
			int value = query.executeUpdate();
			
			
			t1.commit();
			s.close();
			
			if (value != 0)
			{
			  return true;	
			}
			else
			{
               return false;
			}
	   }
 
	


}
