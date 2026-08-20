package org.apache.regexp;

import java.util.Vector;
/* loaded from: classes3.dex */
public class RE {
    static final char E_ALNUM = 'w';
    static final char E_BOUND = 'b';
    static final char E_DIGIT = 'd';
    static final char E_NALNUM = 'W';
    static final char E_NBOUND = 'B';
    static final char E_NDIGIT = 'D';
    static final char E_NSPACE = 'S';
    static final char E_SPACE = 's';
    public static final int MATCH_CASEINDEPENDENT = 1;
    public static final int MATCH_MULTILINE = 2;
    public static final int MATCH_NORMAL = 0;
    public static final int MATCH_SINGLELINE = 4;
    static final String NEWLINE = System.getProperty("line.separator");
    static final char OP_ANY = '.';
    static final char OP_ANYOF = '[';
    static final char OP_ATOM = 'A';
    static final char OP_BACKREF = '#';
    static final char OP_BOL = '^';
    static final char OP_BRANCH = '|';
    static final char OP_CLOSE = ')';
    static final char OP_END = 'E';
    static final char OP_EOL = '$';
    static final char OP_ESCAPE = '\\';
    static final char OP_GOTO = 'G';
    static final char OP_MAYBE = '?';
    static final char OP_NOTHING = 'N';
    static final char OP_OPEN = '(';
    static final char OP_PLUS = '+';
    static final char OP_POSIXCLASS = 'P';
    static final char OP_RELUCTANTMAYBE = '/';
    static final char OP_RELUCTANTPLUS = '=';
    static final char OP_RELUCTANTSTAR = '8';
    static final char OP_STAR = '*';
    static final char POSIX_CLASS_ALNUM = 'w';
    static final char POSIX_CLASS_ALPHA = 'a';
    static final char POSIX_CLASS_BLANK = 'b';
    static final char POSIX_CLASS_CNTRL = 'c';
    static final char POSIX_CLASS_DIGIT = 'd';
    static final char POSIX_CLASS_GRAPH = 'g';
    static final char POSIX_CLASS_JPART = 'k';
    static final char POSIX_CLASS_JSTART = 'j';
    static final char POSIX_CLASS_LOWER = 'l';
    static final char POSIX_CLASS_PRINT = 'p';
    static final char POSIX_CLASS_PUNCT = '!';
    static final char POSIX_CLASS_SPACE = 's';
    static final char POSIX_CLASS_UPPER = 'u';
    static final char POSIX_CLASS_XDIGIT = 'x';
    public static final int REPLACE_ALL = 0;
    public static final int REPLACE_FIRSTONLY = 1;
    static final int maxNode = 65536;
    static final int maxParen = 16;
    static final int nodeSize = 3;
    static final int offsetNext = 2;
    static final int offsetOpcode = 0;
    static final int offsetOpdata = 1;
    int end0;
    int end1;
    int end2;
    int[] endBackref;
    int[] endn;
    int idx;
    int matchFlags;
    int parenCount;
    REProgram program;
    CharacterIterator search;
    int start0;
    int start1;
    int start2;
    int[] startBackref;
    int[] startn;

    public RE(String str) throws RESyntaxException {
        this(str, 0);
    }

    public RE(String str, int i) throws RESyntaxException {
        this(new RECompiler().compile(str));
        setMatchFlags(i);
    }

    public RE(REProgram rEProgram, int i) {
        setProgram(rEProgram);
        setMatchFlags(i);
    }

    public RE(REProgram rEProgram) {
        this(rEProgram, 0);
    }

