import java.util.Scanner;
import java.util.Random;

public class NumberGuessingGame {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int target = new Random().nextInt(100) + 1;
        int guess;

        System.out.println("Guess a number between 1 and 100:");

        do {
            System.out.print("Your guess: ");
            guess = scanner.nextInt();

            if (guess < 1 || guess > 100) {
                System.out.println("Enter a number between 1 and 100.");
            } else if (guess < target) {
                System.out.println("Too low!");
            } else if (guess > target) {
                System.out.println("Too high!");
            } else {
                System.out.println("Correct! The number was " + target);
            }
        } while (guess != target);

        scanner.close();
    }
}
