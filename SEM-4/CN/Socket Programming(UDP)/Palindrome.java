import java.io.*;
import java.net.*;
import java.util.Arrays;

class UDPClient{
    public static void main(String args[]) throws Exception
    {
        BufferedReader inFromUser = new BufferedReader (new InputStreamReader(System.in));
        DatagramSocket clientSocket= new DatagramSocket();
        InetAddress IPAddress= InetAddress.getByName("localhost");
        byte[] sendData= new byte[1024];
        byte[] receiveData= new byte[1024];
        String sentence= inFromUser.readLine();
        sendData = sentence.getBytes();
        DatagramPacket sendPacket= new DatagramPacket(sendData,sendData.length, IPAddress, 9876);
        clientSocket.send(sendPacket);
        DatagramPacket receivePacket= new DatagramPacket(receiveData, receiveData.length);
        clientSocket.receive(receivePacket);
        String modifiedSentence = new String(receivePacket.getData());
        String reverseSentence = new StringBuilder(sentence).reverse().toString();
        if(sentence.equals(reverseSentence)){
            System.out.println("The input string is a palindrome.");
        }else{
            System.out.println("The input string is not a palindrome.");
        }
        clientSocket.close();
    }
}
