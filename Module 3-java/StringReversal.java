import java.util.Scanner;

public class StringReversal {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        //Enter the string to be reversed
        System.out.print("Enter a string: ");
        String input = scanner.nextLine();

        // Reverse the string using a loop
        String reversed = "";
        for (int i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }

        System.out.println("Reversed string (using loop): " + reversed);

        

        scanner.close();
    }
}
