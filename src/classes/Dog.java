package classes;

public class Dog extends Pet {

	public Dog(String petName) {
		super(petName);
	}
	
	public Dog(String petName, int petAge, String petGender, String petBreed, String petColor, String petBirthday,
			String petPurchasePlace, String petPurchaseTown, String petPicture) {
		super(petName, petAge, petGender, petBreed, petColor, petBirthday, petPurchasePlace, petPurchaseTown, petPicture);
	}

	@Override
	public String speak() {
		return "Woof";
	}

}
