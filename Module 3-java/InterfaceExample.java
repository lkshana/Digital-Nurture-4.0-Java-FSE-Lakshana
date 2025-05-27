// Define the interface
interface Playable {
    void play();
}

// Implementing class: Guitar
class Guitar implements Playable {
    public void play() {
        System.out.println("Strumming the guitar.");
    }
}

// Implementing class: Piano
class Piano implements Playable {
    public void play() {
        System.out.println("Playing the piano.");
    }
}

// Main class to test the implementation
public class InterfaceExample {
    public static void main(String[] args) {
        Playable guitar = new Guitar();
        Playable piano = new Piano();

        guitar.play(); // Output: Strumming the guitar.
        piano.play();  // Output: Playing the piano.
    }
}
