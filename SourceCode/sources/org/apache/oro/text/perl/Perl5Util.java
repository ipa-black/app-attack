package org.apache.oro.text.perl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Vector;
import org.apache.oro.text.PatternCache;
import org.apache.oro.text.PatternCacheLRU;
import org.apache.oro.text.regex.MalformedPatternException;
import org.apache.oro.text.regex.MatchResult;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternMatcherInput;
import org.apache.oro.text.regex.Perl5Compiler;
import org.apache.oro.text.regex.Perl5Matcher;
import org.apache.oro.text.regex.Perl5Substitution;
import org.apache.oro.text.regex.Util;
import org.apache.oro.util.Cache;
import org.apache.oro.util.CacheLRU;
/* loaded from: classes3.dex */
public final class Perl5Util implements MatchResult {
    public static final int SPLIT_ALL = 0;
    private static final String __matchExpression = "m?(\\W)(.*)\\1([imsx]*)";
    private static final String __nullString = "";
    private Cache __expressionCache;
    private int __inputBeginOffset;
    private int __inputEndOffset;
    private MatchResult __lastMatch;
    private Pattern __matchPattern;
    private Perl5Matcher __matcher;
    private Object __originalInput;
    private PatternCache __patternCache;
    private ArrayList __splitList;

    public Perl5Util() {
        this(new PatternCacheLRU());
    }

    public Perl5Util(PatternCache patternCache) {
        this.__splitList = new ArrayList();
        this.__matcher = new Perl5Matcher();
        this.__patternCache = patternCache;
        this.__expressionCache = new CacheLRU(patternCache.capacity());
        __compilePatterns();
    }

    private void __compilePatterns() {
        try {
            this.__matchPattern = new Perl5Compiler().compile(__matchExpression, 16);
        } catch (MalformedPatternException e2) {
            throw new RuntimeException(e2.getMessage());
        }
    }

