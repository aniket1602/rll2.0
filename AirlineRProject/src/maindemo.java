import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.mphasis.AirlineRProject.Bo.BookingBo;

public class maindemo {
	public static void main(String []ar) {
		BookingBo bb=new BookingBo();
		DateTimeFormatter df=DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate ld=LocalDate.parse("16/11/2019", df);
		LocalDate ld1=LocalDate.parse("2019-11-14");
		int count=bb.getCountBookedSeatByFlightId("AI-858", ld1);
		System.out.println(count);
	}

}
