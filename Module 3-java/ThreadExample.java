// Define a class that implements Runnable
class MessagePrinter implements Runnable {
    private String message;

    public MessagePrinter(String message) {
        this.message = message;
    }

    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println(message + " - " + i);
            try {
                Thread.sleep(500); // pause for 500ms
            } catch (InterruptedException e) {
                System.out.println("Thread interrupted.");
            }
        }
    }
}

public class ThreadExample {
    public static void main(String[] args) {
        // Create Runnable objects
        Runnable task1 = new MessagePrinter("Hello from Thread 1");
        Runnable task2 = new MessagePrinter("Hello from Thread 2");

        // Create Thread objects
        Thread thread1 = new Thread(task1);
        Thread thread2 = new Thread(task2);

        // Start threads
        thread1.start();
        thread2.start();
    }
}
