import java.util.Scanner;
public class repeat {
         public static void main(String[] args) {

                 // Prompt for text
                 System.out.println("Please enter in text: ");

                 // Put input into variable text
                 Scanner scanner = new Scanner(System.in);
                 String text = scanner.next();

             // Output the text
             System.out.println("This is your text: " + text);
         }
}
