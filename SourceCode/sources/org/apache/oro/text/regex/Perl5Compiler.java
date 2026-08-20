package org.apache.oro.text.regex;

import java.util.HashMap;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
public final class Perl5Compiler implements PatternCompiler {
    public static final int CASE_INSENSITIVE_MASK = 1;
    public static final int DEFAULT_MASK = 0;
    public static final int EXTENDED_MASK = 32;
    public static final int MULTILINE_MASK = 8;
    public static final int READ_ONLY_MASK = 32768;
    public static final int SINGLELINE_MASK = 16;
    private static final char __CASE_INSENSITIVE = 1;
    private static final char __EXTENDED = ' ';
    private static final char __GLOBAL = 2;
    private static final String __HEX_DIGIT = "0123456789abcdef0123456789ABCDEFx";
    private static final char __KEEP = 4;
    private static final char __MULTILINE = '\b';
    private static final int __NONNULL = 1;
    private static final char __READ_ONLY = 32768;
    private static final int __SIMPLE = 2;
    private static final char __SINGLELINE = 16;
    private static final int __SPSTART = 4;
    private static final int __TRYAGAIN = 8;
    private static final int __WORSTCASE = 0;
    private static final HashMap __hashPOSIX;
    private int __cost;
    private CharStringPointer __input;
    private char[] __modifierFlags = {0};
    private int __numParentheses;
    private char[] __program;
    private int __programSize;
    private boolean __sawBackreference;

    static {
        HashMap hashMap = new HashMap();
        __hashPOSIX = hashMap;
        hashMap.put("alnum", new Character('2'));
        hashMap.put("word", new Character((char) 18));
        hashMap.put("alpha", new Character(Typography.amp));
        hashMap.put("blank", new Character('\''));
        hashMap.put("cntrl", new Character('('));
        hashMap.put("digit", new Character((char) 24));
        hashMap.put("graph", new Character(')'));
        hashMap.put("lower", new Character('*'));
        hashMap.put("print", new Character('+'));
        hashMap.put("punct", new Character(','));
        hashMap.put("space", new Character((char) 22));
        hashMap.put("upper", new Character('-'));
        hashMap.put("xdigit", new Character('.'));
        hashMap.put("ascii", new Character('3'));
    }

    private int __emitArgNode(char c2, char c3) {
        int i = this.__programSize;
        char[] cArr = this.__program;
        if (cArr == null) {
            this.__programSize = i + 3;
        } else {
            cArr[i] = c2;
            cArr[i + 1] = 0;
            this.__programSize = i + 3;
            cArr[i + 2] = c3;
        }
        return i;
    }

    private void __emitCode(char c2) {
        char[] cArr = this.__program;
        if (cArr != null) {
            cArr[this.__programSize] = c2;
        }
        this.__programSize++;
    }

    private int __emitNode(char c2) {
        int i = this.__programSize;
        char[] cArr = this.__program;
        if (cArr == null) {
            this.__programSize = i + 2;
        } else {
            cArr[i] = c2;
            this.__programSize = i + 2;
            cArr[i + 1] = 0;
        }
        return i;
    }

    private char __getNextChar() {
        char _postIncrement = this.__input._postIncrement();
        while (true) {
            char _getValue = this.__input._getValue();
            if (_getValue == '(' && this.__input._getValueRelative(1) == '?' && this.__input._getValueRelative(2) == '#') {
                while (_getValue != 65535 && _getValue != ')') {
                    _getValue = this.__input._increment();
                }
            } else if ((this.__modifierFlags[0] & __EXTENDED) == 0) {
                break;
            } else if (!Character.isWhitespace(_getValue)) {
                if (_getValue != '#') {
                    break;
                }
                while (_getValue != 65535 && _getValue != '\n') {
                    _getValue = this.__input._increment();
                }
            } else {
                continue;
            }
            this.__input._increment();
        }
        return _postIncrement;
    }

    private static boolean __isComplexRepetitionOp(char[] cArr, int i) {
        if (i >= cArr.length || i < 0) {
            return false;
        }
        char c2 = cArr[i];
        return c2 == '*' || c2 == '+' || c2 == '?' || (c2 == '{' && __parseRepetition(cArr, i));
    }

