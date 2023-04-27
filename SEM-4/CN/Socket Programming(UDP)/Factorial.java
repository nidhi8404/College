import java.io.*;
import java.net.*;

class UDPs{
    public static int factorial(int n) {
        if (n == 0) {
            return 1;
        }
        return n * factorial(n-1);
    }

    public static void main(String args[]) throws Exception{
        DatagramSocket serverSocket= new DatagramSocket(9876);
        byte[] receiveData= new byte[1024];
        byte[] sendData= new byte[1024];
        while(true){
            DatagramPacket receivePacket= new DatagramPacket(receiveData, receiveData.length);
            serverSocket.receive(receivePacket);
            String sentence= new String(receivePacket.getData());
            System.out.println("RECEIVED: "+ sentence);
            InetAddress IPAddress= receivePacket.getAddress();
            int port= receivePacket.getPort();
            int n = Integer.parseInt(sentence.trim());
            int result = factorial(n);
            String response = "Factorial of " + n + " is " + result;
            sendData = response.getBytes();
            DatagramPacket sendPacket= new DatagramPacket(sendData,sendData.length, IPAddress, port);
            serverSocket.send(sendPacket);
        }
    }
}
