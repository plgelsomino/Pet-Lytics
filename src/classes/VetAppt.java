package classes;

import java.util.ArrayList;

public class VetAppt extends Appointment {
	private String doctorName;
	private ArrayList<Treatment> treatments;
	public final double TAX = 1.085;
	
	public VetAppt() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VetAppt(String apptDate, String apptStartTime, String apptEndTime, String apptLocation, String doctorName,
			String visitTitle, String visitDescripton) {
		super(apptDate, apptStartTime, apptEndTime, apptLocation, doctorName, visitTitle, visitDescripton);
		// TODO Auto-generated constructor stub
		this.setTreatments(new ArrayList<Treatment>());
	}
	
	public double calculateBillTotal(ArrayList<Treatment> treatments) {
		int total = 0;
		
		// run through treatments ArrayList and get cost of each treatment
		for (Treatment currentTreatment : treatments) {
			total += currentTreatment.getTreatmentCost();
		}
		return total;
	}
	
	public double calculateBillTotalWithTax(ArrayList<Treatment> treatments) {
		double totalWithoutTax = calculateBillTotal(treatments);
		double totalWithTax = totalWithoutTax * TAX;
		return totalWithTax;
	}


	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public ArrayList<Treatment> getTreatments() {
		return treatments;
	}

	public void setTreatments(ArrayList<Treatment> treatments) {
		this.treatments = treatments;
	}
	
	
}
