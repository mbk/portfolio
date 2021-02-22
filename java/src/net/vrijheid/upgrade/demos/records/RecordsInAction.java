package net.vrijheid.upgrade.demos.records;

import java.util.Arrays;
import java.util.List;

//Here we demo records, which are classes that only contains fields (data carriers)
//The compiler generates equals, hashcode and the getters (boilerplate!). Our code
//becomes compact - especially with compared to say, java7. Now we have instanceof,
//enhanced for loops, var, and records. This will make for better designs and
//easier maintenance.

//Country  Record
record Country(String countryCode, int numberOfCitizens, List<City> cities){
//The only thing you can add to records are static fields or methods
//I'm showing it here, but in my personal opinion it's best to keep records "as is"
//so they are as purely modeling your data as can be.
static  int statues = 1000;
}
//City Record - just a record as is
record City(String name, int numberOfCitizens){}

public class RecordsInAction {

    public static void main(String[] args) {
        var c1 = new City("Amsterdam", 800000);
        var c2 = new City("Rotterdam", 600000);
        var country = new Country("nl_NL", 17000000, Arrays.asList(c1, c2));

        System.out.println("City name is -->" + country.cities().get(0).name());
    }
}
