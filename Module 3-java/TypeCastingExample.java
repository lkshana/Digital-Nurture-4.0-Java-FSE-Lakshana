public class TypeCastingExample {
    public static void main(String[] args) {
        // Declare a double variable with a decimal value
        double decimalValue = 9.75;

        // Cast double value to int 
        int intValue = (int) decimalValue;

        // Display the result
        System.out.println("Double value: " + decimalValue);
        System.out.println("After casting to int: " + intValue);

        // Declare an int variable
        int wholeNumber = 15;

        // Cast int to double 
        double convertedDouble = (double) wholeNumber;

        // Display the result
        System.out.println("Int value: " + wholeNumber);
        System.out.println("After casting to double: " + convertedDouble);
    }
}
