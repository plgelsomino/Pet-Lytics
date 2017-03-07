package classes;

public class PetSitter extends Appointment {
	private String petSitterName;

	public PetSitter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PetSitter(String apptDate, String apptStartTime, String apptEndTime, String apptLocation, String doctorName,
			String visitTitle, String visitDescripton) {
		super(apptDate, apptStartTime, apptEndTime, apptLocation, doctorName, visitTitle, visitDescripton);
		// TODO Auto-generated constructor stub
	}

	public String getPetSitterName() {
		return petSitterName;
	}

	public void setPetSitterName(String petSitterName) {
		this.petSitterName = petSitterName;
	}
	
}
