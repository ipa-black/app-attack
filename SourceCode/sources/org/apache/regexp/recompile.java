package org.apache.regexp;
/* loaded from: classes3.dex */
public class recompile {
    public static void main(String[] strArr) {
        RECompiler rECompiler = new RECompiler();
        if (strArr.length <= 0 || strArr.length % 2 != 0) {
            System.out.println("Usage: recompile <patternname> <pattern>");
            System.exit(0);
        }
        for (int i = 0; i < strArr.length; i += 2) {
            try {
                String str = strArr[i];
                String str2 = strArr[i + 1];
                String stringBuffer = new StringBuffer(String.valueOf(str)).append("PatternInstructions").toString();
                System.out.print(new StringBuffer("\n    // Pre-compiled regular expression '").append(str2).append("'\n").append("    private static char[] ").append(stringBuffer).append(" = \n    {").toString());
                char[] instructions = rECompiler.compile(str2).getInstructions();
                for (int i2 = 0; i2 < instructions.length; i2++) {
                    if (i2 % 7 == 0) {
                        System.out.print("\n        ");
                    }
                    String hexString = Integer.toHexString(instructions[i2]);
                    while (hexString.length() < 4) {
                        hexString = new StringBuffer("0").append(hexString).toString();
                    }
                    System.out.print(new StringBuffer("0x").append(hexString).append(", ").toString());
                }
                System.out.println("\n    };");
                System.out.println(new StringBuffer("\n    private static RE ").append(str).append("Pattern = new RE(new REProgram(").append(stringBuffer).append("));").toString());
            } catch (Error e2) {
                System.out.println(new StringBuffer("Internal error: ").append(e2.toString()).toString());
            } catch (RESyntaxException e3) {
                System.out.println(new StringBuffer("Syntax error in expression \"").append(strArr[i]).append("\": ").append(e3.toString()).toString());
            } catch (Exception e4) {
                System.out.println(new StringBuffer("Unexpected exception: ").append(e4.toString()).toString());
            }
        }
    }
}
