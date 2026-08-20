package org.apache.regexp;

import java.io.PrintWriter;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class REDebugCompiler extends RECompiler {
    static Hashtable hashOpcode;

    static {
        Hashtable hashtable = new Hashtable();
        hashOpcode = hashtable;
        hashtable.put(new Integer(56), "OP_RELUCTANTSTAR");
        hashOpcode.put(new Integer(61), "OP_RELUCTANTPLUS");
        hashOpcode.put(new Integer(47), "OP_RELUCTANTMAYBE");
        hashOpcode.put(new Integer(69), "OP_END");
        hashOpcode.put(new Integer(94), "OP_BOL");
        hashOpcode.put(new Integer(36), "OP_EOL");
        hashOpcode.put(new Integer(46), "OP_ANY");
        hashOpcode.put(new Integer(91), "OP_ANYOF");
        hashOpcode.put(new Integer(124), "OP_BRANCH");
        hashOpcode.put(new Integer(65), "OP_ATOM");
        hashOpcode.put(new Integer(42), "OP_STAR");
        hashOpcode.put(new Integer(43), "OP_PLUS");
        hashOpcode.put(new Integer(63), "OP_MAYBE");
        hashOpcode.put(new Integer(78), "OP_NOTHING");
        hashOpcode.put(new Integer(71), "OP_GOTO");
        hashOpcode.put(new Integer(92), "OP_ESCAPE");
        hashOpcode.put(new Integer(40), "OP_OPEN");
        hashOpcode.put(new Integer(41), "OP_CLOSE");
        hashOpcode.put(new Integer(35), "OP_BACKREF");
        hashOpcode.put(new Integer(80), "OP_POSIXCLASS");
    }

    String opcodeToString(char c2) {
        String str = (String) hashOpcode.get(new Integer(c2));
        return str == null ? "OP_????" : str;
    }

    String charToString(char c2) {
        if (c2 < ' ' || c2 > 127) {
            return new StringBuffer("\\").append((int) c2).toString();
        }
        return String.valueOf(c2);
    }

    String nodeToString(int i) {
        char c2 = this.instruction[i];
        return new StringBuffer(String.valueOf(opcodeToString(c2))).append(", opdata = ").append((int) this.instruction[i + 1]).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    public void dumpProgram(PrintWriter printWriter) {
        int i;
        for (short s = 0; s < this.lenInstruction; s = i) {
            char c2 = this.instruction[s];
            char c3 = this.instruction[s + 1];
            short s2 = (short) this.instruction[s + 2];
            printWriter.print(new StringBuffer(String.valueOf((int) s)).append(". ").append(nodeToString(s)).append(", next = ").toString());
            if (s2 == 0) {
                printWriter.print("none");
            } else {
                printWriter.print(s2 + s);
            }
            i = s + 3;
            if (c2 == '[') {
                printWriter.print(", [");
                for (int i2 = 0; i2 < c3; i2++) {
                    int i3 = i + 1;
                    char c4 = this.instruction[i];
                    i += 2;
                    char c5 = this.instruction[i3];
                    if (c4 == c5) {
                        printWriter.print(charToString(c4));
                    } else {
                        printWriter.print(new StringBuffer(String.valueOf(charToString(c4))).append("-").append(charToString(c5)).toString());
                    }
                }
                printWriter.print("]");
            }
            if (c2 == 'A') {
                printWriter.print(", \"");
                while (true) {
                    ?? r2 = c3 - 1;
                    if (c3 == 0) {
                        break;
                    }
                    printWriter.print(charToString(this.instruction[i]));
                    c3 = r2;
                    i++;
                }
                printWriter.print("\"");
            }
            printWriter.println("");
        }
    }
}
