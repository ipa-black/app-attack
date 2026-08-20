package org.apache.regexp;

import java.util.Hashtable;
/* loaded from: classes3.dex */
public class RECompiler {
    static final char ESC_BACKREF = 65535;
    static final char ESC_CLASS = 65533;
    static final char ESC_COMPLEX = 65534;
    static final char ESC_MASK = 65520;
    static final int NODE_NORMAL = 0;
    static final int NODE_NULLABLE = 1;
    static final int NODE_TOPLEVEL = 2;
    static int[] bracketEnd = null;
    static final int bracketFinished = -2;
    static int[] bracketMin = null;
    static int[] bracketOpt = null;
    static int[] bracketStart = null;
    static final int bracketUnbounded = -1;
    static int brackets = 0;
    static Hashtable hashPOSIX = null;
    static final int maxBrackets = 10;
    int idx;
    int len;
    int parens;
    String pattern;
    char[] instruction = new char[128];
    int lenInstruction = 0;

    static {
        Hashtable hashtable = new Hashtable();
        hashPOSIX = hashtable;
        hashtable.put("alnum", new Character('w'));
        hashPOSIX.put("alpha", new Character('a'));
        hashPOSIX.put("blank", new Character('b'));
        hashPOSIX.put("cntrl", new Character('c'));
        hashPOSIX.put("digit", new Character('d'));
        hashPOSIX.put("graph", new Character('g'));
        hashPOSIX.put("lower", new Character('l'));
        hashPOSIX.put("print", new Character('p'));
        hashPOSIX.put("punct", new Character('!'));
        hashPOSIX.put("space", new Character('s'));
        hashPOSIX.put("upper", new Character('u'));
        hashPOSIX.put("xdigit", new Character('x'));
        hashPOSIX.put("javastart", new Character('j'));
        hashPOSIX.put("javapart", new Character('k'));
    }

    void ensure(int i) {
        int length = this.instruction.length;
        if (this.lenInstruction + i < length) {
            return;
        }
        while (true) {
            int i2 = this.lenInstruction;
            if (i2 + i < length) {
                char[] cArr = new char[length];
                System.arraycopy(this.instruction, 0, cArr, 0, i2);
                this.instruction = cArr;
                return;
            }
            length *= 2;
        }
    }

    void emit(char c2) {
        ensure(1);
        char[] cArr = this.instruction;
        int i = this.lenInstruction;
        this.lenInstruction = i + 1;
        cArr[i] = c2;
    }

    void nodeInsert(char c2, int i, int i2) {
        ensure(3);
        char[] cArr = this.instruction;
        System.arraycopy(cArr, i2, cArr, i2 + 3, this.lenInstruction - i2);
        char[] cArr2 = this.instruction;
        cArr2[i2] = c2;
        cArr2[i2 + 1] = (char) i;
        cArr2[i2 + 2] = 0;
        this.lenInstruction += 3;
    }

    void setNextOfEnd(int i, int i2) {
        while (true) {
            char[] cArr = this.instruction;
            int i3 = i + 2;
            char c2 = cArr[i3];
            if (c2 == 0) {
                cArr[i3] = (char) ((short) (i2 - i));
                return;
            }
            i += c2;
        }
    }

    int node(char c2, int i) {
        ensure(3);
        char[] cArr = this.instruction;
        int i2 = this.lenInstruction;
        cArr[i2] = c2;
        cArr[i2 + 1] = (char) i;
        cArr[i2 + 2] = 0;
        this.lenInstruction = i2 + 3;
        return i2;
    }

    void internalError() throws Error {
        throw new Error("Internal error!");
    }

    void syntaxError(String str) throws RESyntaxException {
        throw new RESyntaxException(str);
    }

