package net.vrijheid.upgrade.demos.textblock;

public class TextBlockVariations {

    public static void main(String[] args) {

        //The old way of doing things
       String myStr = "<html>\n" +
               "\t<body>\n" +
               "\t\t<h1>This is a Text Block Example from Java 14</h1>\n" +
               "\t</body>\n" +
               "</html> ";
        //by using triple quotes, formatting is preserved.
        //Little gotcha: the quotes HAVE to be followed by a new line
       String str =
               """
               <html>
               	<body>
               		<h1>This is a Text Block Example from Java 14</h1>
               	</body>
               </html>\s\s\s""";

       // bij adding the \ at the end of the line, the newline disappears
       //and it becomes one long line
       String largeString = """
               Lorem ipsum dolor sit amet, sea bonorum laoreet ea. \
               Eu pro amet tota justo, eam et agam feugiat admodum, \
               malis decore facilisi id nam
               """;

       String sl = "Maarten";

       String tb = """
               Maarten""";
       //This is true, as both string literals and text blocks are compiled to strings
        System.out.println(sl.equals(tb));
        //And you can use text blocks directly in prints as well
        System.out.println("""
                this is a text block""");
    }
}
