package org.apache.oro.text.regex;
/* loaded from: classes3.dex */
public class Perl5Substitution extends StringSubstitution {
    public static final int INTERPOLATE_ALL = 0;
    public static final int INTERPOLATE_NONE = -1;
    static final int _OPCODE_COPY = -1;
    static final int _OPCODE_ENDCASE_MODE = -6;
    static final int _OPCODE_LOWERCASE_CHAR = -2;
    static final int _OPCODE_LOWERCASE_MODE = -4;
    static final int _OPCODE_UPPERCASE_CHAR = -3;
    static final int _OPCODE_UPPERCASE_MODE = -5;
    private static final int __MAX_GROUPS = 65535;
    private static final int __OPCODE_STORAGE_SIZE = 32;
    transient String _lastInterpolation;
    int _numInterpolations;
    int[] _subOpcodes;
    int _subOpcodesCount;
    char[] _substitutionChars;

    public Perl5Substitution() {
        this("", 0);
    }

    public Perl5Substitution(String str) {
        this(str, 0);
    }

    public Perl5Substitution(String str, int i) {
        setSubstitution(str, i);
    }

    private void __addElement(int i) {
        int[] iArr = this._subOpcodes;
        int length = iArr.length;
        if (this._subOpcodesCount == length) {
            int[] iArr2 = new int[length + 32];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            this._subOpcodes = iArr2;
        }
        int[] iArr3 = this._subOpcodes;
        int i2 = this._subOpcodesCount;
        this._subOpcodesCount = i2 + 1;
        iArr3[i2] = i;
    }

