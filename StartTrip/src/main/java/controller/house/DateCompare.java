package controller.house;

public class DateCompare {
	public int getint(java.util.Date a) {
		int b=(1900+a.getYear())*10000;
		b=b+((a.getMonth()+1)*100);
		b=b+a.getDate();
		return b;
	}
	
	

}