    public RE() {
        this((REProgram) null, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String simplePatternToFullRegularExpression(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '$' && charAt != '.' && charAt != '?') {
                switch (charAt) {
                    case '(':
                    case ')':
                    case '+':
                        break;
                    case '*':
                        stringBuffer.append(".*");
                        continue;
                    default:
                        switch (charAt) {
                            default:
                                switch (charAt) {
                                }
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                                stringBuffer.append(OP_ESCAPE);
                                break;
                        }
                }
                stringBuffer.append(charAt);
            }
            stringBuffer.append(OP_ESCAPE);
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    public void setMatchFlags(int i) {
        this.matchFlags = i;
    }

    public int getMatchFlags() {
        return this.matchFlags;
    }

    public void setProgram(REProgram rEProgram) {
        this.program = rEProgram;
    }

    public REProgram getProgram() {
        return this.program;
    }

    public int getParenCount() {
        return this.parenCount;
    }

    public String getParen(int i) {
        int parenStart;
        if (i >= this.parenCount || (parenStart = getParenStart(i)) < 0) {
            return null;
        }
        return this.search.substring(parenStart, getParenEnd(i));
    }

    public final int getParenStart(int i) {
        if (i < this.parenCount) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return this.start2;
                    }
                    if (this.startn == null) {
                        allocParens();
                    }
                    return this.startn[i];
                }
                return this.start1;
            }
            return this.start0;
        }
        return -1;
    }

    public final int getParenEnd(int i) {
        if (i < this.parenCount) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return this.end2;
                    }
                    if (this.endn == null) {
                        allocParens();
                    }
                    return this.endn[i];
                }
                return this.end1;
            }
            return this.end0;
        }
        return -1;
    }

    public final int getParenLength(int i) {
        if (i < this.parenCount) {
            return getParenEnd(i) - getParenStart(i);
        }
        return -1;
    }

    protected final void setParenStart(int i, int i2) {
        if (i < this.parenCount) {
            if (i == 0) {
                this.start0 = i2;
            } else if (i == 1) {
                this.start1 = i2;
            } else if (i == 2) {
                this.start2 = i2;
            } else {
                if (this.startn == null) {
                    allocParens();
                }
                this.startn[i] = i2;
            }
        }
    }

    protected final void setParenEnd(int i, int i2) {
        if (i < this.parenCount) {
            if (i == 0) {
                this.end0 = i2;
            } else if (i == 1) {
                this.end1 = i2;
            } else if (i == 2) {
                this.end2 = i2;
            } else {
                if (this.endn == null) {
                    allocParens();
                }
                this.endn[i] = i2;
            }
        }
    }

    protected void internalError(String str) throws Error {
        throw new Error(new StringBuffer("RE internal error: ").append(str).toString());
    }

    private final void allocParens() {
        this.startn = new int[16];
        this.endn = new int[16];
        for (int i = 0; i < 16; i++) {
            this.startn[i] = -1;
            this.endn[i] = -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:247:0x034e, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ce, code lost:
        if (r8 != 'w') goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int matchNodes(int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RE.matchNodes(int, int, int):int");
    }

    protected boolean matchAt(int i) {
        this.start0 = -1;
        this.end0 = -1;
        this.start1 = -1;
        this.end1 = -1;
        this.start2 = -1;
        this.end2 = -1;
        this.startn = null;
        this.endn = null;
        this.parenCount = 1;
        setParenStart(0, i);
        if ((this.program.flags & 1) != 0) {
            this.startBackref = new int[16];
            this.endBackref = new int[16];
        }
        int matchNodes = matchNodes(0, 65536, i);
        if (matchNodes != -1) {
            setParenEnd(0, matchNodes);
            return true;
        }
        this.parenCount = 0;
        return false;
    }

    public boolean match(String str, int i) {
        return match(new StringCharacterIterator(str), i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
        if (java.lang.Character.toLowerCase(r9.charAt(r4)) != java.lang.Character.toLowerCase(r3[r5])) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (r9.charAt(r4) != r3[r5]) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
        r4 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean match(org.apache.regexp.CharacterIterator r9, int r10) {
        /*
            r8 = this;
            org.apache.regexp.REProgram r0 = r8.program
            if (r0 != 0) goto L9
            java.lang.String r0 = "No RE program to run!"
            r8.internalError(r0)
        L9:
            r8.search = r9
            org.apache.regexp.REProgram r0 = r8.program
            char[] r0 = r0.prefix
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L26
        L13:
            int r0 = r10 + (-1)
            boolean r0 = r9.isEnd(r0)
            if (r0 == 0) goto L1c
            return r1
        L1c:
            boolean r0 = r8.matchAt(r10)
            if (r0 == 0) goto L23
            return r2
        L23:
            int r10 = r10 + 1
            goto L13
        L26:
            int r0 = r8.matchFlags
            r0 = r0 & r2
            if (r0 != 0) goto L2d
            r0 = r1
            goto L2e
        L2d:
            r0 = r2
        L2e:
            org.apache.regexp.REProgram r3 = r8.program
            char[] r3 = r3.prefix
        L32:
            int r4 = r3.length
            int r4 = r4 + r10
            int r4 = r4 - r2
            boolean r4 = r9.isEnd(r4)
            if (r4 == 0) goto L3c
            return r1
        L3c:
            if (r0 == 0) goto L4f
            char r4 = r9.charAt(r10)
            char r4 = java.lang.Character.toLowerCase(r4)
            char r5 = r3[r1]
            char r5 = java.lang.Character.toLowerCase(r5)
            if (r4 == r5) goto L58
            goto L92
        L4f:
            char r4 = r9.charAt(r10)
            char r5 = r3[r1]
            if (r4 == r5) goto L58
            goto L92
        L58:
            int r4 = r10 + 1
            r5 = r2
        L5b:
            int r6 = r3.length
            if (r5 < r6) goto L5f
            goto L88
        L5f:
            if (r0 == 0) goto L76
            int r6 = r4 + 1
            char r4 = r9.charAt(r4)
            char r4 = java.lang.Character.toLowerCase(r4)
            int r7 = r5 + 1
            char r5 = r3[r5]
            char r5 = java.lang.Character.toLowerCase(r5)
            if (r4 == r5) goto L84
            goto L82
        L76:
            int r6 = r4 + 1
            char r4 = r9.charAt(r4)
            int r7 = r5 + 1
            char r5 = r3[r5]
            if (r4 == r5) goto L84
        L82:
            r4 = r1
            goto L85
        L84:
            r4 = r2
        L85:
            r5 = r7
            if (r4 != 0) goto L95
        L88:
            int r4 = r3.length
            if (r5 != r4) goto L92
            boolean r4 = r8.matchAt(r10)
            if (r4 == 0) goto L92
            return r2
        L92:
            int r10 = r10 + 1
            goto L32
        L95:
            r4 = r6
            goto L5b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.regexp.RE.match(org.apache.regexp.CharacterIterator, int):boolean");
    }

    public boolean match(String str) {
        return match(str, 0);
    }

    public String[] split(String str) {
        Vector vector = new Vector();
        int length = str.length();
        int i = 0;
        while (i < length && match(str, i)) {
            int parenStart = getParenStart(0);
            int parenEnd = getParenEnd(0);
            if (parenEnd == i) {
                vector.addElement(str.substring(i, parenStart + 1));
                parenEnd++;
            } else {
                vector.addElement(str.substring(i, parenStart));
            }
            i = parenEnd;
        }
        String substring = str.substring(i);
        if (substring.length() != 0) {
            vector.addElement(substring);
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public String subst(String str, String str2) {
        return subst(str, str2, 0);
    }

    public String subst(String str, String str2, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i2 = 0;
        while (i2 < length && match(str, i2)) {
            stringBuffer.append(str.substring(i2, getParenStart(0)));
            stringBuffer.append(str2);
            int parenEnd = getParenEnd(0);
            if (parenEnd == i2) {
                parenEnd++;
            }
            i2 = parenEnd;
            if ((i & 1) != 0) {
                break;
            }
        }
        if (i2 < length) {
            stringBuffer.append(str.substring(i2));
        }
        return stringBuffer.toString();
    }

    public String[] grep(Object[] objArr) {
        Vector vector = new Vector();
        for (Object obj : objArr) {
            String obj2 = obj.toString();
            if (match(obj2)) {
                vector.addElement(obj2);
            }
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    private boolean isNewline(int i) {
        String str = NEWLINE;
        if (i < str.length() - 1) {
            return false;
        }
        if (this.search.charAt(i) == '\n') {
            return true;
        }
        int length = str.length() - 1;
        while (length >= 0) {
            if (NEWLINE.charAt(length) != this.search.charAt(i)) {
                return false;
            }
            length--;
            i--;
        }
        return true;
    }
}
