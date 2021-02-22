package net.vrijheid.upgrade.demos.instancepattern;

import java.util.Arrays;

public class InstanceOfRunner {

    public static void main(String[] args) {
        //We use these to show below that we can test and assign based on the patter
        Address homeAddress = new Address("s1", "Rotterdam");
        Address officeAddress = new Address("s2", "Amsterdam");
        Employee employee = new Employee("Maarten", 101, Arrays.asList(homeAddress, officeAddress));

        Object obj = employee.getAddresses().get(0);
        //Using pattern variable for instanceof. And we can add more tests after that.
        //this is not unlike the concepts of guards when pattern matching in other
        //languages like Scala or Erlang.
        if(obj instanceof Address address && address.getCity().equals("Rotterdam")){
            System.out.println(address.getCity());
        }

        //We'll also show another use for pattern matching.
        var pm = new InstanceOfMatch();
        pm.varContains("Maarten");
    }
}
