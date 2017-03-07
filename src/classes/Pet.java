package classes;

public abstract class Pet {
	private String petName;
	private int petAge;
	private String petGender;
	private String petBreed;
	private String petColor;
	private String petBirthday;
	private String petPurchasePlace;
	private String petPurchaseTown;
	private String petPicture;
	
	public Pet(String petName) {
		this.petName = petName;
	}
	
	public Pet(String petName, int petAge, String petGender, String petBreed, String petColor, String petBirthday,
			String petPurchasePlace, String petPurchaseTown, String petPicture) {
		this.petName = petName;
		this.petAge = petAge;
		this.petGender = petGender;
		this.petBreed = petBreed;
		this.petColor = petColor;
		this.petBirthday = petBirthday;
		this.petPurchasePlace = petPurchasePlace;
		this.petPurchaseTown = petPurchaseTown;
		this.petPicture = petPicture;
	}
	
	public abstract String speak();
	
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	public String getPetColor() {
		return petColor;
	}
	public void setPetColor(String petColor) {
		this.petColor = petColor;
	}
	public String getPetBirthday() {
		return petBirthday;
	}
	public void setPetBirthday(String petBirthday) {
		this.petBirthday = petBirthday;
	}
	public String getPetPurchasePlace() {
		return petPurchasePlace;
	}
	public void setPetPurchasePlace(String petPurchasePlace) {
		this.petPurchasePlace = petPurchasePlace;
	}
	public String getPetPurchaseTown() {
		return petPurchaseTown;
	}
	public void setPetPurchaseTown(String petPurchaseTown) {
		this.petPurchaseTown = petPurchaseTown;
	}
	public String getPetPicture() {
		return petPicture;
	}
	public void setPetPicture(String petPicture) {
		this.petPicture = petPicture;
	}
}
