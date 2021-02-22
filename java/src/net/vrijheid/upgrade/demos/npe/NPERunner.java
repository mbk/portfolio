package net.vrijheid.upgrade.demos.npe;

import java.util.Arrays;

//This class functions as our main class to demonstrate what happens with the new,
// informative NPEs
public class NPERunner {

    public static void main(String[] args) {
        //We'll give home address's city a null value
        //The NPE thus generated will clearly show where it (the NPE~) occurred.
        //This makes debugging so much easier for developers
        Address homeAddress = new Address("s1", null);
        Address officeAddress = new Address("s2", "Delhi");
        Employee employee = new Employee("Ajay", 101, Arrays.asList(homeAddress, officeAddress));

        String city = employee.getAddresses().get(0).getCity().toUpperCase();
        System.out.println(city);
    }
}
