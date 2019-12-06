package za.ac.sun.cs.generex;

import com.mifmif.common.regex.Generex;

public class Main {

    public static void main(String[] args) {
        Generex generex = new Generex("[0-3]");
        
        String randomString = generex.random();
        
        System.out.println("Hello from generex!");
    }

}
