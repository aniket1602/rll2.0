package com.mphasis.AirlineRProject.Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mphasis.AirlineRProject.Bo.FlightBo;
import com.mphasis.AirlineRProject.Bo.UserBo;
import com.mphasis.AirlineRProject.Model.Flight;
import com.mphasis.AirlineRProject.Model.User;


import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class FirstController {
	
	@Autowired
	UserBo ub;
	
	@Autowired
	FlightBo fb;
	
	@RequestMapping("/")
	public ModelAndView firstcall(){
		return new ModelAndView("index");
	}
	
	@RequestMapping("/home")
	public ModelAndView fortythcall(){
		return new ModelAndView("index");
	}
	
	
	
	@RequestMapping("/aboutus")
	public ModelAndView thirtyfirstcall(){
		return new ModelAndView("aboutus");
	}
	
	@RequestMapping("/contactus")
	public ModelAndView secondCall() {
		return new ModelAndView("contactus");
	}
	
	@RequestMapping("/register")
	public ModelAndView thirdCall() {
		return new ModelAndView("registration");
	}
	
	@RequestMapping(value = "insertUser", method = RequestMethod.POST)
	public ModelAndView fourthCall(HttpServletRequest req) throws Exception
	{
		String name = req.getParameter("uname");
		String password=req.getParameter("upass");
		String mobile = req.getParameter("umob");
		String email = req.getParameter("uemail");
		String gender = req.getParameter("gender");
		String strDate = req.getParameter("udob");
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
		LocalDate dob = LocalDate.parse(strDate,formatter);
		String addr = req.getParameter("uadd");
		String idproof = req.getParameter("idname");
		String idvalue = req.getParameter("uidnum");
		String question = req.getParameter("uques");
		String answer = req.getParameter("uans");
		System.out.println(idvalue);
		
		HttpSession s1 = req.getSession();
		s1.setAttribute("name",name);
		s1.setAttribute("password",password);
		s1.setAttribute("mobile",mobile);
		s1.setAttribute("email",email);
		s1.setAttribute("gender",gender);
		s1.setAttribute("strDate",strDate);	
		s1.setAttribute("addr",addr);
		s1.setAttribute("idproof",idproof);
		s1.setAttribute("idvalue",idvalue);
		s1.setAttribute("question",question);
		s1.setAttribute("answer",answer);
	
		Random ran = new Random();
		int maxrange = 654321 , minrange =123456;
		int ramvalue = ran.nextInt(maxrange - minrange)+minrange;
		String otp = Integer.toString(ramvalue);
		System.out.println(otp);
		s1.setAttribute("otp",otp);
		try 
		{
			String fromEmail="ashishpandey3182@gmail.com"; //sender's mail id.
			String pwd="mphasis.airline@123";		//sender's mail pwd.
			String toEmail=email;  //reciever's mail id.
			String subject="DO NOT REPLY:  Otp for email Verification"; // mail subject line
			String msg="Hi "+name+" your otp is : "+otp; //mail body		
			//Creating Session Object
			Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.port", 587);
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.starttls.enable", "true");
			Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator()
			{
				protected PasswordAuthentication getPasswordAuthentication()
				{
					//sender's mail id and pwd is encapsulated inside "SendersCredentials.java"
					return new PasswordAuthentication(fromEmail, pwd);
				}
			});
			//Composing the Mail
			MimeMessage mesg = new MimeMessage(session);
			mesg.setFrom(new InternetAddress(fromEmail));
			mesg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
			mesg.setSubject(subject);  
			mesg.setText(msg);  	
			//Sending the Mail
			Transport.send(mesg);
			System.out.println("sent!!!");
			return new ModelAndView("checkotp");
		
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return new ModelAndView("error");
		}	
		
		
    }

	 @RequestMapping(value = "/insert", method =RequestMethod.POST)
	 public ModelAndView fourthmethod(HttpServletRequest request , HttpServletResponse response) throws IOException
	    {
		 
			String uotp = request.getParameter("uotp");
			HttpSession s1 = request.getSession();
			String sotp = (String) s1.getAttribute("otp");
			

			
			String v1 =  (String) s1.getAttribute("name");
			String v2 =  (String) s1.getAttribute("mobile");
			String v3 =  (String) s1.getAttribute("email");
			String v4 =  (String) s1.getAttribute("password");
			String v5 =  (String) s1.getAttribute("addr");
			String v6 =  (String) s1.getAttribute("question");
			String v7 =   (String) s1.getAttribute("answer");
			String v8 =   (String) s1.getAttribute("strDate");
			 LocalDate dob1 = null;
			 DateTimeFormatter dtf =  DateTimeFormatter.ofPattern("dd/MM/yyyy");
			 dob1  = LocalDate.parse(v8,dtf);
			String v9 =   (String) s1.getAttribute("gender");
			String v10 =   (String) s1.getAttribute("idproof");
			String v11=   (String) s1.getAttribute("idvalue");
			String v12 = "User";
			
			
			 System.out.println(v1+" "+v2);
			if (sotp.equals(uotp))
			{
				User u = new User(v1,v2,v3,v4,v5,v6,v7,dob1,v9,v10,v11,v12);
				ub.insertUser(u);
				return new ModelAndView("index");
			} 
			else 
			{
				return new ModelAndView("errorotp");
			}
			
	    }
		
		/*System.out.println(name + password + mobile + email + gender + strDate + dob + addr + idproof + idvalue  + question + answer);
		String utype = "User";
		
		User u = new User(name, mobile, email, password, addr, question, answer, dob, gender, idproof, idvalue, utype);
		System.out.println("u");
		ub.insertUser(u);
		return new ModelAndView("success");*/

	
	@RequestMapping("/login")
	public ModelAndView fifthCall() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "checkUser",method = RequestMethod.POST)
	public ModelAndView sixthCall(HttpServletRequest req) {
		ModelAndView mv = null;
		
		String value = req.getParameter("uvalue");
		String pass = req.getParameter("upass");
		
		//session code
		String mobile = "";
		String email = "";
		String name = "";
		
		List<User> li = ub.getAllUser();
		if(value.equals("admin")) {
			if(pass.equals("admin")) {
				mv=new ModelAndView("adminindex");
			}
			else {
				mv=new ModelAndView("error");
			}
		}
		else {
			for(User u1:li) {
				if((u1.getMobile().equals(value))||(u1.getEmail().equals(value))) {
					if(u1.getPassword().equals(pass)) {
						mv = new ModelAndView("userindex");
						name = u1.getName();
						mobile = u1.getMobile();
						email = u1.getEmail();
						break;
					}
					else {
						mv = new ModelAndView("error");
					}
				}
				else {
					mv = new ModelAndView("error");
				}
			}
		}
		
		//session code
		mv.addObject("name",name);
		req.getSession().setAttribute("mobile", mobile);
		req.getSession().setAttribute("email", email);
		
		return mv;
	}
	
	@RequestMapping(value = "insertflight", method = RequestMethod.POST)
	public ModelAndView sevenCall(HttpServletRequest req) throws Exception{
		String flightId = req.getParameter("flightid");
		String fname = req.getParameter("flightname");
		String sname=req.getParameter("sourcename");
		String dname = req.getParameter("destname");
		String arrtime = req.getParameter("arrivaltime");
		String deptime = req.getParameter("departuretime");
		//String strDate = req.getParameter("udob");
		//DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
		//LocalDate dob = LocalDate.parse(strDate,formatter);
		double fare = Double.parseDouble(req.getParameter("fare"));
		
		int noofseat = Integer.parseInt(req.getParameter("noseat"));
		String day = req.getParameter("availday");
		
		Flight f = new Flight(flightId, fname, sname, dname, arrtime, deptime, fare, noofseat, day);
		System.out.println(f);
		fb.insertFlight(f);
		return new ModelAndView("success");
	}
	
	@RequestMapping("/addflight")
	public ModelAndView eightcall() {
		return new ModelAndView("addflight");
	}
	
	@RequestMapping("/viewflight")
	public ModelAndView ninthCall() {
		return new ModelAndView("viewflight");
	}
	
	@RequestMapping(value ="editflight")
	public ModelAndView tenthCall(HttpServletRequest req) {
		ModelAndView mv = null;
		String fid = req.getParameter("fid");
		Flight f = fb.getFlightByNumber(fid);
		mv = new ModelAndView("editflight");
		mv.addObject("f",f);
		return mv;
	}
	
	@RequestMapping(value = "updateFlight", method = RequestMethod.POST)
	public ModelAndView eleventhCall(HttpServletRequest req) throws Exception{
		String flightId = req.getParameter("fid");
		String fname = req.getParameter("fname");
		String sname=req.getParameter("from");
		String dname = req.getParameter("to");
		String arrtime = req.getParameter("atime");
		String deptime = req.getParameter("dtime");
		double fare = Double.parseDouble(req.getParameter("fare"));
		int noofseat = Integer.parseInt(req.getParameter("noseat"));
		String day = req.getParameter("days");
		
		Flight f = new Flight(flightId, fname, sname, dname, arrtime, deptime, fare, noofseat, day);
		System.out.println(f);
		fb.updateFlight(f);
		return new ModelAndView("success1");
	}
	

	
	@RequestMapping(value = "/searchflight", method = RequestMethod.GET)
	   public ModelAndView twelvthCall()
	   {
	      ModelAndView mav = new ModelAndView("searchflight");
	      return mav;
	   }
	
	@RequestMapping("/viewticket")
	public ModelAndView thirteenthCall() {
		return new ModelAndView("viewticket");
	}
	
	@RequestMapping("/viewuser")
	public ModelAndView fourteenthCall() {
		return new ModelAndView("viewuser");
	}
	
	@RequestMapping(value  = "deleteFlight", method = RequestMethod.GET)
	public ModelAndView fifteenthCall(HttpServletRequest req) throws Exception {
		
		String flightId = req.getParameter("fid");
		
		
		Flight f = fb.getFlightByNumber(flightId);		
		fb.deleteFlight(f);
		return new ModelAndView("viewflight");
	}
	
	@RequestMapping("/logout")
	public ModelAndView sixteenthCall(HttpSession session, HttpServletRequest req) {
		
		String mobile = (String) req.getSession().getAttribute("mobile");
		mobile = null;
		String email = (String) req.getSession().getAttribute("email");
		email = null;
		session.invalidate();
		return new ModelAndView("index");
	}
	@RequestMapping("/forgot")
	public ModelAndView sevenMethod()
	{
		return new ModelAndView("forgotpwd");
	}

	@RequestMapping(value = "/forgotpwd", method =RequestMethod.POST)
	public ModelAndView forgotpwd(HttpServletRequest request) throws Exception
	{   
		
		String status = "notsent";
		String mail = request.getParameter("umail");
		List<User> li = ub.getAllUser();
		HttpSession s1 = request.getSession(true);
		 ModelAndView mv = null;
	
		 String name = (String) s1.getAttribute("name");
		for(User u : li)
		{
			if(u.getEmail().equals(mail))
			{
				s1.setAttribute("mail",mail);
			    Random ran = new Random();
				int   minrange =123456 , maxrange = 654321;
				int ramvalue = ran.nextInt(maxrange - minrange)+minrange;
				String pwdotp = Integer.toString(ramvalue);
				s1.setAttribute("pwdotp",pwdotp);
				try 
				{
					String fromEmail="ashishpandey3182@gmail.com"; //sender's mail id.
					String pwd="mphasis.airline@123";		//sender's mail pwd.
					String toEmail=mail;  //reciever's mail id.
					String subject="DO NOT REPLY:  Otp for email Verification"; // mail subject line
					String msg="Hi "+name+" your otp is : "+pwdotp; //mail body		
					//Creating Session Object
					Properties prop = new Properties();
					prop.put("mail.smtp.host", "smtp.gmail.com");
					prop.put("mail.smtp.port", 587);
					prop.put("mail.smtp.auth", "true");
					prop.put("mail.smtp.starttls.enable", "true");
					Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator()
					{
						protected PasswordAuthentication getPasswordAuthentication()
						{
							//sender's mail id and pwd is encapsulated inside "SendersCredentials.java"
							return new PasswordAuthentication(fromEmail, pwd);
						}
					});
					//Composing the Mail
					MimeMessage mesg = new MimeMessage(session);
					mesg.setFrom(new InternetAddress(fromEmail));
					mesg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
					mesg.setSubject(subject);  
					mesg.setText(msg);  	
					//Sending the Mail
					Transport.send(mesg);
					System.out.println("sent!!!");
				
				}
				catch (Exception e) 
				{
					e.printStackTrace();
				}	
				status="sent";
			}
			if(status.equals("sent")) {
				mv=new ModelAndView("checkpwdotp");
				break;
			}
				
		  }
		if(status.equals("notsent")) {
			mv=new ModelAndView("errorforgotpwd");
		}
	
		return mv;
	}
	
	@RequestMapping(value = "/checkpwdotp", method =RequestMethod.POST)
	public ModelAndView ninthMethod(HttpServletRequest request) throws Exception
	{
		 String upwdotp = request.getParameter("upwdotp");
		 HttpSession s1 = request.getSession();
		 String opwdotp = (String) s1.getAttribute("pwdotp");
		 if (opwdotp.equals(upwdotp))
		 {
			 return new ModelAndView("changepwd");	
		 }
		 else
		 {
	          return new ModelAndView("error");	
		 }

	}
	@RequestMapping(value = "/changepwd", method =RequestMethod.POST)
	public ModelAndView tenthMethod(HttpServletRequest request) throws Exception
	{
		String pwd = request.getParameter("upwd");
		String pwd1 = request.getParameter("upwd1");
		 HttpSession s1 = request.getSession();
	    String mail =  (String) s1.getAttribute("mail");
		 if (pwd.equals(pwd1))
		 {
			 @SuppressWarnings("unused")
			boolean b = ub.changeUserPwd(pwd1, mail);		
		 }
		 else
		 {
			 System.out.println("password will not update ");
		 }
	  return new ModelAndView("index") ;
	}
		
	
}
