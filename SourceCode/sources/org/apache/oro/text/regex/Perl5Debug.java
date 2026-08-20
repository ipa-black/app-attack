package org.apache.oro.text.regex;
/* loaded from: classes3.dex */
public final class Perl5Debug {
    private Perl5Debug() {
    }

    static void _printOperator(char[] cArr, int i, StringBuffer stringBuffer) {
        String str;
        String str2;
        String str3;
        stringBuffer.append(":");
        switch (cArr[i]) {
            case 0:
                str = "END";
                break;
            case 1:
                str = "BOL";
                break;
            case 2:
                str = "MBOL";
                break;
            case 3:
                str = "SBOL";
                break;
            case 4:
                str = "EOL";
                break;
            case 5:
                str = "MEOL";
                break;
            case 6:
            case '%':
            case '/':
            case '0':
            case '1':
            default:
                stringBuffer.append("Operator is unrecognized.  Faulty expression code!");
                str = null;
                break;
            case 7:
                str = "ANY";
                break;
            case '\b':
                str = "SANY";
                break;
            case '\t':
                str = "ANYOF";
                break;
            case '\n':
                str2 = "CURLY {";
                stringBuffer.append(str2);
                stringBuffer.append((int) OpCode._getArg1(cArr, i));
                stringBuffer.append(',');
                stringBuffer.append((int) OpCode._getArg2(cArr, i));
                stringBuffer.append('}');
                str = null;
                break;
            case 11:
                str2 = "CURLYX {";
                stringBuffer.append(str2);
                stringBuffer.append((int) OpCode._getArg1(cArr, i));
                stringBuffer.append(',');
                stringBuffer.append((int) OpCode._getArg2(cArr, i));
                stringBuffer.append('}');
                str = null;
                break;
            case '\f':
                str = "BRANCH";
                break;
            case '\r':
                str = "BACK";
                break;
            case 14:
                str = "EXACTLY";
                break;
            case 15:
                str = "NOTHING";
                break;
            case 16:
                str = "STAR";
                break;
            case 17:
                str = "PLUS";
                break;
            case 18:
                str = "ALNUM";
                break;
            case 19:
                str = "NALNUM";
                break;
            case 20:
                str = "BOUND";
                break;
            case 21:
                str = "NBOUND";
                break;
            case 22:
                str = "SPACE";
                break;
            case 23:
                str = "NSPACE";
                break;
            case 24:
                str = "DIGIT";
                break;
            case 25:
                str = "NDIGIT";
                break;
            case 26:
                str3 = "REF";
                stringBuffer.append(str3);
                stringBuffer.append((int) OpCode._getArg1(cArr, i));
                str = null;
                break;
            case 27:
                str3 = "OPEN";
                stringBuffer.append(str3);
                stringBuffer.append((int) OpCode._getArg1(cArr, i));
                str = null;
                break;
            case 28:
                str3 = "CLOSE";
                stringBuffer.append(str3);
                stringBuffer.append((int) OpCode._getArg1(cArr, i));
                str = null;
                break;
            case 29:
                str = "MINMOD";
                break;
            case 30:
                str = "GBOL";
                break;
            case 31:
                str = "IFMATCH";
                break;
            case ' ':
                str = "UNLESSM";
                break;
            case '!':
                str = "SUCCEED";
                break;
            case '\"':
                str = "WHILEM";
                break;
            case '#':
                str = "ANYOFUN";
                break;
            case '$':
                str = "NANYOFUN";
                break;
            case '&':
                str = "ALPHA";
                break;
            case '\'':
                str = "BLANK";
                break;
            case '(':
                str = "CNTRL";
                break;
            case ')':
                str = "GRAPH";
                break;
            case '*':
                str = "LOWER";
                break;
            case '+':
                str = "PRINT";
                break;
            case ',':
                str = "PUNCT";
                break;
            case '-':
                str = "UPPER";
                break;
            case '.':
                str = "XDIGIT";
                break;
            case '2':
                str = "ALNUMC";
                break;
            case '3':
                str = "ASCII";
                break;
        }
        if (str != null) {
            stringBuffer.append(str);
        }
    }

    public static String printProgram(Perl5Pattern perl5Pattern) {
        char[] cArr = perl5Pattern._program;
        StringBuffer stringBuffer = new StringBuffer();
        char c2 = 27;
        int i = 1;
        while (c2 != 0) {
            c2 = cArr[i];
            stringBuffer.append(i);
            _printOperator(cArr, i, stringBuffer);
            int _getNext = OpCode._getNext(cArr, i);
            int i2 = i + OpCode._operandLength[c2];
            stringBuffer.append(new StringBuffer("(").append(_getNext).append(")").toString());
            int i3 = i2 + 2;
            if (c2 == '\t') {
                i = i2 + 18;
            } else {
                if (c2 == '#' || c2 == '$') {
                    while (true) {
                        char c3 = cArr[i3];
                        if (c3 == 0) {
                            break;
                        }
                        i3 = c3 == '%' ? i3 + 3 : i3 + 2;
                    }
                    i3++;
                } else if (c2 == 14) {
                    int i4 = i2 + 3;
                    stringBuffer.append(" <");
                    while (true) {
                        char c4 = cArr[i4];
                        if (c4 == 65535) {
                            break;
                        }
                        stringBuffer.append(c4);
                        i4++;
                    }
                    stringBuffer.append(">");
                    i = i4 + 1;
                }
                i = i3;
            }
            stringBuffer.append('\n');
        }
        if (perl5Pattern._startString != null) {
            stringBuffer.append(new StringBuffer("start `").append(new String(perl5Pattern._startString)).append("' ").toString());
        }
        if (perl5Pattern._startClassOffset != -1) {
            stringBuffer.append("stclass `");
            _printOperator(cArr, perl5Pattern._startClassOffset, stringBuffer);
            stringBuffer.append("' ");
        }
        if ((perl5Pattern._anchor & 3) != 0) {
            stringBuffer.append("anchored ");
        }
        if ((perl5Pattern._anchor & 4) != 0) {
            stringBuffer.append("plus ");
        }
        if ((perl5Pattern._anchor & 8) != 0) {
            stringBuffer.append("implicit ");
        }
        if (perl5Pattern._mustString != null) {
            stringBuffer.append(new StringBuffer("must have \"").append(new String(perl5Pattern._mustString)).append("\" back ").append(perl5Pattern._back).append(" ").toString());
        }
        stringBuffer.append(new StringBuffer("minlen ").append(perl5Pattern._minLength).append('\n').toString());
        return stringBuffer.toString();
    }
}
