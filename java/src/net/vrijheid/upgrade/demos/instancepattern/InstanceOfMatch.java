package net.vrijheid.upgrade.demos.instancepattern;

public class InstanceOfMatch {

    public void varContains(Object obj){
        if(obj instanceof String str && str.equals("Maarten")){
            System.out.println("Value is a string and is the word 'Maarten' is present? " + str.contains("Maarten"));
        }
    }
}
