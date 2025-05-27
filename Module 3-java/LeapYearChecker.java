import java.util.Scanner;

public class LeapYearChecker {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // input the year
        System.out.print("Enter a year: ");
        int year = scanner.nextInt();

        // check if the year is leap year by dividing it by 4(year % 4 == 0), 100(year % 100 != 0), and 400(year % 400 == 0)
         if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
            System.out.println(year + " is a leap year.");
        } else {
            System.out.println(year + " is not a leap year.");
        }
        scanner.close();
    }
}

