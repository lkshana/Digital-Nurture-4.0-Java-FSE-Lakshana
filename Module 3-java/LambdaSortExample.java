import java.util.*;

public class LambdaSortExample {
    public static void main(String[] args) {
        // Create a list of strings
        List<String> names = new ArrayList<>();
        names.add("Zara");
        names.add("John");
        names.add("Amy");
        names.add("Steve");

        // Sort the list using lambda expression
        Collections.sort(names, (a, b) -> a.compareToIgnoreCase(b));

        // Display the sorted list
        System.out.println("Sorted names:");
        for (String name : names) {
            System.out.println(name);
        }
    }
}
