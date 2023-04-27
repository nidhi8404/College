import java.io.*;
import java.net.*;
import java.util.Scanner;

class TCPC {
    public static void main(String args[]) throws Exception {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str = sc.nextLine();

        Socket client = new Socket("localhost", 5678);

        DataOutputStream toServer = new DataOutputStream(client.getOutputStream());
        toServer.writeBytes(str + '\n');

        BufferedReader fromServer = new BufferedReader(new InputStreamReader(client.getInputStream()));
        String response = fromServer.readLine();

        System.out.println(response);

        client.close();
    }
}
