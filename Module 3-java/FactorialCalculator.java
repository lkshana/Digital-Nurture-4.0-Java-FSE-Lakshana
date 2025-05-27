import java.util.Scanner;

public class FactorialCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // enter a non negative integer
        System.out.print("Enter a non-negative integer: ");
        int number = scanner.nextInt();

        // Check if the number is non-negative
        if (number < 0) {
            System.out.println("Invalid input. Please enter a non-negative integer.");
        } else {
            long factorial = 1; // using long to handle large results

            // Calculate factorial using for loop
            for (int i = 1; i <= number; i++) {
                factorial *= i;
            }

            // Displaying the result
            System.out.println("Factorial of " + number + " is: " + factorial);
        }

        scanner.close();
    }
}