    void allocBrackets() {
        if (bracketStart == null) {
            bracketStart = new int[10];
            bracketEnd = new int[10];
            bracketMin = new int[10];
            bracketOpt = new int[10];
            for (int i = 0; i < 10; i++) {
                int[] iArr = bracketStart;
                int[] iArr2 = bracketEnd;
                int[] iArr3 = bracketMin;
                bracketOpt[i] = -1;
                iArr3[i] = -1;
                iArr2[i] = -1;
                iArr[i] = -1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if (r7.charAt(r2) != ',') goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r2.charAt(r1) != '{') goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void bracket() throws org.apache.regexp.RESyntaxException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.bracket():void");
    }

    char escape() throws RESyntaxException {
        if (this.pattern.charAt(this.idx) != '\\') {
            internalError();
        }
        if (this.idx + 1 == this.len) {
            syntaxError("Escape terminates string");
        }
        int i = this.idx;
        this.idx = i + 2;
        char charAt = this.pattern.charAt(i + 1);
        if (charAt != 'B') {
            if (charAt == 'D' || charAt == 'S' || charAt == 'W') {
                return ESC_CLASS;
            }
            if (charAt != 'b') {
                if (charAt != 'd') {
                    if (charAt != 'f') {
                        if (charAt != 'n') {
                            if (charAt != 'w') {
                                if (charAt != 'x') {
                                    switch (charAt) {
                                        case '0':
                                        case '1':
                                        case '2':
                                        case '3':
                                        case '4':
                                        case '5':
                                        case '6':
                                        case '7':
                                        case '8':
                                        case '9':
                                            int i2 = this.idx;
                                            if ((i2 >= this.len || !Character.isDigit(this.pattern.charAt(i2))) && charAt != '0') {
                                                return (char) 65535;
                                            }
                                            int i3 = charAt - '0';
                                            int i4 = this.idx;
                                            if (i4 < this.len && Character.isDigit(this.pattern.charAt(i4))) {
                                                String str = this.pattern;
                                                int i5 = this.idx;
                                                this.idx = i5 + 1;
                                                i3 = (i3 << 3) + (str.charAt(i5) - '0');
                                                int i6 = this.idx;
                                                if (i6 < this.len && Character.isDigit(this.pattern.charAt(i6))) {
                                                    String str2 = this.pattern;
                                                    int i7 = this.idx;
                                                    this.idx = i7 + 1;
                                                    i3 = (i3 << 3) + (str2.charAt(i7) - '0');
                                                }
                                            }
                                            return (char) i3;
                                        default:
                                            switch (charAt) {
                                                case 'r':
                                                    return '\r';
                                                case 's':
                                                    return ESC_CLASS;
                                                case 't':
                                                    return '\t';
                                                case 'u':
                                                    break;
                                                default:
                                                    return charAt;
                                            }
                                    }
                                }
                                int i8 = charAt == 'u' ? 4 : 2;
                                int i9 = 0;
                                while (true) {
                                    int i10 = this.idx;
                                    if (i10 < this.len) {
                                        int i11 = i8 - 1;
                                        if (i8 > 0) {
                                            char charAt2 = this.pattern.charAt(i10);
                                            if (charAt2 < '0' || charAt2 > '9') {
                                                char lowerCase = Character.toLowerCase(charAt2);
                                                if (lowerCase < 'a' || lowerCase > 'f') {
                                                    syntaxError(new StringBuffer("Expected ").append(i11).append(" hexadecimal digits after \\").append(charAt).toString());
                                                } else {
                                                    i9 = (i9 << 4) + (lowerCase - 'a') + 10;
                                                }
                                            } else {
                                                i9 = ((i9 << 4) + charAt2) - 48;
                                            }
                                            this.idx++;
                                            i8 = i11;
                                        }
                                    }
                                }
                                return (char) i9;
                            }
                            return ESC_CLASS;
                        }
                        return '\n';
                    }
                    return '\f';
                }
                return ESC_CLASS;
            }
            return ESC_COMPLEX;
        }
        return ESC_COMPLEX;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
        if (r3.charAt(r1) == ']') goto L123;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int characterClass() throws org.apache.regexp.RESyntaxException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.characterClass():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0092, code lost:
        if (r1 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
        syntaxError("Missing operand to closure");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int atom() throws org.apache.regexp.RESyntaxException {
        /*
            r8 = this;
            r0 = 65
            r1 = 0
            int r0 = r8.node(r0, r1)
        L7:
            int r2 = r8.idx
            int r3 = r8.len
            if (r2 < r3) goto Lf
            goto L99
        Lf:
            int r4 = r2 + 1
            r5 = 123(0x7b, float:1.72E-43)
            r6 = 63
            if (r4 >= r3) goto L4e
            java.lang.String r3 = r8.pattern
            int r2 = r2 + 1
            char r2 = r3.charAt(r2)
            java.lang.String r3 = r8.pattern
            int r4 = r8.idx
            char r3 = r3.charAt(r4)
            r4 = 92
            if (r3 != r4) goto L3e
            int r3 = r8.idx
            r8.escape()
            int r4 = r8.idx
            int r7 = r8.len
            if (r4 >= r7) goto L3c
            java.lang.String r2 = r8.pattern
            char r2 = r2.charAt(r4)
        L3c:
            r8.idx = r3
        L3e:
            r3 = 42
            if (r2 == r3) goto L4b
            r3 = 43
            if (r2 == r3) goto L4b
            if (r2 == r6) goto L4b
            if (r2 == r5) goto L4b
            goto L4e
        L4b:
            if (r1 == 0) goto L4e
            goto L99
        L4e:
            java.lang.String r2 = r8.pattern
            int r3 = r8.idx
            char r2 = r2.charAt(r3)
            r3 = 36
            if (r2 == r3) goto L99
            r3 = 46
            if (r2 == r3) goto L99
            if (r2 == r6) goto L92
            if (r2 == r5) goto L92
            r3 = 124(0x7c, float:1.74E-43)
            if (r2 == r3) goto L99
            switch(r2) {
                case 40: goto L99;
                case 41: goto L99;
                case 42: goto L92;
                case 43: goto L92;
                default: goto L69;
            }
        L69:
            switch(r2) {
                case 91: goto L99;
                case 92: goto L7e;
                case 93: goto L99;
                case 94: goto L99;
                default: goto L6c;
            }
        L6c:
            java.lang.String r2 = r8.pattern
            int r3 = r8.idx
            int r4 = r3 + 1
            r8.idx = r4
            char r2 = r2.charAt(r3)
            r8.emit(r2)
        L7b:
            int r1 = r1 + 1
            goto L7
        L7e:
            int r2 = r8.idx
            char r3 = r8.escape()
            r4 = 65520(0xfff0, float:9.1813E-41)
            r5 = r3 & r4
            if (r5 != r4) goto L8e
            r8.idx = r2
            goto L99
        L8e:
            r8.emit(r3)
            goto L7b
        L92:
            if (r1 != 0) goto L99
            java.lang.String r2 = "Missing operand to closure"
            r8.syntaxError(r2)
        L99:
            if (r1 != 0) goto L9e
            r8.internalError()
        L9e:
            char[] r2 = r8.instruction
            int r3 = r0 + 1
            char r1 = (char) r1
            r2[r3] = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.atom():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int terminal(int[] r4) throws org.apache.regexp.RESyntaxException {
        /*
            r3 = this;
            java.lang.String r0 = r3.pattern
            int r1 = r3.idx
            char r0 = r0.charAt(r1)
            r1 = 0
            if (r0 == 0) goto L51
            r2 = 36
            if (r0 == r2) goto L40
            r2 = 46
            if (r0 == r2) goto L40
            r2 = 63
            if (r0 == r2) goto L56
            r2 = 123(0x7b, float:1.72E-43)
            if (r0 == r2) goto L56
            r2 = 124(0x7c, float:1.74E-43)
            if (r0 == r2) goto L37
            switch(r0) {
                case 40: goto L32;
                case 41: goto L2c;
                case 42: goto L56;
                case 43: goto L56;
                default: goto L22;
            }
        L22:
            switch(r0) {
                case 91: goto L27;
                case 92: goto L5b;
                case 93: goto L3a;
                case 94: goto L40;
                default: goto L25;
            }
        L25:
            goto La7
        L27:
            int r4 = r3.characterClass()
            return r4
        L2c:
            java.lang.String r0 = "Unexpected close paren"
            r3.syntaxError(r0)
            goto L37
        L32:
            int r4 = r3.expr(r4)
            return r4
        L37:
            r3.internalError()
        L3a:
            java.lang.String r0 = "Mismatched class"
            r3.syntaxError(r0)
            goto L51
        L40:
            java.lang.String r4 = r3.pattern
            int r0 = r3.idx
            int r2 = r0 + 1
            r3.idx = r2
            char r4 = r4.charAt(r0)
            int r4 = r3.node(r4, r1)
            return r4
        L51:
            java.lang.String r0 = "Unexpected end of input"
            r3.syntaxError(r0)
        L56:
            java.lang.String r0 = "Missing operand to closure"
            r3.syntaxError(r0)
        L5b:
            int r0 = r3.idx
            char r2 = r3.escape()
            switch(r2) {
                case 65533: goto L90;
                case 65534: goto L90;
                case 65535: goto L6d;
                default: goto L64;
            }
        L64:
            r3.idx = r0
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            goto La7
        L6d:
            java.lang.String r0 = r3.pattern
            int r2 = r3.idx
            int r2 = r2 + (-1)
            char r0 = r0.charAt(r2)
            int r0 = r0 + (-48)
            char r0 = (char) r0
            int r2 = r3.parens
            if (r2 > r0) goto L83
            java.lang.String r2 = "Bad backreference"
            r3.syntaxError(r2)
        L83:
            r2 = r4[r1]
            r2 = r2 | 1
            r4[r1] = r2
            r4 = 35
            int r4 = r3.node(r4, r0)
            return r4
        L90:
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            java.lang.String r4 = r3.pattern
            int r0 = r3.idx
            int r0 = r0 + (-1)
            char r4 = r4.charAt(r0)
            r0 = 92
            int r4 = r3.node(r0, r4)
            return r4
        La7:
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            int r4 = r3.atom()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.terminal(int[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (r5 != '{') goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int closure(int[] r14) throws org.apache.regexp.RESyntaxException {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.closure(int[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
        node('N', 0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int branch(int[] r10) throws org.apache.regexp.RESyntaxException {
        /*
            r9 = this;
            r0 = 124(0x7c, float:1.74E-43)
            r1 = 0
            int r2 = r9.node(r0, r1)
            r3 = -1
            r4 = 1
            r5 = r3
            r6 = r4
        Lb:
            int r7 = r9.idx
            int r8 = r9.len
            if (r7 >= r8) goto L3a
            java.lang.String r8 = r9.pattern
            char r7 = r8.charAt(r7)
            if (r7 == r0) goto L3a
            java.lang.String r7 = r9.pattern
            int r8 = r9.idx
            char r7 = r7.charAt(r8)
            r8 = 41
            if (r7 != r8) goto L26
            goto L3a
        L26:
            int[] r7 = new int[]{r1}
            int r8 = r9.closure(r7)
            r7 = r7[r1]
            if (r7 != 0) goto L33
            r6 = r1
        L33:
            if (r5 == r3) goto L38
            r9.setNextOfEnd(r5, r8)
        L38:
            r5 = r8
            goto Lb
        L3a:
            if (r5 != r3) goto L41
            r0 = 78
            r9.node(r0, r1)
        L41:
            if (r6 == 0) goto L48
            r0 = r10[r1]
            r0 = r0 | r4
            r10[r1] = r0
        L48:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RECompiler.branch(int[]):int");
    }

    int expr(int[] iArr) throws RESyntaxException {
        boolean z;
        int i;
        int node;
        int i2 = this.parens;
        char c2 = 65535;
        if ((iArr[0] & 2) == 0 && this.pattern.charAt(this.idx) == '(') {
            this.idx++;
            int i3 = this.parens;
            this.parens = i3 + 1;
            i = node('(', i3);
            z = true;
        } else {
            z = false;
            i = -1;
        }
        iArr[0] = iArr[0] & (-3);
        int branch = branch(iArr);
        if (i == -1) {
            i = branch;
        } else {
            setNextOfEnd(i, branch);
        }
        while (true) {
            int i4 = this.idx;
            if (i4 >= this.len || this.pattern.charAt(i4) != '|') {
                break;
            }
            this.idx++;
            setNextOfEnd(i, branch(iArr));
        }
        if (z) {
            int i5 = this.idx;
            if (i5 < this.len && this.pattern.charAt(i5) == ')') {
                this.idx++;
            } else {
                syntaxError("Missing close paren");
            }
            node = node(')', i2);
        } else {
            node = node('E', 0);
        }
        setNextOfEnd(i, node);
        int i6 = i;
        while (c2 != 0) {
            if (this.instruction[i6] == '|') {
                setNextOfEnd(i6 + 3, node);
            }
            c2 = this.instruction[i6 + 2];
            i6 += c2;
        }
        return i;
    }

    public REProgram compile(String str) throws RESyntaxException {
        this.pattern = str;
        this.len = str.length();
        this.idx = 0;
        this.lenInstruction = 0;
        this.parens = 1;
        brackets = 0;
        expr(new int[]{2});
        int i = this.idx;
        if (i != this.len) {
            if (str.charAt(i) == ')') {
                syntaxError("Unmatched close paren");
            }
            syntaxError("Unexpected input remains");
        }
        int i2 = this.lenInstruction;
        char[] cArr = new char[i2];
        System.arraycopy(this.instruction, 0, cArr, 0, i2);
        return new REProgram(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class RERange {
        int size = 16;
        int[] minRange = new int[16];
        int[] maxRange = new int[16];
        int num = 0;

        RERange() {
        }

        void delete(int i) {
            int i2 = this.num;
            if (i2 == 0 || i >= i2) {
                return;
            }
            while (true) {
                int i3 = i + 1;
                int i4 = this.num;
                if (i >= i4) {
                    this.num = i4 - 1;
                    return;
                }
                if (i >= 0) {
                    int[] iArr = this.minRange;
                    iArr[i] = iArr[i3];
                    int[] iArr2 = this.maxRange;
                    iArr2[i] = iArr2[i3];
                }
                i = i3;
            }
        }

        void merge(int i, int i2) {
            int i3 = 0;
            while (true) {
                int i4 = this.num;
                if (i3 < i4) {
                    int i5 = this.minRange[i3];
                    if (i >= i5 && i2 <= this.maxRange[i3]) {
                        return;
                    }
                    if (i <= i5 && i2 >= this.maxRange[i3]) {
                        delete(i3);
                        merge(i, i2);
                        return;
                    } else if (i >= i5 && i <= this.maxRange[i3]) {
                        delete(i3);
                        merge(this.minRange[i3], i2);
                        return;
                    } else if (i2 >= i5 && i2 <= this.maxRange[i3]) {
                        delete(i3);
                        merge(i, this.maxRange[i3]);
                        return;
                    } else {
                        i3++;
                    }
                } else {
                    int i6 = this.size;
                    if (i4 >= i6) {
                        int i7 = i6 * 2;
                        this.size = i7;
                        int[] iArr = new int[i7];
                        int[] iArr2 = new int[i7];
                        System.arraycopy(this.minRange, 0, iArr, 0, i4);
                        System.arraycopy(this.maxRange, 0, iArr2, 0, this.num);
                        this.minRange = iArr;
                        this.maxRange = iArr2;
                    }
                    int[] iArr3 = this.minRange;
                    int i8 = this.num;
                    iArr3[i8] = i;
                    this.maxRange[i8] = i2;
                    this.num = i8 + 1;
                    return;
                }
            }
        }

        void remove(int i, int i2) {
            int i3;
            for (int i4 = 0; i4 < this.num; i4++) {
                int[] iArr = this.minRange;
                int i5 = iArr[i4];
                if (i5 >= i && this.maxRange[i4] <= i2) {
                    delete(i4);
                    return;
                } else if (i >= i5 && i2 <= (i3 = this.maxRange[i4])) {
                    delete(i4);
                    int i6 = i - 1;
                    if (i5 < i6) {
                        merge(i5, i6);
                    }
                    int i7 = i2 + 1;
                    if (i7 < i3) {
                        merge(i7, i3);
                        return;
                    }
                    return;
                } else if (i5 >= i && i5 <= i2) {
                    iArr[i4] = i2 + 1;
                    return;
                } else {
                    int[] iArr2 = this.maxRange;
                    int i8 = iArr2[i4];
                    if (i8 >= i && i8 <= i2) {
                        iArr2[i4] = i - 1;
                        return;
                    }
                }
            }
        }

        void include(int i, int i2, boolean z) {
            if (z) {
                merge(i, i2);
            } else {
                remove(i, i2);
            }
        }

        void include(char c2, boolean z) {
            include(c2, c2, z);
        }
    }
}
