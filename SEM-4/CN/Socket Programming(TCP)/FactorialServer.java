import java.io.*;
import java.net.*;

class TCPS{
    public static void main(String args[]) throws Exception{
        int num, fact = 1;

        ServerSocket server = new ServerSocket(5678);

        while(true){
            Socket connection = server.accept();

            DataInputStream fromClient = new DataInputStream(connection.getInputStream());
            num = fromClient.readInt();

            for(int i=1; i<=num; i++) {
                fact *= i;
            }
            
            System.out.println(num +"! = "+ fact);
            System.out.println("Sending to client");
            
            DataOutputStream toClient = new DataOutputStream(connection.getOutputStream());
            toClient.writeInt(fact);
        }
    }
}
