import java.io.*;
import java.net.*;

class TCPS {
    public static void main(String args[]) throws Exception {
        ServerSocket server = new ServerSocket(5678);

        while (true) {
            Socket connection = server.accept();

            BufferedReader fromClient = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String str = fromClient.readLine();

            boolean isPalindrome = checkPalindrome(str);

            String response = "String is " + (isPalindrome ? "" : "not ") + "a palindrome";
            System.out.println(response);
            System.out.println("Sending to client");

            DataOutputStream toClient = new DataOutputStream(connection.getOutputStream());
            toClient.writeUTF(response);
        }
    }

    private static boolean checkPalindrome(String str) {
        str = str.replaceAll("\\W", "").toLowerCase();
        int n = str.length();
        for (int i = 0; i < (n / 2); ++i) {
            if (str.charAt(i) != str.charAt(n - i - 1)) {
                return false;
            }
        }
        return true;
    }
}