    private static final boolean __isInterpolationCharacter(char c2) {
        return Character.isDigit(c2) || c2 == '&';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void __parseSubs(String str) {
        int i;
        int i2;
        char[] charArray = str.toCharArray();
        this._substitutionChars = charArray;
        int length = charArray.length;
        this._subOpcodes = new int[32];
        int i3 = 0;
        this._subOpcodesCount = 0;
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        int i7 = -1;
        while (i4 < length) {
            char c2 = charArray[i4];
            int i8 = i4 + 1;
            z = z;
            if (z) {
                int digit = Character.digit(c2, 10);
                if (digit > -1) {
                    if (i5 <= 65535) {
                        i5 = (i5 * 10) + digit;
                    }
                    if (i8 == length) {
                        __addElement(i5);
                    }
                } else if (c2 == '&' && charArray[i4 - 1] == '$') {
                    __addElement(i3);
                    z = i3;
                    i5 = z ? 1 : 0;
                } else {
                    __addElement(i5);
                    int i9 = i3;
                    i5 = i9 == 1 ? 1 : 0;
                    z = i9;
                }
                i4++;
                i3 = 0;
                z = z;
            }
            if ((c2 == '$' || c2 == '\\') && i6 == 0) {
                if (i7 >= 0) {
                    __addElement(i4 - i7);
                    i7 = -1;
                }
                if (i8 != length) {
                    char c3 = charArray[i8];
                    if (c2 == '$') {
                        z = __isInterpolationCharacter(c3);
                    } else if (c2 == '\\') {
                        if (c3 == 'l') {
                            if (!z2) {
                                i2 = -2;
                                __addElement(i2);
                                i4 = i8;
                            }
                        } else if (c3 != 'u') {
                            if (c3 == 'L') {
                                i = -4;
                            } else if (c3 == 'U') {
                                i = -5;
                            } else if (c3 == 'E') {
                                __addElement(-6);
                                i4 = i8;
                                z2 = false;
                            } else {
                                i6 = 1;
                            }
                            __addElement(i);
                            i4 = i8;
                            z2 = true;
                        } else if (!z2) {
                            i2 = -3;
                            __addElement(i2);
                            i4 = i8;
                        }
                    }
                }
            } else {
                if (i7 < 0) {
                    __addElement(-1);
                    __addElement(i4);
                    i7 = i4;
                }
                if (i8 == length) {
                    __addElement(i8 - i7);
                }
                i6 = i3;
            }
            i4++;
            i3 = 0;
            z = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void _calcSub(java.lang.StringBuffer r17, org.apache.oro.text.regex.MatchResult r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            int[] r3 = r0._subOpcodes
            char[] r4 = r0._substitutionChars
            r5 = 0
            java.lang.String r6 = r2.group(r5)
            char[] r6 = r6.toCharArray()
            int r7 = r0._subOpcodesCount
            r8 = r5
            r9 = r8
        L17:
            if (r8 < r7) goto L1a
            return
        L1a:
            r10 = r3[r8]
            r11 = -3
            r12 = -2
            r13 = -5
            r14 = -4
            if (r10 < 0) goto L47
            int r15 = r18.groups()
            if (r10 >= r15) goto L47
            int r15 = r2.begin(r10)
            if (r15 >= 0) goto L30
            goto Lba
        L30:
            int r10 = r2.end(r10)
            if (r10 >= 0) goto L38
            goto Lba
        L38:
            int r5 = r18.length()
            if (r15 >= r5) goto Lba
            if (r10 > r5) goto Lba
            if (r15 < r10) goto L44
            goto Lba
        L44:
            int r10 = r10 - r15
            r5 = r6
            goto L5c
        L47:
            r5 = -1
            if (r10 != r5) goto La7
            int r5 = r8 + 1
            if (r5 < r7) goto L51
            r8 = r5
            goto Lba
        L51:
            r15 = r3[r5]
            int r8 = r8 + 2
            if (r8 < r7) goto L59
            goto Lba
        L59:
            r10 = r3[r8]
            r5 = r4
        L5c:
            if (r9 != r12) goto L70
            int r9 = r15 + 1
            char r11 = r5[r15]
            char r11 = java.lang.Character.toLowerCase(r11)
        L66:
            r1.append(r11)
            int r10 = r10 + (-1)
            r1.append(r5, r9, r10)
        L6e:
            r9 = 0
            goto Lba
        L70:
            if (r9 != r11) goto L7b
            int r9 = r15 + 1
            char r11 = r5[r15]
            char r11 = java.lang.Character.toUpperCase(r11)
            goto L66
        L7b:
            if (r9 != r14) goto L8f
            int r11 = r15 + r10
        L7f:
            if (r15 < r11) goto L82
            goto Lba
        L82:
            int r10 = r15 + 1
            char r12 = r5[r15]
            char r12 = java.lang.Character.toLowerCase(r12)
            r1.append(r12)
            r15 = r10
            goto L7f
        L8f:
            if (r9 != r13) goto La3
            int r11 = r15 + r10
        L93:
            if (r15 < r11) goto L96
            goto Lba
        L96:
            int r10 = r15 + 1
            char r12 = r5[r15]
            char r12 = java.lang.Character.toUpperCase(r12)
            r1.append(r12)
            r15 = r10
            goto L93
        La3:
            r1.append(r5, r15, r10)
            goto Lba
        La7:
            if (r10 == r12) goto Lb5
            if (r10 != r11) goto Lac
            goto Lb5
        Lac:
            if (r10 == r14) goto Lb9
            if (r10 != r13) goto Lb1
            goto Lb9
        Lb1:
            r5 = -6
            if (r10 != r5) goto Lba
            goto L6e
        Lb5:
            if (r9 == r14) goto Lba
            if (r9 == r13) goto Lba
        Lb9:
            r9 = r10
        Lba:
            int r8 = r8 + 1
            r5 = 0
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.regex.Perl5Substitution._calcSub(java.lang.StringBuffer, org.apache.oro.text.regex.MatchResult):void");
    }

    String _finalInterpolatedSub(MatchResult matchResult) {
        StringBuffer stringBuffer = new StringBuffer(10);
        _calcSub(stringBuffer, matchResult);
        return stringBuffer.toString();
    }

    @Override // org.apache.oro.text.regex.StringSubstitution, org.apache.oro.text.regex.Substitution
    public void appendSubstitution(StringBuffer stringBuffer, MatchResult matchResult, int i, PatternMatcherInput patternMatcherInput, PatternMatcher patternMatcher, Pattern pattern) {
        if (this._subOpcodes == null) {
            super.appendSubstitution(stringBuffer, matchResult, i, patternMatcherInput, patternMatcher, pattern);
            return;
        }
        int i2 = this._numInterpolations;
        if (i2 < 1 || i < i2) {
            _calcSub(stringBuffer, matchResult);
            return;
        }
        if (i == i2) {
            this._lastInterpolation = _finalInterpolatedSub(matchResult);
        }
        stringBuffer.append(this._lastInterpolation);
    }

    @Override // org.apache.oro.text.regex.StringSubstitution
    public void setSubstitution(String str) {
        setSubstitution(str, 0);
    }

    public void setSubstitution(String str, int i) {
        super.setSubstitution(str);
        this._numInterpolations = i;
        if (i == -1 || (str.indexOf(36) == -1 && str.indexOf(92) == -1)) {
            this._subOpcodes = null;
        } else {
            __parseSubs(str);
        }
        this._lastInterpolation = null;
    }
}
