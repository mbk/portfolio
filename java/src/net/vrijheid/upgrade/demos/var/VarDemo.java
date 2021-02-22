package net.vrijheid.upgrade.demos.var;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.stream.Stream;

public class VarDemo {

    //We just put all the logic in the constructor, as we're just demoing use cases
    public  VarDemo(){
       //type inference based on the right hand side.
        var a = "Hello Var" ;
        System.out.println(a);
        //var is not a keyword
        var var = "a var named var";
        System.out.println(var);
        //use var inside a try
        //createTempFile might throw an IO exception
        try(var i = new BufferedReader(new FileReader(File.createTempFile("test", "txt")))){
            //Do something. Useless, but the point is the var inside the try
            System.out.println("we've created a temp file and assigned it to a var: " + i);
        } catch (Exception e){
            e.printStackTrace();
        }
        //Use it inside a for loop. Notice how we also use the var for the list.
        var intList = List.of(1,2,3,4,5);
        for(var i: intList){
            System.out.println(i);
        }
        //For array creation:
        var arr = new int[10];
        System.out.println("an array created and assigned to a var: " + arr);
        //ternary operators. Notice how we don't have to declare a common supertype of List and Set
        var evenOrOdds = (new Random().nextInt(10) > 5) ? List.of(1,3,5) : Set.of(2,4,6);
        //Notice how we can even print out evenOrOdds
        System.out.println(evenOrOdds);
        //or with a var'ed for loop
        for(var value : evenOrOdds){
            System.out.println(value);
        }
        //...and with streams. We do a map and use a method reference to show off
        var intStream = Stream.of(1,2,3,4,5);
        intStream.map(x -> x * 2).forEach(System.out::println);
        final var r = "You can even declare vars as final";
        System.out.println(r);
    }


}