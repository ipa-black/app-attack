package org.apache.oro.text;

import org.apache.oro.text.regex.MalformedPatternException;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternCompiler;
import org.apache.oro.text.regex.Perl5Compiler;
/* loaded from: classes3.dex */
public final class GlobCompiler implements PatternCompiler {
    public static final int CASE_INSENSITIVE_MASK = 1;
    public static final int DEFAULT_MASK = 0;
    public static final int QUESTION_MATCHES_ZERO_OR_ONE_MASK = 4;
    public static final int READ_ONLY_MASK = 8;
    public static final int STAR_CANNOT_MATCH_NULL_MASK = 2;
    private Perl5Compiler __perl5Compiler = new Perl5Compiler();

    private static boolean __isGlobMetaCharacter(char c2) {
        return c2 == '*' || c2 == '?' || c2 == '[' || c2 == ']';
    }

    private static boolean __isPerl5MetaCharacter(char c2) {
        return c2 == '*' || c2 == '?' || c2 == '+' || c2 == '[' || c2 == ']' || c2 == '(' || c2 == ')' || c2 == '|' || c2 == '^' || c2 == '$' || c2 == '.' || c2 == '{' || c2 == '}' || c2 == '\\';
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
        if (r6 != '^') goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String globToPerl5(char[] r9, int r10) {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            int r1 = r9.length
            int r1 = r1 * 2
            r0.<init>(r1)
            r1 = r10 & 4
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L10
            r1 = r2
            goto L11
        L10:
            r1 = r3
        L11:
            r10 = r10 & 2
            if (r10 == 0) goto L17
            r10 = r2
            goto L18
        L17:
            r10 = r3
        L18:
            r4 = r3
            r5 = r4
        L1a:
            int r6 = r9.length
            if (r4 < r6) goto L22
            java.lang.String r9 = r0.toString()
            return r9
        L22:
            char r6 = r9[r4]
            r7 = 42
            if (r6 == r7) goto L8d
            r7 = 63
            if (r6 == r7) goto L82
            r7 = 92
            switch(r6) {
                case 91: goto L61;
                case 92: goto L48;
                case 93: goto L43;
                default: goto L31;
            }
        L31:
            if (r5 != 0) goto L3c
            boolean r6 = __isPerl5MetaCharacter(r6)
            if (r6 == 0) goto L3c
            r0.append(r7)
        L3c:
            char r6 = r9[r4]
        L3e:
            r0.append(r6)
            goto L9d
        L43:
            r0.append(r6)
            r5 = r3
            goto L9d
        L48:
            r0.append(r7)
            int r6 = r9.length
            int r6 = r6 - r2
            if (r4 != r6) goto L50
            goto L8f
        L50:
            int r6 = r4 + 1
            char r8 = r9[r6]
            boolean r8 = __isGlobMetaCharacter(r8)
            if (r8 == 0) goto L8f
            char r4 = r9[r6]
            r0.append(r4)
            r4 = r6
            goto L9d
        L61:
            r0.append(r6)
            int r5 = r4 + 1
            int r6 = r9.length
            if (r5 >= r6) goto L80
            char r6 = r9[r5]
            r7 = 33
            r8 = 94
            if (r6 == r7) goto L7c
            r7 = 93
            if (r6 == r7) goto L78
            if (r6 == r8) goto L7c
            goto L80
        L78:
            r0.append(r7)
            goto L7f
        L7c:
            r0.append(r8)
        L7f:
            r4 = r5
        L80:
            r5 = r2
            goto L9d
        L82:
            if (r5 == 0) goto L85
            goto L8f
        L85:
            if (r1 == 0) goto L8a
            java.lang.String r6 = ".?"
            goto L9a
        L8a:
            r6 = 46
            goto L3e
        L8d:
            if (r5 == 0) goto L93
        L8f:
            r0.append(r7)
            goto L9d
        L93:
            if (r10 == 0) goto L98
            java.lang.String r6 = ".+"
            goto L9a
        L98:
            java.lang.String r6 = ".*"
        L9a:
            r0.append(r6)
        L9d:
            int r4 = r4 + r2
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.GlobCompiler.globToPerl5(char[], int):java.lang.String");
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

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(char[] cArr, int i) throws MalformedPatternException {
        int i2 = (i & 1) != 0 ? 1 : 0;
        if ((i & 8) != 0) {
            i2 |= 32768;
        }
        return this.__perl5Compiler.compile(globToPerl5(cArr, i), i2);
    }
}
