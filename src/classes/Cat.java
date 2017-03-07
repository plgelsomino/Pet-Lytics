package classes;

public class Cat extends Pet {

	public Cat(String petName) {
		super(petName);
	}
	
	public Cat(String petName, int petAge, String petGender, String petBreed, String petColor, String petBirthday,
			String petPurchasePlace, String petPurchaseTown, String petPicture) {
		super(petName, petAge, petGender, petBreed, petColor, petBirthday, petPurchasePlace, petPurchaseTown, petPicture);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String speak() {
		return "Meow";
	}
	
	

}
