package org.apache.regexp;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
/* loaded from: classes3.dex */
public class RETest {
    static final boolean showSuccesses = false;
    String expr;
    RE r = new RE();
    REDebugCompiler compiler = new REDebugCompiler();
    char[] re1Instructions = {'|', 0, 26, '|', 0, '\r', 'A', 1, 4, 'a', '|', 0, 3, 'G', 0, 65526, '|', 0, 3, 'N', 0, 3, 'A', 1, 4, 'b', 'E'};
    REProgram re1 = new REProgram(this.re1Instructions);
    int n = 0;
    int failures = 0;

    void success(String str) {
    }

    public static void main(String[] strArr) {
        try {
            test();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean test() throws Exception {
        RETest rETest = new RETest();
        rETest.runAutomatedTests("docs/RETest.txt");
        return rETest.failures == 0;
    }

    public RETest() {
    }

    public RETest(String[] strArr) {
        try {
            if (strArr.length == 2) {
                runInteractiveTests(strArr[1]);
            } else if (strArr.length == 1) {
                runAutomatedTests(strArr[0]);
            } else {
                System.out.println("Usage: RETest ([-i] [regex]) ([/path/to/testfile.txt])");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    void runInteractiveTests(String str) {
        try {
            this.r.setProgram(this.compiler.compile(str));
            say(new StringBuffer("\n").append(str).append("\n").toString());
            this.compiler.dumpProgram(new PrintWriter(System.out));
            while (true) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
                System.out.print("> ");
                System.out.flush();
                if (this.r.match(bufferedReader.readLine())) {
                    say("Match successful.");
                } else {
                    say("Match failed.");
                }
                showParens(this.r);
            }
        } catch (Exception e2) {
            say(new StringBuffer("Error: ").append(e2.toString()).toString());
            e2.printStackTrace();
        }
    }

    void die(String str) {
        say(new StringBuffer("FATAL ERROR: ").append(str).toString());
        System.exit(0);
    }

    void fail(String str) {
        this.failures++;
        say("\n");
        say("*******************************************************");
        say("*********************  FAILURE!  **********************");
        say("*******************************************************");
        say("\n");
        say(str);
        say("");
        this.compiler.dumpProgram(new PrintWriter(System.out));
        say("\n");
    }

    void say(String str) {
        System.out.println(str);
    }

    void show() {
        say("\n-----------------------\n");
        say(new StringBuffer("Expression #").append(this.n).append(" \"").append(this.expr).append("\" ").toString());
    }

    void showParens(RE re) {
        for (int i = 0; i < re.getParenCount(); i++) {
            say(new StringBuffer("$").append(i).append(" = ").append(re.getParen(i)).toString());
        }
    }

    void runAutomatedTests(String str) throws Exception {
        String readLine;
        long currentTimeMillis = System.currentTimeMillis();
        RE re = new RE(this.re1);
        say("a*b");
        say(new StringBuffer("aaaab = ").append(re.match("aaab")).toString());
        showParens(re);
        say(new StringBuffer("b = ").append(re.match("b")).toString());
        showParens(re);
        say(new StringBuffer("c = ").append(re.match("c")).toString());
        showParens(re);
        say(new StringBuffer("ccccaaaaab = ").append(re.match("ccccaaaaab")).toString());
        showParens(re);
        String[] grep = new RE("x+").grep(new RE("a*b").split("xxxxaabxxxxbyyyyaaabzzz"));
        for (int i = 0; i < grep.length; i++) {
            System.out.println(new StringBuffer("s[").append(i).append("] = ").append(grep[i]).toString());
        }
        RE re2 = new RE("a*b");
        System.out.println(new StringBuffer("s = ").append(re2.subst("aaaabfooaaabgarplyaaabwackyb", "-")).toString());
        File file = new File(str);
        if (!file.exists()) {
            throw new Exception(new StringBuffer("Could not find: ").append(str).toString());
        }
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (bufferedReader.ready()) {
            try {
                while (bufferedReader.ready() && (readLine = bufferedReader.readLine()) != null) {
                    String trim = readLine.trim();
                    if (trim.startsWith("#")) {
                        break;
                    } else if (!trim.equals("")) {
                        System.out.println(new StringBuffer("Script error.  Line = ").append(trim).toString());
                        System.exit(0);
                    }
                }
                if (!bufferedReader.ready()) {
                    break;
                }
                this.expr = bufferedReader.readLine();
                this.n++;
                say("");
                say(new StringBuffer(String.valueOf(this.n)).append(". ").append(this.expr).toString());
                say("");
                try {
                    try {
                        re2.setProgram(this.compiler.compile(this.expr));
                    } catch (Error e2) {
                        fail(new StringBuffer("Compiler threw fatal error \"").append(e2.getMessage()).append("\"").toString());
                        e2.printStackTrace();
                    }
                } catch (Exception e3) {
                    if (bufferedReader.readLine().trim().equals("ERR")) {
                        say("   Match: ERR");
                        success(new StringBuffer("Produces an error (").append(e3.toString()).append("), as expected.").toString());
                    } else {
                        fail(new StringBuffer("Produces the unexpected error \"").append(e3.getMessage()).append("\"").toString());
                    }
                }
                String trim2 = bufferedReader.readLine().trim();
                say(new StringBuffer("   Match against: '").append(trim2).append("'").toString());
                if (trim2.equals("ERR")) {
                    fail("Was expected to be an error, but wasn't.");
                } else {
                    try {
                        try {
                            boolean match = re2.match(trim2);
                            String trim3 = bufferedReader.readLine().trim();
                            if (match) {
                                say("   Match: YES");
                                if (trim3.equals("NO")) {
                                    fail(new StringBuffer("Matched \"").append(trim2).append("\", when not expected to.").toString());
                                } else if (trim3.equals("YES")) {
                                    success(new StringBuffer("Matched \"").append(trim2).append("\", as expected:").toString());
                                    say(new StringBuffer("   Paren count: ").append(re2.getParenCount()).toString());
                                    for (int i2 = 0; i2 < re2.getParenCount(); i2++) {
                                        String trim4 = bufferedReader.readLine().trim();
                                        say(new StringBuffer("   Paren ").append(i2).append(" : ").append(re2.getParen(i2)).toString());
                                        if (!trim4.equals(re2.getParen(i2))) {
                                            fail(new StringBuffer("Register ").append(i2).append(" should be = \"").append(trim4).append("\", but is \"").append(re2.getParen(i2)).append("\" instead.").toString());
                                        }
                                    }
                                } else {
                                    die("Test script error!");
                                }
                            } else {
                                say("   Match: NO");
                                if (trim3.equals("YES")) {
                                    fail(new StringBuffer("Did not match \"").append(trim2).append("\", when expected to.").toString());
                                } else if (trim3.equals("NO")) {
                                    success(new StringBuffer("Did not match \"").append(trim2).append("\", as expected.").toString());
                                } else {
                                    die("Test script error!");
                                }
                            }
                        } catch (Exception e4) {
                            fail(new StringBuffer("Matcher threw exception: ").append(e4.toString()).toString());
                            e4.printStackTrace();
                        }
                    } catch (Error e5) {
                        fail(new StringBuffer("Matcher threw fatal error \"").append(e5.getMessage()).append("\"").toString());
                        e5.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
        bufferedReader.close();
        System.out.println(new StringBuffer("\n\nMatch time = ").append(System.currentTimeMillis() - currentTimeMillis).append(" ms.").toString());
        System.out.println(new StringBuffer("\nTests complete.  ").append(this.n).append(" tests, ").append(this.failures).append(" failure(s).").toString());
    }
}
