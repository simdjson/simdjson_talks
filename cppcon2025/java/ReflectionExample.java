import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ReflectionExample {
    public static void main(String[] args) {
        try {
            // Get the class object
            Class<?> playerClass = Player.class;

            // Create an instance of the class
            Object playerInstance = playerClass.getDeclaredConstructor().newInstance();

            // Access a private field
            Field nameField = playerClass.getDeclaredField("name");
            nameField.setAccessible(true); // Allow access to private field
            nameField.set(playerInstance, "Bob");

            // Invoke a method
            Method showInfoMethod = playerClass.getDeclaredMethod("showInfo");
            showInfoMethod.invoke(playerInstance);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

class Player {
    private String name;

    public Player() {
        this.name = "Unknown";
    }

    public void showInfo() {
        System.out.println("Player name: " + name);
    }
}
