import java.io.*;
import java.net.*;
import java.util.Scanner;

class TCPC {
    public static void main(String args[]) throws Exception {
        String str, reversedStr;

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a String : ");
        str = sc.nextLine();

        Socket client = new Socket("localhost", 5678);

        DataOutputStream toServer = new DataOutputStream(client.getOutputStream());
        toServer.writeUTF(str);

        DataInputStream fromServer = new DataInputStream(client.getInputStream());
        reversedStr = fromServer.readUTF();

        System.out.println("Original String : " + str);
        System.out.println("Reversed String : " + reversedStr);

        client.close();
    }
}
