import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class FileWritingExample {
    public static void main(String[] args) {
        // Try-with-resources for Scanner
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.print("Enter a string to write to the file: ");
            String userInput = scanner.nextLine();

            // Try-with-resources for FileWriter (auto-close)
            try (FileWriter writer = new FileWriter("output.txt")) {
                writer.write(userInput);
                System.out.println("Data has been written to output.txt");
            } catch (IOException e) {
                System.out.println("An error occurred while writing to the file: " + e.getMessage());
            }

        }
    }
}
