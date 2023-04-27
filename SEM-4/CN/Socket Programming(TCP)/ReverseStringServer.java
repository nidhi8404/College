import java.io.*;
import java.net.*;

class TCPS {
    public static void main(String args[]) throws Exception {
        String str;
        StringBuilder reverseStr;

        ServerSocket server = new ServerSocket(5678);

        while (true) {
            Socket connection = server.accept();

            DataInputStream fromClient = new DataInputStream(connection.getInputStream());
            str = fromClient.readUTF();

            reverseStr = new StringBuilder(str).reverse();

            System.out.println("Original String: " + str);
            System.out.println("Reversed String: " + reverseStr.toString());
            System.out.println("Sending to client");

            DataOutputStream toClient = new DataOutputStream(connection.getOutputStream());
            toClient.writeUTF(reverseStr.toString());
        }
    }
}
