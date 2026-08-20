package org.apache.oro.text.regex;

import java.util.Stack;
/* loaded from: classes3.dex */
public final class Perl5Matcher implements PatternMatcher {
    private static final int __DEFAULT_LAST_MATCH_END_OFFSET = -100;
    private static final char __EOS = 65535;
    private static final int __INITIAL_NUM_OFFSETS = 20;
    private int[] __beginMatchOffsets;
    private int __bol;
    private int __currentOffset;
    private Perl5Repetition __currentRep;
    private int[] __endMatchOffsets;
    private int __endOffset;
    private int __eol;
    private int __expSize;
    private char[] __input;
    private int __inputOffset;
    private int __lastParen;
    private int __numParentheses;
    private char[] __originalInput;
    private char __previousChar;
    private char[] __program;
    private boolean __multiline = false;
    private boolean __lastSuccess = false;
    private boolean __caseInsensitive = false;
    private Stack __stack = new Stack();
    private Perl5MatchResult __lastMatchResult = null;
    private int __lastMatchInputEndOffset = -100;

    private static boolean __compare(char[] cArr, int i, char[] cArr2, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            if (i >= cArr.length || i2 >= cArr2.length || cArr[i] != cArr2[i2]) {
                return false;
            }
            i4++;
            i++;
            i2++;
        }
        return true;
    }

    private static int __findFirst(char[] cArr, int i, int i2, char[] cArr2) {
        if (cArr.length == 0) {
            return i2;
        }
        char c2 = cArr2[0];
        while (i < i2) {
            if (c2 == cArr[i]) {
                int i3 = 0;
                for (int i4 = i; i4 < i2 && i3 < cArr2.length && cArr2[i3] == cArr[i4]; i4++) {
                    i3++;
                }
                if (i3 >= cArr2.length) {
                    break;
                }
            }
            i++;
        }
        return i;
    }

    private void __initInterpreterGlobals(Perl5Pattern perl5Pattern, char[] cArr, int i, int i2, int i3) {
        this.__caseInsensitive = perl5Pattern._isCaseInsensitive;
        this.__input = cArr;
        this.__endOffset = i2;
        Perl5Repetition perl5Repetition = new Perl5Repetition();
        this.__currentRep = perl5Repetition;
        perl5Repetition._numInstances = 0;
        this.__currentRep._lastRepetition = null;
        this.__program = perl5Pattern._program;
        this.__stack.setSize(0);
        if (i3 == i || i3 <= 0) {
            this.__previousChar = '\n';
        } else {
            char c2 = cArr[i3 - 1];
            this.__previousChar = c2;
            if (!this.__multiline && c2 == '\n') {
                this.__previousChar = (char) 0;
            }
        }
        int i4 = perl5Pattern._numParentheses;
        this.__numParentheses = i4;
        this.__currentOffset = i3;
        this.__bol = i;
        this.__eol = i2;
        int i5 = i4 + 1;
        int[] iArr = this.__beginMatchOffsets;
        if (iArr == null || i5 > iArr.length) {
            if (i5 < 20) {
                i5 = 20;
            }
            this.__beginMatchOffsets = new int[i5];
            this.__endMatchOffsets = new int[i5];
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x01e9, code lost:
        if (r8 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x01ef, code lost:
        if (__tryExpression(r9) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x022b, code lost:
        if (r7 == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0231, code lost:
        if (__tryExpression(r9) == false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean __interpret(org.apache.oro.text.regex.Perl5Pattern r7, char[] r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Matcher.__interpret(org.apache.oro.text.regex.Perl5Pattern, char[], int, int, int):boolean");
    }

    private boolean __match(int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        char c2;
        int _getNextOperator;
        int i5;
        char c3;
        char c4;
        boolean z2;
        int i6;
        int i7;
        int i8 = this.__inputOffset;
        boolean z3 = i8 < this.__endOffset;
        char c5 = z3 ? this.__input[i8] : (char) 65535;
        int length = this.__program.length;
        boolean z4 = false;
        while (i < length) {
            int _getNext = OpCode._getNext(this.__program, i);
            char[] cArr = this.__program;
            char c6 = cArr[i];
            switch (c6) {
                case 0:
                case '!':
                    this.__inputOffset = i8;
                    return i8 != this.__lastMatchInputEndOffset;
                case 1:
                    if (i8 != this.__bol) {
                        if (this.__multiline) {
                            if (!z3) {
                                if (i8 >= this.__eol) {
                                }
                            }
                            if (this.__input[i8 - 1] != '\n') {
                            }
                        }
                        return false;
                    } else if (this.__previousChar != '\n') {
                        return false;
                    }
                    break;
                case 2:
                    if (i8 != this.__bol) {
                        if (!z3) {
                            if (i8 >= this.__eol) {
                                return false;
                            }
                        }
                        if (this.__input[i8 - 1] != '\n') {
                            return false;
                        }
                    } else if (this.__previousChar != '\n') {
                        return false;
                    }
                    break;
                case 3:
                    if (i8 != this.__bol || this.__previousChar != '\n') {
                        return false;
                    }
                    break;
                case 4:
                    if ((z3 || i8 < this.__eol) && c5 != '\n') {
                        return false;
                    }
                    if (!this.__multiline && this.__eol - i8 > 1) {
                        return false;
                    }
                    break;
                case 5:
                    if ((z3 || i8 < this.__eol) && c5 != '\n') {
                        return false;
                    }
                    break;
                case 6:
                    if (((z3 || i8 < this.__eol) && c5 != '\n') || this.__eol - i8 > 1) {
                        return false;
                    }
                    break;
                case 7:
                    if ((!z3 && i8 >= this.__eol) || c5 == '\n') {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case '\b':
                    if (!z3 && i8 >= this.__eol) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case '\t':
                    int _getOperand = OpCode._getOperand(i);
                    if (c5 == 65535 && z3) {
                        c5 = this.__input[i8];
                    }
                    if (c5 >= 256 || (this.__program[_getOperand + (c5 >> 4)] & (1 << (c5 & 15))) != 0) {
                        return false;
                    }
                    if (!z3 && i8 >= this.__eol) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case '\n':
                case 16:
                case 17:
                    if (c6 == '\n') {
                        i5 = OpCode._getArg1(cArr, i);
                        c3 = OpCode._getArg2(this.__program, i);
                        _getNextOperator = OpCode._getNextOperator(i) + 2;
                    } else {
                        _getNextOperator = OpCode._getNextOperator(i);
                        i5 = c6 == 16 ? 0 : 1;
                        c3 = 65535;
                    }
                    char[] cArr2 = this.__program;
                    if (cArr2[_getNext] == 14) {
                        z2 = false;
                        c4 = cArr2[OpCode._getOperand(_getNext) + 1];
                    } else {
                        c4 = 65535;
                        z2 = true;
                    }
                    this.__inputOffset = i8;
                    if (!z4) {
                        int __repeat = __repeat(_getNextOperator, c3);
                        if (i5 < __repeat) {
                            char[] cArr3 = OpCode._opType;
                            char c7 = this.__program[_getNext];
                            if (cArr3[c7] == 4 && (!this.__multiline || c7 == 6)) {
                                i5 = __repeat;
                            }
                        }
                        while (__repeat >= i5) {
                            if ((z2 || (i6 = this.__inputOffset) >= this.__endOffset || this.__input[i6] == c4) && __match(_getNext)) {
                                return true;
                            }
                            __repeat--;
                            this.__inputOffset = i8 + __repeat;
                        }
                    } else if (i5 > 0 && __repeat(_getNextOperator, i5) < i5) {
                        return false;
                    } else {
                        while (true) {
                            if (c3 >= i5 || (c3 == 65535 && i5 > 0)) {
                                if ((z2 || (i7 = this.__inputOffset) >= this.__endOffset || this.__input[i7] == c4) && __match(_getNext)) {
                                    return true;
                                }
                                this.__inputOffset = i8 + i5;
                                if (__repeat(_getNextOperator, 1) == 0) {
                                    return false;
                                }
                                i5++;
                                this.__inputOffset = i8 + i5;
                            }
                        }
                    }
                    return false;
                case 11:
                    Perl5Repetition perl5Repetition = new Perl5Repetition();
                    perl5Repetition._lastRepetition = this.__currentRep;
                    this.__currentRep = perl5Repetition;
                    perl5Repetition._parenFloor = this.__lastParen;
                    perl5Repetition._numInstances = -1;
                    perl5Repetition._min = OpCode._getArg1(this.__program, i);
                    perl5Repetition._max = OpCode._getArg2(this.__program, i);
                    perl5Repetition._scan = OpCode._getNextOperator(i) + 2;
                    perl5Repetition._next = _getNext;
                    perl5Repetition._minMod = z4;
                    perl5Repetition._lastLocation = -1;
                    this.__inputOffset = i8;
                    boolean __match = __match(OpCode._getPrevOperator(_getNext));
                    this.__currentRep = perl5Repetition._lastRepetition;
                    return __match;
                case '\f':
                    if (cArr[_getNext] == '\f') {
                        int i9 = this.__lastParen;
                        int i10 = i;
                        do {
                            this.__inputOffset = i8;
                            if (__match(OpCode._getNextOperator(i10))) {
                                return true;
                            }
                            int i11 = this.__lastParen;
                            while (i11 > i9) {
                                this.__endMatchOffsets[i11] = -1;
                                i11--;
                            }
                            this.__lastParen = i11;
                            i10 = OpCode._getNext(this.__program, i10);
                            if (i10 != -1) {
                            }
                            return false;
                        } while (this.__program[i10] == '\f');
                        return false;
                    }
                    i = OpCode._getNextOperator(i);
                    continue;
                case 14:
                    int _getOperand2 = OpCode._getOperand(i);
                    char[] cArr4 = this.__program;
                    int i12 = _getOperand2 + 1;
                    char c8 = cArr4[_getOperand2];
                    if (cArr4[i12] != c5 || this.__eol - i8 < c8) {
                        return false;
                    }
                    if (c8 > 1 && !__compare(cArr4, i12, this.__input, i8, c8)) {
                        return false;
                    }
                    i8 += c8;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 18:
                    if (!z3 || !OpCode._isWordCharacter(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 19:
                    if ((!z3 && i8 >= this.__eol) || OpCode._isWordCharacter(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 20:
                case 21:
                    if ((OpCode._isWordCharacter(i8 == this.__bol ? this.__previousChar : this.__input[i8 + (-1)]) == OpCode._isWordCharacter(c5)) == (this.__program[i] == 20)) {
                        return false;
                    }
                    break;
                case 22:
                    if ((!z3 && i8 >= this.__eol) || !Character.isWhitespace(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 23:
                    if (!z3 || Character.isWhitespace(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 24:
                    if (!Character.isDigit(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                case 25:
                    if ((!z3 && i8 >= this.__eol) || Character.isDigit(c5)) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
                case 26:
                    char _getArg1 = OpCode._getArg1(cArr, i);
                    int i13 = this.__beginMatchOffsets[_getArg1];
                    if (i13 == -1 || (i2 = this.__endMatchOffsets[_getArg1]) == -1) {
                        return false;
                    }
                    if (i13 == i2) {
                        break;
                    } else {
                        char[] cArr5 = this.__input;
                        if (cArr5[i13] == c5 && (i4 = i8 + (i3 = i2 - i13)) <= this.__eol) {
                            if (i3 <= 1 || __compare(cArr5, i13, cArr5, i8, i3)) {
                                boolean z5 = i4 < this.__endOffset;
                                char c9 = z5 ? this.__input[i4] : (char) 65535;
                                z3 = z5;
                                i = _getNext;
                                c5 = c9;
                                i8 = i4;
                                continue;
                            } else {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    }
                    break;
                case 27:
                    char _getArg12 = OpCode._getArg1(cArr, i);
                    this.__beginMatchOffsets[_getArg12] = i8;
                    if (_getArg12 > this.__expSize) {
                        this.__expSize = _getArg12;
                        break;
                    }
                    break;
                case 28:
                    char _getArg13 = OpCode._getArg1(cArr, i);
                    this.__endMatchOffsets[_getArg13] = i8;
                    if (_getArg13 > this.__lastParen) {
                        this.__lastParen = _getArg13;
                        break;
                    }
                    break;
                case 29:
                    z4 = true;
                    break;
                case 30:
                    if (i8 != this.__bol) {
                        return true;
                    }
                    break;
                case 31:
                    this.__inputOffset = i8;
                    if (!__match(OpCode._getNextOperator(i))) {
                        return false;
                    }
                    break;
                case ' ':
                    this.__inputOffset = i8;
                    if (__match(OpCode._getNextOperator(i))) {
                        return false;
                    }
                    break;
                case '\"':
                    Perl5Repetition perl5Repetition2 = this.__currentRep;
                    int i14 = perl5Repetition2._numInstances;
                    int i15 = i14 + 1;
                    this.__inputOffset = i8;
                    if (i8 == perl5Repetition2._lastLocation) {
                        Perl5Repetition perl5Repetition3 = perl5Repetition2._lastRepetition;
                        this.__currentRep = perl5Repetition3;
                        int i16 = perl5Repetition3._numInstances;
                        if (__match(perl5Repetition2._next)) {
                            return true;
                        }
                        this.__currentRep._numInstances = i16;
                        this.__currentRep = perl5Repetition2;
                        return false;
                    } else if (i15 < perl5Repetition2._min) {
                        perl5Repetition2._numInstances = i15;
                        perl5Repetition2._lastLocation = i8;
                        if (__match(perl5Repetition2._scan)) {
                            return true;
                        }
                        perl5Repetition2._numInstances = i14;
                        return false;
                    } else if (perl5Repetition2._minMod) {
                        Perl5Repetition perl5Repetition4 = perl5Repetition2._lastRepetition;
                        this.__currentRep = perl5Repetition4;
                        int i17 = perl5Repetition4._numInstances;
                        if (__match(perl5Repetition2._next)) {
                            return true;
                        }
                        this.__currentRep._numInstances = i17;
                        this.__currentRep = perl5Repetition2;
                        if (i15 >= perl5Repetition2._max) {
                            return false;
                        }
                        this.__inputOffset = i8;
                        perl5Repetition2._numInstances = i15;
                        perl5Repetition2._lastLocation = i8;
                        if (__match(perl5Repetition2._scan)) {
                            return true;
                        }
                        perl5Repetition2._numInstances = i14;
                        return false;
                    } else {
                        if (i15 < perl5Repetition2._max) {
                            __pushState(perl5Repetition2._parenFloor);
                            perl5Repetition2._numInstances = i15;
                            perl5Repetition2._lastLocation = i8;
                            if (__match(perl5Repetition2._scan)) {
                                return true;
                            }
                            __popState();
                            this.__inputOffset = i8;
                        }
                        Perl5Repetition perl5Repetition5 = perl5Repetition2._lastRepetition;
                        this.__currentRep = perl5Repetition5;
                        int i18 = perl5Repetition5._numInstances;
                        if (__match(perl5Repetition2._next)) {
                            return true;
                        }
                        perl5Repetition2._numInstances = i18;
                        this.__currentRep = perl5Repetition2;
                        perl5Repetition2._numInstances = i14;
                        return false;
                    }
                case '#':
                case '$':
                    int _getOperand3 = OpCode._getOperand(i);
                    if (c5 == 65535 && z3) {
                        c5 = this.__input[i8];
                    }
                    if (!__matchUnicodeClass(c5, this.__program, _getOperand3, c6)) {
                        return false;
                    }
                    if (!z3 && i8 >= this.__eol) {
                        return false;
                    }
                    i8++;
                    z = i8 < this.__endOffset;
                    if (z) {
                        c2 = this.__input[i8];
                        c5 = c2;
                        z3 = z;
                        break;
                    }
                    c2 = 65535;
                    c5 = c2;
                    z3 = z;
                    break;
            }
            i = _getNext;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0009 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean __matchUnicodeClass(char r5, char[] r6, int r7, char r8) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Matcher.__matchUnicodeClass(char, char[], int, char):boolean");
    }

    private void __popState() {
        int[] iArr = (int[]) this.__stack.pop();
        this.__expSize = iArr[0];
        this.__lastParen = iArr[1];
        this.__inputOffset = iArr[2];
        for (int i = 3; i < iArr.length; i += 3) {
            int i2 = iArr[i + 2];
            this.__beginMatchOffsets[i2] = iArr[i + 1];
            if (i2 <= this.__lastParen) {
                this.__endMatchOffsets[i2] = iArr[i];
            }
        }
        for (int i3 = this.__lastParen + 1; i3 <= this.__numParentheses; i3++) {
            if (i3 > this.__expSize) {
                this.__beginMatchOffsets[i3] = -1;
            }
            this.__endMatchOffsets[i3] = -1;
        }
    }

    private void __pushState(int i) {
        int i2 = this.__expSize;
        int i3 = (i2 - i) * 3;
        int[] iArr = new int[i3 > 0 ? i3 + 3 : 3];
        iArr[0] = i2;
        iArr[1] = this.__lastParen;
        iArr[2] = this.__inputOffset;
        while (i2 > i) {
            iArr[i3] = this.__endMatchOffsets[i2];
            iArr[i3 + 1] = this.__beginMatchOffsets[i2];
            iArr[i3 + 2] = i2;
            i2 -= 3;
            i3 -= 3;
        }
        this.__stack.push(iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int __repeat(int i, int i2) {
        char c2;
        int i3 = this.__inputOffset;
        int i4 = this.__eol;
        if (i2 != 65535 && i2 < i4 - i3) {
            i4 = i3 + i2;
        }
        int _getOperand = OpCode._getOperand(i);
        char c3 = this.__program[i];
        if (c3 == 7) {
            while (i3 < i4 && this.__input[i3] != '\n') {
                i3++;
            }
        } else if (c3 == '\b') {
            i3 = i4;
        } else if (c3 != '\t') {
            if (c3 == 14) {
                int i5 = _getOperand + 1;
                while (i3 < i4 && this.__program[i5] == this.__input[i3]) {
                    i3++;
                }
            } else if (c3 == 18) {
                while (i3 < i4 && OpCode._isWordCharacter(this.__input[i3])) {
                    i3++;
                }
            } else if (c3 == 19) {
                while (i3 < i4 && !OpCode._isWordCharacter(this.__input[i3])) {
                    i3++;
                }
            } else if (c3 != '#' && c3 != '$') {
                switch (c3) {
                    case 22:
                        while (i3 < i4 && Character.isWhitespace(this.__input[i3])) {
                            i3++;
                        }
                        break;
                    case 23:
                        while (i3 < i4 && !Character.isWhitespace(this.__input[i3])) {
                            i3++;
                        }
                        break;
                    case 24:
                        while (i3 < i4 && Character.isDigit(this.__input[i3])) {
                            i3++;
                        }
                        break;
                    case 25:
                        while (i3 < i4 && !Character.isDigit(this.__input[i3])) {
                            i3++;
                        }
                        break;
                }
            } else if (i3 < i4) {
                char c4 = this.__input[i3];
                while (__matchUnicodeClass(c4, this.__program, _getOperand, c3) && (i3 = i3 + 1) < i4) {
                    c4 = this.__input[i3];
                }
            }
        } else if (i3 < i4 && (c2 = this.__input[i3]) < 256) {
            while (c2 < 256) {
                if (((1 << (c2 & 15)) & this.__program[(c2 >> 4) + _getOperand]) != 0 || (i3 = i3 + 1) >= i4) {
                    break;
                }
                c2 = this.__input[i3];
            }
        }
        int i6 = i3 - this.__inputOffset;
        this.__inputOffset = i3;
        return i6;
    }

    private void __setLastMatchResult() {
        Perl5MatchResult perl5MatchResult = new Perl5MatchResult(this.__numParentheses + 1);
        this.__lastMatchResult = perl5MatchResult;
        if (this.__endMatchOffsets[0] > this.__originalInput.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        perl5MatchResult._matchBeginOffset = this.__beginMatchOffsets[0];
        int i = 0;
        while (true) {
            int i2 = this.__numParentheses;
            if (i2 < 0) {
                Perl5MatchResult perl5MatchResult2 = this.__lastMatchResult;
                char[] cArr = this.__originalInput;
                int i3 = this.__beginMatchOffsets[0];
                perl5MatchResult2._match = new String(cArr, i3, i - i3);
                this.__originalInput = null;
                return;
            }
            int i4 = this.__beginMatchOffsets[i2];
            if (i4 >= 0) {
                this.__lastMatchResult._beginGroupOffset[this.__numParentheses] = i4 - this.__lastMatchResult._matchBeginOffset;
            } else {
                this.__lastMatchResult._beginGroupOffset[this.__numParentheses] = -1;
            }
            int i5 = this.__endMatchOffsets[this.__numParentheses];
            if (i5 >= 0) {
                this.__lastMatchResult._endGroupOffset[this.__numParentheses] = i5 - this.__lastMatchResult._matchBeginOffset;
                if (i5 > i && i5 <= this.__originalInput.length) {
                    i = i5;
                }
            } else {
                this.__lastMatchResult._endGroupOffset[this.__numParentheses] = -1;
            }
            this.__numParentheses--;
        }
    }

    private boolean __tryExpression(int i) {
        this.__inputOffset = i;
        this.__lastParen = 0;
        this.__expSize = 0;
        if (this.__numParentheses > 0) {
            for (int i2 = 0; i2 <= this.__numParentheses; i2++) {
                this.__beginMatchOffsets[i2] = -1;
                this.__endMatchOffsets[i2] = -1;
            }
        }
        if (__match(1)) {
            this.__beginMatchOffsets[0] = i;
            this.__endMatchOffsets[0] = this.__inputOffset;
            return true;
        }
        return false;
    }

    char[] _toLower(char[] cArr) {
        int length = cArr.length;
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        for (int i = 0; i < length; i++) {
            if (Character.isUpperCase(cArr2[i])) {
                cArr2[i] = Character.toLowerCase(cArr2[i]);
            }
        }
        return cArr2;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(String str, Pattern pattern) {
        return contains(str.toCharArray(), pattern);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        char[] cArr;
        if (patternMatcherInput._currentOffset > patternMatcherInput._endOffset) {
            return false;
        }
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = patternMatcherInput._originalBuffer;
        this.__originalInput = patternMatcherInput._originalBuffer;
        if (perl5Pattern._isCaseInsensitive) {
            if (patternMatcherInput._toLowerBuffer == null) {
                patternMatcherInput._toLowerBuffer = _toLower(this.__originalInput);
            }
            cArr = patternMatcherInput._toLowerBuffer;
        } else {
            cArr = this.__originalInput;
        }
        this.__lastMatchInputEndOffset = patternMatcherInput.getMatchEndOffset();
        boolean __interpret = __interpret(perl5Pattern, cArr, patternMatcherInput._beginOffset, patternMatcherInput._endOffset, patternMatcherInput._currentOffset);
        if (__interpret) {
            patternMatcherInput.setCurrentOffset(this.__endMatchOffsets[0]);
            patternMatcherInput.setMatchOffsets(this.__beginMatchOffsets[0], this.__endMatchOffsets[0]);
        } else {
            patternMatcherInput.setCurrentOffset(patternMatcherInput._endOffset + 1);
        }
        this.__lastMatchInputEndOffset = -100;
        return __interpret;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(char[] cArr, Pattern pattern) {
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = cArr;
        if (perl5Pattern._isCaseInsensitive) {
            cArr = _toLower(cArr);
        }
        char[] cArr2 = cArr;
        return __interpret(perl5Pattern, cArr2, 0, cArr2.length, 0);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public MatchResult getMatch() {
        if (this.__lastSuccess) {
            if (this.__lastMatchResult == null) {
                __setLastMatchResult();
            }
            return this.__lastMatchResult;
        }
        return null;
    }

    public boolean isMultiline() {
        return this.__multiline;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(String str, Pattern pattern) {
        return matches(str.toCharArray(), pattern);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        char[] cArr;
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = patternMatcherInput._originalBuffer;
        if (perl5Pattern._isCaseInsensitive) {
            if (patternMatcherInput._toLowerBuffer == null) {
                patternMatcherInput._toLowerBuffer = _toLower(this.__originalInput);
            }
            cArr = patternMatcherInput._toLowerBuffer;
        } else {
            cArr = this.__originalInput;
        }
        __initInterpreterGlobals(perl5Pattern, cArr, patternMatcherInput._beginOffset, patternMatcherInput._endOffset, patternMatcherInput._beginOffset);
        this.__lastMatchResult = null;
        if (__tryExpression(patternMatcherInput._beginOffset) && (this.__endMatchOffsets[0] == patternMatcherInput._endOffset || patternMatcherInput.length() == 0 || patternMatcherInput._beginOffset == patternMatcherInput._endOffset)) {
            this.__lastSuccess = true;
            return true;
        }
        this.__lastSuccess = false;
        return false;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(char[] cArr, Pattern pattern) {
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = cArr;
        if (perl5Pattern._isCaseInsensitive) {
            cArr = _toLower(cArr);
        }
        __initInterpreterGlobals(perl5Pattern, cArr, 0, cArr.length, 0);
        boolean z = false;
        if (__tryExpression(0) && this.__endMatchOffsets[0] == cArr.length) {
            z = true;
        }
        this.__lastSuccess = z;
        this.__lastMatchResult = null;
        return z;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(String str, Pattern pattern) {
        return matchesPrefix(str.toCharArray(), pattern, 0);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        char[] cArr;
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = patternMatcherInput._originalBuffer;
        if (perl5Pattern._isCaseInsensitive) {
            if (patternMatcherInput._toLowerBuffer == null) {
                patternMatcherInput._toLowerBuffer = _toLower(this.__originalInput);
            }
            cArr = patternMatcherInput._toLowerBuffer;
        } else {
            cArr = this.__originalInput;
        }
        __initInterpreterGlobals(perl5Pattern, cArr, patternMatcherInput._beginOffset, patternMatcherInput._endOffset, patternMatcherInput._currentOffset);
        boolean __tryExpression = __tryExpression(patternMatcherInput._currentOffset);
        this.__lastSuccess = __tryExpression;
        this.__lastMatchResult = null;
        return __tryExpression;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(char[] cArr, Pattern pattern) {
        return matchesPrefix(cArr, pattern, 0);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(char[] cArr, Pattern pattern, int i) {
        Perl5Pattern perl5Pattern = (Perl5Pattern) pattern;
        this.__originalInput = cArr;
        if (perl5Pattern._isCaseInsensitive) {
            cArr = _toLower(cArr);
        }
        char[] cArr2 = cArr;
        __initInterpreterGlobals(perl5Pattern, cArr2, 0, cArr2.length, i);
        boolean __tryExpression = __tryExpression(i);
        this.__lastSuccess = __tryExpression;
        this.__lastMatchResult = null;
        return __tryExpression;
    }

    public void setMultiline(boolean z) {
        this.__multiline = z;
    }
}
