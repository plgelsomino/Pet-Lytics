package classes;

public class Medication extends Treatment {
	private String medName;
	private String medType;
	private double medCost;
	private String medDateGiven;
	private boolean isReocurring;

	public Medication(String treatmentName, String treatmentDescription, double treatmentCost, String medName, String medType, double medCost, String medDateGiven) {
		super(treatmentName, treatmentDescription, treatmentCost);
		this.medName= medName;
		this.medType = medType;
		this.medCost = medCost;
		this.medDateGiven = medDateGiven;
		this.isReocurring = true;
	}

	public String reoccuringMedication(boolean isReoccuring) {
		return "Let this method return monthy, yearly, daily,...";
	}
	
	public String getMedName() {
		return medName;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public String getMedType() {
		return medType;
	}
	public void setMedType(String medType) {
		this.medType = medType;
	}
	public double getMedCost() {
		return medCost;
	}
	public void setMedCost(double medCost) {
		this.medCost = medCost;
	}
	public String getMedDateGiven() {
		return medDateGiven;
	}
	public void setMedDateGiven(String medDateGiven) {
		this.medDateGiven = medDateGiven;
	}
	public boolean isReocurring() {
		return isReocurring;
	}
	public void setReocurring(boolean isReocurring) {
		this.isReocurring = isReocurring;
	}
	
	
}
