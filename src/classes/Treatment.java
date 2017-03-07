package classes;

public class Treatment {
	
	private String treatmentName;
	private String treatmentDescription;
	private double treatmentCost;
	
	public Treatment(String treatmentName, String treatmentDescription, double treatmentCost) {
		this.treatmentName = treatmentName;
		this.treatmentDescription = treatmentDescription;
		this.treatmentCost = treatmentCost;
	}
	
	public String getTreatmentName() {
		return treatmentName;
	}
	public void setTreatmentName(String treatmentName) {
		this.treatmentName = treatmentName;
	}
	public String getTreatmentDescription() {
		return treatmentDescription;
	}
	public void setTreatmentDescription(String treatmentDescription) {
		this.treatmentDescription = treatmentDescription;
	}
	public double getTreatmentCost() {
		return treatmentCost;
	}
	public void setTreatmentCost(double treatmentCost) {
		this.treatmentCost = treatmentCost;
	}

}
