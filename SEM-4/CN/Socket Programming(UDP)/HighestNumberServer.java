import java.io.*;
import java.net.*;

class UDPServer1{
  public static void main(String args[]) throws Exception {
    DatagramSocket serverSocket = new DatagramSocket(9876);
    byte[] receiveData = new byte[1024];
    byte[] sendData = new byte[1024];

    while(true) {
      DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
      serverSocket.receive(receivePacket);
      String sentence = new String(receivePacket.getData());
      System.out.println("RECEIVED: " + sentence);

      InetAddress IPAddress = receivePacket.getAddress();
      int port = receivePacket.getPort();

      // Find the highest number
      String[] inputArray = sentence.trim().split("\\s+");
      int[] numbers = new int[inputArray.length];
      for (int i = 0; i < inputArray.length; i++) {
        numbers[i] = Integer.parseInt(inputArray[i]);
      }

      int highestNumber = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        if (numbers[i] > highestNumber) {
          highestNumber = numbers[i];
        }
      }

      String capitalizedSentence = String.valueOf(highestNumber);
      sendData = capitalizedSentence.getBytes();
      DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, port);
      serverSocket.send(sendPacket);
    }
  }
}
