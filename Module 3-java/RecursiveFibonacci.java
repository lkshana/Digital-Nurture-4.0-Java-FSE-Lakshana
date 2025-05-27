import java.util.Scanner;

public class RecursiveFibonacci {

    // Recursive method to calculate nth Fibonacci number
    public static int fibonacci(int n) {
        if (n == 1) {
            return 0;  // First Fibonacci number is 0
        } else if (n == 2) {
            return 1;  // Second Fibonacci number is 1
        } else {
            return fibonacci(n - 1) + fibonacci(n - 2);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Prompt user for positive integer n
        System.out.print("Enter a positive integer (n): ");
        int n = scanner.nextInt();

        if (n <= 0) {
            System.out.println("Please enter a positive integer greater than 0.");
        } else {
            int result = fibonacci(n);
            System.out.println("The " + n + "th Fibonacci number is: " + result);
        }

        scanner.close();
    }
}
