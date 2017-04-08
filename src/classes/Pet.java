package classes;

public class Pet {
	private String petName;
	private String petType;
	private String petBreed;
	private String petBirthDate;
	private String petPurchasePlace;
	private String petPurchaseTown;
	private String petPurchaseDate;
	private String petWeight;
	private String petColor;
	private String petPicture;
	
	public Pet(String petName, String petType, String petBreed, String petBirthDate, String petPurchasePlace,
			String petPurchaseTown, String petPurchaseDate, String petWeight, String petColor, String petPicture) {
		this.petName = petName;
		this.petType = petType;
		this.petBreed = petBreed;
		this.petBirthDate = petBirthDate;
		this.petPurchasePlace = petPurchasePlace;
		this.petPurchaseTown = petPurchaseTown;
		this.petPurchaseDate = petPurchaseDate;
		this.petWeight = petWeight;
		this.petColor = petColor;
		this.petPicture = petPicture;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	public String getPetBirthDate() {
		return petBirthDate;
	}
	public void setPetBirthDate(String petBirthDate) {
		this.petBirthDate = petBirthDate;
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
	public String getPetPurchaseDate() {
		return petPurchaseDate;
	}
	public void setPetPurchaseDate(String petPurchaseDate) {
		this.petPurchaseDate = petPurchaseDate;
	}
	public String getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(String petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetColor() {
		return petColor;
	}
	public void setPetColor(String petColor) {
		this.petColor = petColor;
	}
	public String getPetPicture() {
		return petPicture;
	}
	public void setPetPicture(String petPicture) {
		this.petPicture = petPicture;
	}

}