// Define the Car class
class Car {
    String make;
    String model;
    int year;

   
    Car(String make, String model, int year) {
        this.make = make;
        this.model = model;
        this.year = year;
    }

    void displayDetails() {
        System.out.println("Car Make: " + make);
        System.out.println("Car Model: " + model);
        System.out.println("Manufacturing Year: " + year);
    }
}

public class CarDemo {
    public static void main(String[] args) {
       
        Car car1 = new Car("Toyota", "Camry", 2020);
        Car car2 = new Car("Honda", "Civic", 2018);

     
        System.out.println("Details of Car 1:");
        car1.displayDetails();

        System.out.println("\nDetails of Car 2:");
        car2.displayDetails();
    }
}

