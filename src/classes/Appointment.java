package classes;

public class Appointment {

	private String apptDate;
	private String apptStartTime;
	private String apptEndTime;
	private String apptLocation;
	private String visitTitle;
	private String visitDescripton;
	
	public Appointment(String apptDate, String apptStartTime, String apptEndTime, String apptLocation, String doctorName,
			String visitTitle, String visitDescripton) {
		this.apptDate = apptDate;
		this.apptStartTime = apptStartTime;
		this.apptEndTime = apptEndTime;
		this.apptLocation = apptLocation;
		this.visitTitle = visitTitle;
		this.visitDescripton = visitDescripton;
	}

	public Appointment() {
		// TODO Auto-generated constructor stub
	}

	// Accessors and Mutators
	public String getApptDate() {
		return apptDate;
	}

	public void setApptDate(String apptDate) {
		this.apptDate = apptDate;
	}

	public String getApptStartTime() {
		return apptStartTime;
	}

	public void setApptStartTime(String apptStartTime) {
		this.apptStartTime = apptStartTime;
	}

	public String getApptEndTime() {
		return apptEndTime;
	}

	public void setApptEndTime(String apptEndTime) {
		this.apptEndTime = apptEndTime;
	}

	public String getApptLocation() {
		return apptLocation;
	}

	public void setApptLocation(String apptLocation) {
		this.apptLocation = apptLocation;
	}

	public String getVisitTitle() {
		return visitTitle;
	}

	public void setVisitTitle(String visitTitle) {
		this.visitTitle = visitTitle;
	}

	public String getVisitDescripton() {
		return visitDescripton;
	}

	public void setVisitDescripton(String visitDescripton) {
		this.visitDescripton = visitDescripton;
	}
}