    private Pattern __parseMatchExpression(String str) throws MalformedPerl5PatternException {
        Object element = this.__expressionCache.getElement(str);
        if (element != null) {
            try {
                return (Pattern) element;
            } catch (ClassCastException unused) {
            }
        }
        if (this.__matcher.matches(str, this.__matchPattern)) {
            MatchResult match = this.__matcher.getMatch();
            String group = match.group(2);
            String group2 = match.group(3);
            int i = 0;
            if (group2 != null) {
                int length = group2.length();
                while (true) {
                    int i2 = length - 1;
                    if (length <= 0) {
                        break;
                    }
                    char charAt = group2.charAt(i2);
                    if (charAt == 'i') {
                        i |= 1;
                    } else if (charAt == 'm') {
                        i |= 8;
                    } else if (charAt == 's') {
                        i |= 16;
                    } else if (charAt != 'x') {
                        throw new MalformedPerl5PatternException(new StringBuffer("Invalid options: ").append(group2).toString());
                    } else {
                        i |= 32;
                    }
                    length = i2;
                }
            }
            Pattern pattern = this.__patternCache.getPattern(group, i);
            this.__expressionCache.addElement(str, pattern);
            return pattern;
        }
        throw new MalformedPerl5PatternException(new StringBuffer("Invalid expression: ").append(str).toString());
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int begin(int i) {
        return this.__lastMatch.begin(i);
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int beginOffset(int i) {
        return this.__lastMatch.beginOffset(i);
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int end(int i) {
        return this.__lastMatch.end(i);
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int endOffset(int i) {
        return this.__lastMatch.endOffset(i);
    }

    public synchronized MatchResult getMatch() {
        return this.__lastMatch;
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized String group(int i) {
        return this.__lastMatch.group(i);
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int groups() {
        return this.__lastMatch.groups();
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized int length() {
        return this.__lastMatch.length();
    }

    public synchronized boolean match(String str, String str2) throws MalformedPerl5PatternException {
        return match(str, str2.toCharArray());
    }

    public synchronized boolean match(String str, PatternMatcherInput patternMatcherInput) throws MalformedPerl5PatternException {
        boolean contains;
        contains = this.__matcher.contains(patternMatcherInput, __parseMatchExpression(str));
        if (contains) {
            this.__lastMatch = this.__matcher.getMatch();
            this.__originalInput = patternMatcherInput.getInput();
            this.__inputBeginOffset = patternMatcherInput.getBeginOffset();
            this.__inputEndOffset = patternMatcherInput.getEndOffset();
        }
        return contains;
    }

    public synchronized boolean match(String str, char[] cArr) throws MalformedPerl5PatternException {
        boolean contains;
        __parseMatchExpression(str);
        contains = this.__matcher.contains(cArr, __parseMatchExpression(str));
        if (contains) {
            this.__lastMatch = this.__matcher.getMatch();
            this.__originalInput = cArr;
            this.__inputBeginOffset = 0;
            this.__inputEndOffset = cArr.length;
        }
        return contains;
    }

    public synchronized String postMatch() {
        if (this.__originalInput == null) {
            return "";
        }
        int endOffset = this.__lastMatch.endOffset(0);
        if (endOffset < 0) {
            return "";
        }
        Object obj = this.__originalInput;
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (endOffset >= cArr.length) {
                return "";
            }
            return new String(cArr, endOffset, this.__inputEndOffset - endOffset);
        } else if (obj instanceof String) {
            String str = (String) obj;
            if (endOffset >= str.length()) {
                return "";
            }
            return str.substring(endOffset, this.__inputEndOffset);
        } else {
            return "";
        }
    }

    public synchronized char[] postMatchCharArray() {
        char[] cArr = null;
        if (this.__originalInput == null) {
            return null;
        }
        int endOffset = this.__lastMatch.endOffset(0);
        if (endOffset < 0) {
            return null;
        }
        Object obj = this.__originalInput;
        if (obj instanceof char[]) {
            char[] cArr2 = (char[]) obj;
            if (endOffset >= cArr2.length) {
                return null;
            }
            int i = this.__inputEndOffset - endOffset;
            char[] cArr3 = new char[i];
            System.arraycopy(cArr2, endOffset, cArr3, 0, i);
            cArr = cArr3;
        } else if (obj instanceof String) {
            String str = (String) obj;
            int i2 = this.__inputEndOffset;
            if (endOffset >= i2) {
                return null;
            }
            cArr = new char[i2 - endOffset];
            str.getChars(endOffset, i2, cArr, 0);
        }
        return cArr;
    }

    public synchronized String preMatch() {
        if (this.__originalInput == null) {
            return "";
        }
        int beginOffset = this.__lastMatch.beginOffset(0);
        if (beginOffset <= 0) {
            return "";
        }
        Object obj = this.__originalInput;
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (beginOffset > cArr.length) {
                beginOffset = cArr.length;
            }
            return new String(cArr, this.__inputBeginOffset, beginOffset);
        } else if (obj instanceof String) {
            String str = (String) obj;
            if (beginOffset > str.length()) {
                beginOffset = str.length();
            }
            return str.substring(this.__inputBeginOffset, beginOffset);
        } else {
            return "";
        }
    }

    public synchronized char[] preMatchCharArray() {
        char[] cArr;
        char[] cArr2 = null;
        if (this.__originalInput == null) {
            return null;
        }
        int beginOffset = this.__lastMatch.beginOffset(0);
        if (beginOffset <= 0) {
            return null;
        }
        Object obj = this.__originalInput;
        if (!(obj instanceof char[])) {
            if (obj instanceof String) {
                String str = (String) obj;
                if (beginOffset >= str.length()) {
                    beginOffset = str.length();
                }
                int i = this.__inputBeginOffset;
                cArr = new char[beginOffset - i];
                str.getChars(i, beginOffset, cArr, 0);
            }
            return cArr2;
        }
        char[] cArr3 = (char[]) obj;
        if (beginOffset >= cArr3.length) {
            beginOffset = cArr3.length;
        }
        int i2 = this.__inputBeginOffset;
        int i3 = beginOffset - i2;
        cArr = new char[i3];
        System.arraycopy(cArr3, i2, cArr, 0, i3);
        cArr2 = cArr;
        return cArr2;
    }

    public synchronized Vector split(String str) throws MalformedPerl5PatternException {
        return split("/\\s+/", str);
    }

    public synchronized Vector split(String str, String str2) throws MalformedPerl5PatternException {
        return split(str, str2, 0);
    }

    public synchronized Vector split(String str, String str2, int i) throws MalformedPerl5PatternException {
        Vector vector;
        vector = new Vector(20);
        split(vector, str, str2, i);
        return vector;
    }

    public synchronized void split(Collection collection, String str) throws MalformedPerl5PatternException {
        split(collection, "/\\s+/", str);
    }

    public synchronized void split(Collection collection, String str, String str2) throws MalformedPerl5PatternException {
        split(collection, str, str2, 0);
    }

    public synchronized void split(Collection collection, String str, String str2, int i) throws MalformedPerl5PatternException {
        Pattern __parseMatchExpression = __parseMatchExpression(str);
        PatternMatcherInput patternMatcherInput = new PatternMatcherInput(str2);
        MatchResult matchResult = null;
        int i2 = 0;
        while (true) {
            i--;
            if (i == 0 || !this.__matcher.contains(patternMatcherInput, __parseMatchExpression)) {
                break;
            }
            matchResult = this.__matcher.getMatch();
            this.__splitList.add(str2.substring(i2, matchResult.beginOffset(0)));
            int groups = matchResult.groups();
            if (groups > 1) {
                for (int i3 = 1; i3 < groups; i3++) {
                    String group = matchResult.group(i3);
                    if (group != null && group.length() > 0) {
                        this.__splitList.add(group);
                    }
                }
            }
            i2 = matchResult.endOffset(0);
        }
        this.__splitList.add(str2.substring(i2, str2.length()));
        for (int size = this.__splitList.size() - 1; size >= 0 && ((String) this.__splitList.get(size)).length() == 0; size--) {
            this.__splitList.remove(size);
        }
        collection.addAll(this.__splitList);
        this.__splitList.clear();
        this.__lastMatch = matchResult;
    }

    public synchronized int substitute(StringBuffer stringBuffer, String str, String str2) throws MalformedPerl5PatternException {
        char c2;
        int i;
        Object element = this.__expressionCache.getElement(str);
        if (element != null) {
            try {
                ParsedSubstitutionEntry parsedSubstitutionEntry = (ParsedSubstitutionEntry) element;
                int substitute = Util.substitute(stringBuffer, this.__matcher, parsedSubstitutionEntry._pattern, parsedSubstitutionEntry._substitution, str2, parsedSubstitutionEntry._numSubstitutions);
                this.__lastMatch = this.__matcher.getMatch();
                return substitute;
            } catch (ClassCastException unused) {
            }
        }
        char[] charArray = str.toCharArray();
        if (charArray.length >= 4) {
            boolean z = false;
            if (charArray[0] == 's' && !Character.isLetterOrDigit(charArray[1]) && (c2 = charArray[1]) != '-') {
                int i2 = 2;
                boolean z2 = false;
                while (true) {
                    if (i2 >= charArray.length) {
                        i2 = -1;
                        break;
                    }
                    char c3 = charArray[i2];
                    if (c3 != '\\') {
                        if (c3 == c2 && !z2) {
                            break;
                        } else if (!z2) {
                            i2++;
                            z = false;
                        }
                    }
                    z2 = !z2;
                    i2++;
                    z = false;
                }
                if (i2 == -1 || i2 == charArray.length - 1) {
                    throw new MalformedPerl5PatternException(new StringBuffer().append("Invalid expression: ").append(str).toString());
                }
                StringBuffer stringBuffer2 = new StringBuffer(charArray.length - i2);
                int i3 = i2 + 1;
                boolean z3 = z;
                boolean z4 = true;
                while (true) {
                    if (i3 >= charArray.length) {
                        i3 = -1;
                        break;
                    }
                    char c4 = charArray[i3];
                    if (c4 != '\\') {
                        if (c4 == c2 && z4) {
                            break;
                        }
                        z4 = true;
                        z3 = false;
                    } else {
                        z3 = !z3;
                        if (z3 && (i = i3 + 1) < charArray.length && charArray[i] == c2 && str.lastIndexOf(c2, charArray.length - 1) != i) {
                            z4 = false;
                            i3++;
                        }
                    }
                    stringBuffer2.append(charArray[i3]);
                    i3++;
                }
                if (i3 != -1) {
                    int i4 = c2 != '\'' ? 0 : -1;
                    int i5 = 1;
                    int i6 = 0;
                    for (int i7 = i3 + 1; i7 < charArray.length; i7++) {
                        char c5 = charArray[i7];
                        if (c5 == 'g') {
                            i5 = -1;
                        } else if (c5 == 'i') {
                            i6 |= 1;
                        } else if (c5 == 'm') {
                            i6 |= 8;
                        } else if (c5 == 'o') {
                            i4 = 1;
                        } else if (c5 == 's') {
                            i6 |= 16;
                        } else if (c5 != 'x') {
                            throw new MalformedPerl5PatternException(new StringBuffer().append("Invalid option: ").append(charArray[i7]).toString());
                        } else {
                            i6 |= 32;
                        }
                    }
                    Pattern pattern = this.__patternCache.getPattern(new String(charArray, 2, i2 - 2), i6);
                    Perl5Substitution perl5Substitution = new Perl5Substitution(stringBuffer2.toString(), i4);
                    this.__expressionCache.addElement(str, new ParsedSubstitutionEntry(pattern, perl5Substitution, i5));
                    int substitute2 = Util.substitute(stringBuffer, this.__matcher, pattern, perl5Substitution, str2, i5);
                    this.__lastMatch = this.__matcher.getMatch();
                    return substitute2;
                }
                throw new MalformedPerl5PatternException(new StringBuffer().append("Invalid expression: ").append(str).toString());
            }
        }
        throw new MalformedPerl5PatternException(new StringBuffer("Invalid expression: ").append(str).toString());
    }

    public synchronized String substitute(String str, String str2) throws MalformedPerl5PatternException {
        StringBuffer stringBuffer;
        stringBuffer = new StringBuffer();
        substitute(stringBuffer, str, str2);
        return stringBuffer.toString();
    }

    @Override // org.apache.oro.text.regex.MatchResult
    public synchronized String toString() {
        MatchResult matchResult = this.__lastMatch;
        if (matchResult == null) {
            return null;
        }
        return matchResult.toString();
    }
}
