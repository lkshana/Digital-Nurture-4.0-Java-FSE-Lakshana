// parent class
class Animal {
    void makeSound() {
        System.out.println("Meow");
    }
}

// child class
class Dog extends Animal {
    @Override
    void makeSound() {
        System.out.println("Bark");
    }
}

// Main class to test the behavior
public class InheritanceExample {
    public static void main(String[] args) {
        Animal genericAnimal = new Animal();
        Dog dog = new Dog();

        // Calling makeSound from each object
        genericAnimal.makeSound(); // Output: Meow
        dog.makeSound();           // Output: Bark
    }
}
