import java.io.*;
import java.net.*;

class UDPClient1{
  public static void main(String args[]) throws Exception {
    BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
    DatagramSocket clientSocket = new DatagramSocket();
    InetAddress IPAddress = InetAddress.getByName("localhost");
    byte[] sendData = new byte[1024];
    byte[] receiveData = new byte[1024];

    // Get input array from user
    System.out.print("Enter numbers separated by space: ");
    String input = inFromUser.readLine();
    String[] inputArray = input.split("\\s+");

    // Convert input array to int array
    int[] numbers = new int[inputArray.length];
    for (int i = 0; i < inputArray.length; i++) {
      numbers[i] = Integer.parseInt(inputArray[i]);
    }

    // Find the highest number
    int highestNumber = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > highestNumber) {
        highestNumber = numbers[i];
      }
    }

    String sentence = String.valueOf(highestNumber);
    sendData = sentence.getBytes();
    DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 9876);
    clientSocket.send(sendPacket);

    DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
    clientSocket.receive(receivePacket);
    String modifiedSentence = new String(receivePacket.getData());
    System.out.println("FROM SERVER: " + modifiedSentence);

    clientSocket.close();
  }
}
