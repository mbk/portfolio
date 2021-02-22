package net.vrijheid.upgrade.demos.switchexpr;

//First, for backward compatibility, switch as you always knew it still works
//But....we're going to look at switch as expressions, where the switch acts
//as an expression and has a result. Switch expressions also do NOT have fallthrough
//semantics (Google it when in doubt). Let's take a look

public class SwitchExpressions {

    //We have this as method because otherwise the IDE detects that e.g. JANUARY
    //unreachable code is. It's static out of convenience, since we run only the
    //main method (also static).
    public static String getMonthName(){return "MARCH";}

    public static void main(String[] args) {
        //Note how we use vars to make the code more readable
        var monthName = getMonthName();

        //This where we see the switch expressions full power
        //In a way it acts more as an inner function with 1 parameter

        var qName = switch (monthName) {

            //Note that we don't rely on fallthrough (with break after MARCH) but
            //we have multiple case, an arrow and a code block. Syntactically not
            //that different from lambdas.
            case "JANUARY", "FEBRUARY", "MARCH" -> {
                //i is local to this case code block, so not visible
                //in another case code block. It's sole reason for being here
                //is to make that point.
                int i=10;
                System.out.println("First Quarter");
                //yield is the way to return a value from a case, not return.
                //return would immediately exit the method, and you may have
                //other business logic that comes after the switch expression.
                yield "Q1";
            }
            case "APRIL", "MAY", "JUNE" -> {
                yield "Q2";
            }
            default -> "Invalid Month";
        };
        //And we can do this because we yield, not return. Otherwise the code
        //below would be unreachable...
        System.out.println("Qname using switch expressions: " + qName);
    }
}
