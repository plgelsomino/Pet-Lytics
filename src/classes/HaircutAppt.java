package classes;

public class HaircutAppt extends Appointment {
	
	private String haircutPersonName;
	
	public HaircutAppt(String apptDate, String apptStartTime, String apptEndTime, String apptLocation, String haircutPersonName,
			String visitTitle, String visitDescripton) {
		super(apptDate, apptStartTime, apptEndTime, apptLocation, haircutPersonName, visitTitle, visitDescripton);
	}
	
	public String getHaircutPersonName() {
		return haircutPersonName;
	}

	public void setHaircutPersonName(String haircutPersonName) {
		this.haircutPersonName = haircutPersonName;
	}
	
}