    private static boolean __isSimpleRepetitionOp(char c2) {
        return c2 == '*' || c2 == '+' || c2 == '?';
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
        __emitNode(15);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int __parseAlternation(int[] r8) throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            r7 = this;
            r0 = 0
            r8[r0] = r0
            r1 = 12
            int r1 = r7.__emitNode(r1)
            org.apache.oro.text.regex.CharStringPointer r2 = r7.__input
            int r2 = r2._getOffset()
            r3 = -1
            if (r2 != 0) goto L18
            org.apache.oro.text.regex.CharStringPointer r2 = r7.__input
            r2._setOffset(r3)
            goto L1d
        L18:
            org.apache.oro.text.regex.CharStringPointer r2 = r7.__input
            r2._decrement()
        L1d:
            r7.__getNextChar()
            org.apache.oro.text.regex.CharStringPointer r2 = r7.__input
            char r2 = r2._getValue()
            r4 = r3
        L27:
            r5 = 65535(0xffff, float:9.1834E-41)
            if (r2 == r5) goto L58
            r5 = 124(0x7c, float:1.74E-43)
            if (r2 == r5) goto L58
            r5 = 41
            if (r2 != r5) goto L35
            goto L58
        L35:
            int r2 = r7.__parseBranch(r8)
            if (r2 != r3) goto L3c
            return r3
        L3c:
            r5 = r8[r0]
            r8[r0] = r5
            if (r4 != r3) goto L45
            r8[r0] = r5
            goto L4e
        L45:
            int r5 = r7.__cost
            int r5 = r5 + 1
            r7.__cost = r5
            r7.__programAddTail(r4, r2)
        L4e:
            org.apache.oro.text.regex.CharStringPointer r4 = r7.__input
            char r4 = r4._getValue()
            r6 = r4
            r4 = r2
            r2 = r6
            goto L27
        L58:
            if (r4 != r3) goto L5f
            r8 = 15
            r7.__emitNode(r8)
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.__parseAlternation(int[]):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0227, code lost:
        throw new org.apache.oro.text.regex.MalformedPatternException("?+* follows nothing in expression");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0256, code lost:
        r4 = __emitNode(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d7, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01dd, code lost:
        if ((r2[0] & 8) == 0) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01df, code lost:
        r20[0] = r20[0] | 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e4, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e5, code lost:
        r2 = new java.lang.StringBuffer("Error in expression at ");
        r3 = r19.__input;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0203, code lost:
        throw new org.apache.oro.text.regex.MalformedPatternException(r2.append(r3._toString(r3._getOffset())).toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0461  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int __parseAtom(int[] r20) throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            Method dump skipped, instructions count: 1334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.__parseAtom(int[]):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0243 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int __parseBranch(int[] r18) throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.__parseBranch(int[]):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017b A[LOOP:3: B:65:0x012b->B:90:0x017b, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int __parseExpression(boolean r14, int[] r15) throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.__parseExpression(boolean, int[]):int");
    }

    private static int __parseHex(char[] cArr, int i, int i2, int[] iArr) {
        int indexOf;
        iArr[0] = 0;
        int i3 = 0;
        while (i < cArr.length) {
            int i4 = i2 - 1;
            if (i2 <= 0 || (indexOf = __HEX_DIGIT.indexOf(cArr[i])) == -1) {
                break;
            }
            i3 = (i3 << 4) | (indexOf & 15);
            i++;
            iArr[0] = iArr[0] + 1;
            i2 = i4;
        }
        return i3;
    }

    private static int __parseOctal(char[] cArr, int i, int i2, int[] iArr) {
        char c2;
        iArr[0] = 0;
        int i3 = 0;
        while (i < cArr.length && i2 > 0 && (c2 = cArr[i]) >= '0' && c2 <= '7') {
            i3 = (i3 << 3) | (c2 - '0');
            i2--;
            i++;
            iArr[0] = iArr[0] + 1;
        }
        return i3;
    }

    private char __parsePOSIX(boolean[] zArr) throws MalformedPatternException {
        int i;
        Object obj;
        int _getOffset = this.__input._getOffset();
        int _getLength = this.__input._getLength();
        int i2 = _getOffset + 1;
        if (this.__input._getValue(_getOffset) != ':') {
            return (char) 0;
        }
        if (this.__input._getValue(i2) == '^') {
            zArr[0] = true;
            i2 = _getOffset + 2;
        } else {
            zArr[0] = false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                i = i2 + 1;
                char _getValue = this.__input._getValue(i2);
                if (_getValue == ':' || i >= _getLength) {
                    break;
                }
                stringBuffer.append(_getValue);
                i2 = i;
            } catch (Exception unused) {
                return (char) 0;
            }
        }
        int i3 = i2 + 2;
        if (this.__input._getValue(i) == ']' && (obj = __hashPOSIX.get(stringBuffer.toString())) != null) {
            this.__input._setOffset(i3);
            return ((Character) obj).charValue();
        }
        return (char) 0;
    }

    private static boolean __parseRepetition(char[] cArr, int i) {
        int i2;
        if (cArr[i] == '{' && (i2 = i + 1) < cArr.length && Character.isDigit(cArr[i2])) {
            while (i2 < cArr.length && Character.isDigit(cArr[i2])) {
                i2++;
            }
            if (i2 < cArr.length && cArr[i2] == ',') {
                i2++;
            }
            while (i2 < cArr.length && Character.isDigit(cArr[i2])) {
                i2++;
            }
            if (i2 < cArr.length && cArr[i2] == '}') {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int __parseUnicodeClass() throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.__parseUnicodeClass():int");
    }

    private void __programAddOperatorTail(int i, int i2) {
        if (this.__program == null || i == -1 || OpCode._opType[this.__program[i]] != '\f') {
            return;
        }
        __programAddTail(OpCode._getNextOperator(i), i2);
    }

    private void __programAddTail(int i, int i2) {
        if (this.__program == null || i == -1) {
            return;
        }
        while (true) {
            int _getNext = OpCode._getNext(this.__program, i);
            if (_getNext == -1) {
                break;
            }
            i = _getNext;
        }
        char[] cArr = this.__program;
        cArr[i + 1] = (char) (cArr[i] == '\r' ? i - i2 : i2 - i);
    }

    private void __programInsertOperator(char c2, int i) {
        int i2 = OpCode._opType[c2] == '\n' ? 2 : 0;
        if (this.__program == null) {
            this.__programSize += i2 + 2;
            return;
        }
        int i3 = this.__programSize;
        int i4 = i2 + 2 + i3;
        this.__programSize = i4;
        while (i3 > i) {
            i3--;
            i4--;
            char[] cArr = this.__program;
            cArr[i4] = cArr[i3];
        }
        char[] cArr2 = this.__program;
        int i5 = i + 1;
        cArr2[i] = c2;
        int i6 = i + 2;
        cArr2[i5] = 0;
        while (true) {
            int i7 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            this.__program[i6] = 0;
            i2 = i7;
            i6++;
        }
    }

    private static void __setModifierFlag(char[] cArr, char c2) {
        if (c2 == 'g') {
            cArr[0] = (char) (cArr[0] | __GLOBAL);
        } else if (c2 == 'i') {
            cArr[0] = (char) (cArr[0] | __CASE_INSENSITIVE);
        } else if (c2 == 'm') {
            cArr[0] = (char) (cArr[0] | __MULTILINE);
        } else if (c2 == 'o') {
            cArr[0] = (char) (cArr[0] | __KEEP);
        } else if (c2 == 's') {
            cArr[0] = (char) (cArr[0] | __SINGLELINE);
        } else if (c2 != 'x') {
        } else {
            cArr[0] = (char) (cArr[0] | __EXTENDED);
        }
    }

    public static final String quotemeta(String str) {
        return quotemeta(str.toCharArray());
    }

    public static final String quotemeta(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer(cArr.length * 2);
        for (int i = 0; i < cArr.length; i++) {
            if (!OpCode._isWordCharacter(cArr[i])) {
                stringBuffer.append('\\');
            }
            stringBuffer.append(cArr[i]);
        }
        return stringBuffer.toString();
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(String str) throws MalformedPatternException {
        return compile(str.toCharArray(), 0);
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(String str, int i) throws MalformedPatternException {
        return compile(str.toCharArray(), i);
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(char[] cArr) throws MalformedPatternException {
        return compile(cArr, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
        if (r15[org.apache.oro.text.regex.OpCode._getNext(r15, r10)] == '\f') goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v10, types: [int] */
    /* JADX WARN: Type inference failed for: r19v13, types: [int] */
    /* JADX WARN: Type inference failed for: r19v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v22, types: [int] */
    @Override // org.apache.oro.text.regex.PatternCompiler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.oro.text.regex.Pattern compile(char[] r23, int r24) throws org.apache.oro.text.regex.MalformedPatternException {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Compiler.compile(char[], int):org.apache.oro.text.regex.Pattern");
    }
}
