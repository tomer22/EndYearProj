import java.util.Scanner;

public class starter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("What gym do you have access to?");
        System.out.println("1. Home Gym");
        System.out.println("2. Commercial Gym");

        int gymChoice = scanner.nextInt();

        if (gymChoice == 1) {
            System.out.println("What type of equipment do you have?");
            // options for equipment yet to be implemented because I will write a separate class for each equipment with instance variables and methods like equipment
            // name, movement type, target muscle, time: sets*(time per set) + ((sets-1) * time per rest), and similar equipment types it goes along with via a
            // compareTo or simply by movement type and target muscle
        } else if (gymChoice == 2) {
                System.out.println("\nWhat body parts would you like to focus on in terms of a push, pull, legs split?");
                System.out.println("1. Push:");
                System.out.println("2. Pull:");
                System.out.println("3. Legs:");

                int split = scanner.nextInt();

                //write workouts
                if (split == 1) {
                    System.out.println("\nPush Workout:");
                } else if (split == 2) {
                    System.out.println("\nPull Workout:");
                } else if (split == 3) {
                    System.out.println("\nLegs Workout:");
                } else {
                    System.out.println("\nNot one of the listed choices");
                }
            }
          else {
            System.out.println("\nChoice not listed");
        }
    }
}

