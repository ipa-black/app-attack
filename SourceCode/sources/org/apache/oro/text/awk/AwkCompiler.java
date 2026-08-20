package org.apache.oro.text.awk;

import org.apache.oro.text.regex.MalformedPatternException;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternCompiler;
/* loaded from: classes3.dex */
public final class AwkCompiler implements PatternCompiler {
    public static final int CASE_INSENSITIVE_MASK = 1;
    public static final int DEFAULT_MASK = 0;
    public static final int MULTILINE_MASK = 2;
    static final char _END_OF_INPUT = 65535;
    private boolean __beginAnchor;
    private int __bytesRead;
    private boolean __caseSensitive;
    private int __closeParen;
    private boolean __endAnchor;
    private int __expressionLength;
    private boolean __inCharacterClass;
    private char __lookahead;
    private boolean __multiline;
    private int __openParen;
    private int __position;
    private char[] __regularExpression;

    private SyntaxNode __atom() throws MalformedPatternException {
        char c2 = this.__lookahead;
        if (c2 == '(') {
            __match('(');
            this.__openParen++;
            SyntaxNode __regex = __regex();
            __match(')');
            this.__closeParen++;
            return __regex;
        } else if (c2 == '[') {
            return __characterClass();
        } else {
            if (c2 == '.') {
                __match('.');
                int i = this.__position;
                this.__position = i + 1;
                NegativeCharacterClassNode negativeCharacterClassNode = new NegativeCharacterClassNode(i);
                if (this.__multiline) {
                    negativeCharacterClassNode._addToken(10);
                    return negativeCharacterClassNode;
                }
                return negativeCharacterClassNode;
            } else if (c2 == '\\') {
                return __backslashToken();
            } else {
                if (__isMetachar(c2)) {
                    throw new MalformedPatternException(new StringBuffer("Parse error: unexpected character ").append(this.__lookahead).append(" at position ").append(this.__bytesRead).toString());
                }
                char c3 = this.__lookahead;
                int i2 = this.__position;
                this.__position = i2 + 1;
                SyntaxNode _newTokenNode = _newTokenNode(c3, i2);
                __match(this.__lookahead);
                return _newTokenNode;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [org.apache.oro.text.awk.CharacterClassNode] */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.apache.oro.text.awk.CharacterClassNode] */
    /* JADX WARN: Type inference failed for: r0v12, types: [org.apache.oro.text.awk.CharacterClassNode] */
    private SyntaxNode __backslashToken() throws MalformedPatternException {
        char c2;
        NegativeCharacterClassNode negativeCharacterClassNode;
        NegativeCharacterClassNode negativeCharacterClassNode2;
        NegativeCharacterClassNode negativeCharacterClassNode3;
        TokenNode tokenNode;
        NegativeCharacterClassNode negativeCharacterClassNode4;
        int parseInt;
        __match('\\');
        char c3 = this.__lookahead;
        if (c3 != 'x') {
            if (c3 == 'c') {
                __match('c');
                char upperCase = Character.toUpperCase(this.__lookahead);
                int i = upperCase > '?' ? upperCase - '@' : upperCase + '@';
                int i2 = this.__position;
                this.__position = i2 + 1;
                TokenNode tokenNode2 = new TokenNode((char) i, i2);
                __match(this.__lookahead);
                return tokenNode2;
            }
            if (c3 < '0' || c3 > '9') {
                c2 = 'b';
                if (c3 == 'b') {
                    int i3 = this.__position;
                    this.__position = i3 + 1;
                    tokenNode = new TokenNode('\b', i3);
                    __match(c2);
                    return tokenNode;
                }
                if (c3 == 'f') {
                    c3 = '\f';
                } else if (c3 == 'n') {
                    c3 = '\n';
                } else if (c3 == 'r') {
                    c3 = '\r';
                } else if (c3 == 't') {
                    c3 = '\t';
                }
                if (c3 != 'D') {
                    if (c3 != 'S') {
                        if (c3 == 'W') {
                            int i4 = this.__position;
                            this.__position = i4 + 1;
                            negativeCharacterClassNode3 = new NegativeCharacterClassNode(i4);
                        } else if (c3 == 'd') {
                            int i5 = this.__position;
                            this.__position = i5 + 1;
                            negativeCharacterClassNode = new CharacterClassNode(i5);
                        } else if (c3 == 's') {
                            int i6 = this.__position;
                            this.__position = i6 + 1;
                            negativeCharacterClassNode2 = new CharacterClassNode(i6);
                        } else if (c3 == 'w') {
                            int i7 = this.__position;
                            this.__position = i7 + 1;
                            negativeCharacterClassNode3 = new CharacterClassNode(i7);
                        }
                        negativeCharacterClassNode3._addTokenRange(48, 57);
                        negativeCharacterClassNode3._addTokenRange(97, 122);
                        negativeCharacterClassNode3._addTokenRange(65, 90);
                        negativeCharacterClassNode3._addToken(95);
                        negativeCharacterClassNode4 = negativeCharacterClassNode3;
                        c2 = this.__lookahead;
                        tokenNode = negativeCharacterClassNode4;
                        __match(c2);
                        return tokenNode;
                    }
                    int i8 = this.__position;
                    this.__position = i8 + 1;
                    negativeCharacterClassNode2 = new NegativeCharacterClassNode(i8);
                    negativeCharacterClassNode2._addToken(32);
                    negativeCharacterClassNode2._addToken(12);
                    negativeCharacterClassNode2._addToken(10);
                    negativeCharacterClassNode2._addToken(13);
                    negativeCharacterClassNode2._addToken(9);
                    negativeCharacterClassNode4 = negativeCharacterClassNode2;
                    c2 = this.__lookahead;
                    tokenNode = negativeCharacterClassNode4;
                    __match(c2);
                    return tokenNode;
                }
                int i9 = this.__position;
                this.__position = i9 + 1;
                negativeCharacterClassNode = new NegativeCharacterClassNode(i9);
                negativeCharacterClassNode._addTokenRange(48, 57);
                negativeCharacterClassNode4 = negativeCharacterClassNode;
                c2 = this.__lookahead;
                tokenNode = negativeCharacterClassNode4;
                __match(c2);
                return tokenNode;
            }
            __match(c3);
            char c4 = this.__lookahead;
            if (c4 < '0' || c4 > '9') {
                __putback();
                char c5 = this.__lookahead;
                if (c5 == '0') {
                    __match('0');
                    int i10 = this.__position;
                    this.__position = i10 + 1;
                    return new TokenNode((char) 0, i10);
                }
                Character.digit(c5, 10);
                c3 = this.__lookahead;
            } else {
                __putback();
                parseInt = Integer.parseInt(Integer.toString(__parseUnsignedInteger(10, 2, 3)), 8);
            }
            int i11 = this.__position;
            this.__position = i11 + 1;
            negativeCharacterClassNode4 = _newTokenNode(c3, i11);
            c2 = this.__lookahead;
            tokenNode = negativeCharacterClassNode4;
            __match(c2);
            return tokenNode;
        }
        __match('x');
        parseInt = __parseUnsignedInteger(16, 2, 2);
        int i12 = this.__position;
        this.__position = i12 + 1;
        return _newTokenNode((char) parseInt, i12);
    }

    private SyntaxNode __branch() throws MalformedPatternException {
        SyntaxNode __piece;
        SyntaxNode __piece2 = __piece();
        char c2 = this.__lookahead;
        if (c2 == ')') {
            if (this.__openParen > this.__closeParen) {
                return __piece2;
            }
            throw new MalformedPatternException(new StringBuffer("Parse error: close parenthesis without matching open parenthesis at position ").append(this.__bytesRead).toString());
        } else if (c2 == '|' || c2 == 65535) {
            return __piece2;
        } else {
            CatNode catNode = new CatNode();
            catNode._left = __piece2;
            CatNode catNode2 = catNode;
            while (true) {
                __piece = __piece();
                char c3 = this.__lookahead;
                if (c3 != ')') {
                    if (c3 == '|' || c3 == 65535) {
                        break;
                    }
                    catNode2._right = new CatNode();
                    catNode2 = (CatNode) catNode2._right;
                    catNode2._left = __piece;
                } else if (this.__openParen <= this.__closeParen) {
                    throw new MalformedPatternException(new StringBuffer("Parse error: close parenthesis without matching open parenthesis at position ").append(this.__bytesRead).toString());
                }
            }
            catNode2._right = __piece;
            return catNode;
        }
    }

    private SyntaxNode __characterClass() throws MalformedPatternException {
        CharacterClassNode characterClassNode;
        __match('[');
        this.__inCharacterClass = true;
        if (this.__lookahead == '^') {
            __match('^');
            int i = this.__position;
            this.__position = i + 1;
            characterClassNode = new NegativeCharacterClassNode(i);
        } else {
            int i2 = this.__position;
            this.__position = i2 + 1;
            characterClassNode = new CharacterClassNode(i2);
        }
        while (true) {
            char c2 = this.__lookahead;
            if (c2 == ']' || c2 == 65535) {
                break;
            }
            if (c2 == '\\') {
                SyntaxNode __backslashToken = __backslashToken();
                this.__position--;
                if (__backslashToken instanceof TokenNode) {
                    c2 = ((TokenNode) __backslashToken)._token;
                    characterClassNode._addToken(c2);
                    if (!this.__caseSensitive) {
                        characterClassNode._addToken(_toggleCase(c2));
                    }
                } else {
                    CharacterClassNode characterClassNode2 = (CharacterClassNode) __backslashToken;
                    for (char c3 = 0; c3 < 256; c3 = (char) (c3 + 1)) {
                        if (characterClassNode2._matches(c3)) {
                            characterClassNode._addToken(c3);
                        }
                    }
                }
            } else {
                characterClassNode._addToken(c2);
                if (!this.__caseSensitive) {
                    characterClassNode._addToken(_toggleCase(this.__lookahead));
                }
                __match(this.__lookahead);
            }
            if (this.__lookahead == '-') {
                __match('-');
                char c4 = this.__lookahead;
                if (c4 == ']') {
                    characterClassNode._addToken(45);
                    break;
                }
                if (c4 == '\\') {
                    SyntaxNode __backslashToken2 = __backslashToken();
                    this.__position--;
                    if (!(__backslashToken2 instanceof TokenNode)) {
                        throw new MalformedPatternException(new StringBuffer("Parse error: invalid range specified at position ").append(this.__bytesRead).toString());
                    }
                    c4 = ((TokenNode) __backslashToken2)._token;
                } else {
                    __match(c4);
                }
                if (c4 < c2) {
                    throw new MalformedPatternException(new StringBuffer("Parse error: invalid range specified at position ").append(this.__bytesRead).toString());
                }
                int i3 = c2 + 1;
                characterClassNode._addTokenRange(i3, c4);
                if (!this.__caseSensitive) {
                    characterClassNode._addTokenRange(_toggleCase((char) i3), _toggleCase(c4));
                }
            } else {
                continue;
            }
        }
        __match(']');
        this.__inCharacterClass = false;
        return characterClassNode;
    }

    private static boolean __isMetachar(char c2) {
        return c2 == '*' || c2 == '?' || c2 == '+' || c2 == '[' || c2 == ']' || c2 == '(' || c2 == ')' || c2 == '|' || c2 == '.';
    }

    private void __match(char c2) throws MalformedPatternException {
        char c3;
        if (c2 != this.__lookahead) {
            throw new MalformedPatternException(new StringBuffer("token: ").append(c2).append(" does not match lookahead: ").append(this.__lookahead).append(" at position: ").append(this.__bytesRead).toString());
        }
        int i = this.__bytesRead;
        if (i < this.__expressionLength) {
            char[] cArr = this.__regularExpression;
            this.__bytesRead = i + 1;
            c3 = cArr[i];
        } else {
            c3 = 65535;
        }
        this.__lookahead = c3;
    }

    private int __parseUnsignedInteger(int i, int i2, int i3) throws MalformedPatternException {
        StringBuffer stringBuffer = new StringBuffer(4);
        int i4 = 0;
        while (Character.digit(this.__lookahead, i) != -1 && i4 < i3) {
            stringBuffer.append(this.__lookahead);
            __match(this.__lookahead);
            i4++;
        }
        if (i4 < i2 || i4 > i3) {
            throw new MalformedPatternException(new StringBuffer("Parse error: unexpected number of digits at position ").append(this.__bytesRead).toString());
        }
        try {
            return Integer.parseInt(stringBuffer.toString(), i);
        } catch (NumberFormatException unused) {
            throw new MalformedPatternException(new StringBuffer("Parse error: numeric value at position ").append(this.__bytesRead).append(" is invalid").toString());
        }
    }

    private SyntaxNode __piece() throws MalformedPatternException {
        SyntaxNode __atom = __atom();
        char c2 = this.__lookahead;
        if (c2 == '*') {
            __match('*');
            return new StarNode(__atom);
        } else if (c2 == '+') {
            __match('+');
            return new PlusNode(__atom);
        } else if (c2 != '?') {
            return c2 != '{' ? __atom : __repetition(__atom);
        } else {
            __match('?');
            return new QuestionNode(__atom);
        }
    }

    private void __putback() {
        if (this.__lookahead != 65535) {
            this.__bytesRead--;
        }
        this.__lookahead = this.__regularExpression[this.__bytesRead - 1];
    }

    private SyntaxNode __regex() throws MalformedPatternException {
        SyntaxNode __branch = __branch();
        if (this.__lookahead == '|') {
            __match('|');
            return new OrNode(__branch, __regex());
        }
        return __branch;
    }

    private SyntaxNode __repetition(SyntaxNode syntaxNode) throws MalformedPatternException {
        CatNode catNode;
        CatNode catNode2;
        SyntaxNode _clone;
        CatNode catNode3;
        __match('{');
        int __parseUnsignedInteger = __parseUnsignedInteger(10, 1, Integer.MAX_VALUE);
        int[] iArr = {this.__position};
        char c2 = this.__lookahead;
        if (c2 == '}') {
            __match('}');
            if (__parseUnsignedInteger == 0) {
                throw new MalformedPatternException(new StringBuffer("Parse error: Superfluous interval specified at position ").append(this.__bytesRead).append(".  Number of occurences was set to zero.").toString());
            }
            if (__parseUnsignedInteger == 1) {
                return syntaxNode;
            }
            catNode3 = new CatNode();
            catNode3._left = syntaxNode;
            CatNode catNode4 = catNode3;
            while (true) {
                __parseUnsignedInteger--;
                syntaxNode = syntaxNode._clone(iArr);
                if (__parseUnsignedInteger <= 1) {
                    break;
                }
                catNode4._right = new CatNode();
                catNode4 = (CatNode) catNode4._right;
                catNode4._left = syntaxNode;
            }
            catNode4._right = syntaxNode;
        } else if (c2 != ',') {
            throw new MalformedPatternException(new StringBuffer("Parse error: unexpected character ").append(this.__lookahead).append(" in interval at position ").append(this.__bytesRead).toString());
        } else {
            __match(',');
            if (this.__lookahead == '}') {
                __match('}');
                if (__parseUnsignedInteger == 0) {
                    return new StarNode(syntaxNode);
                }
                if (__parseUnsignedInteger == 1) {
                    return new PlusNode(syntaxNode);
                }
                CatNode catNode5 = new CatNode();
                catNode5._left = syntaxNode;
                CatNode catNode6 = catNode5;
                while (true) {
                    __parseUnsignedInteger--;
                    if (__parseUnsignedInteger <= 0) {
                        break;
                    }
                    syntaxNode = syntaxNode._clone(iArr);
                    catNode6._right = new CatNode();
                    catNode6 = (CatNode) catNode6._right;
                    catNode6._left = syntaxNode;
                }
                catNode6._right = new StarNode(syntaxNode._clone(iArr));
                catNode3 = catNode5;
            } else {
                int __parseUnsignedInteger2 = __parseUnsignedInteger(10, 1, Integer.MAX_VALUE);
                __match('}');
                if (__parseUnsignedInteger2 < __parseUnsignedInteger) {
                    throw new MalformedPatternException(new StringBuffer("Parse error: invalid interval; ").append(__parseUnsignedInteger2).append(" is less than ").append(__parseUnsignedInteger).append(" at position ").append(this.__bytesRead).toString());
                }
                if (__parseUnsignedInteger2 == 0) {
                    throw new MalformedPatternException(new StringBuffer("Parse error: Superfluous interval specified at position ").append(this.__bytesRead).append(".  Number of occurences was set to zero.").toString());
                }
                if (__parseUnsignedInteger != 0) {
                    if (__parseUnsignedInteger != __parseUnsignedInteger2) {
                        catNode = new CatNode();
                        catNode._left = syntaxNode;
                        CatNode catNode7 = catNode;
                        for (int i = 1; i < __parseUnsignedInteger; i++) {
                            syntaxNode = syntaxNode._clone(iArr);
                            catNode7._right = new CatNode();
                            catNode7 = (CatNode) catNode7._right;
                            catNode7._left = syntaxNode;
                        }
                        SyntaxNode questionNode = new QuestionNode(syntaxNode._clone(iArr));
                        int i2 = __parseUnsignedInteger2 - __parseUnsignedInteger;
                        if (i2 == 1) {
                            catNode7._right = questionNode;
                        } else {
                            catNode7._right = new CatNode();
                            SyntaxNode syntaxNode2 = catNode7._right;
                            while (true) {
                                catNode2 = (CatNode) syntaxNode2;
                                catNode2._left = questionNode;
                                i2--;
                                if (i2 <= 1) {
                                    break;
                                }
                                questionNode = questionNode._clone(iArr);
                                catNode2._right = new CatNode();
                                syntaxNode2 = catNode2._right;
                            }
                            _clone = questionNode._clone(iArr);
                        }
                    } else if (__parseUnsignedInteger == 1) {
                        return syntaxNode;
                    } else {
                        catNode = new CatNode();
                        catNode._left = syntaxNode;
                        CatNode catNode8 = catNode;
                        while (true) {
                            __parseUnsignedInteger--;
                            syntaxNode = syntaxNode._clone(iArr);
                            if (__parseUnsignedInteger <= 1) {
                                break;
                            }
                            catNode8._right = new CatNode();
                            catNode8 = (CatNode) catNode8._right;
                            catNode8._left = syntaxNode;
                        }
                        catNode8._right = syntaxNode;
                    }
                    catNode3 = catNode;
                } else if (__parseUnsignedInteger2 == 1) {
                    return new QuestionNode(syntaxNode);
                } else {
                    catNode = new CatNode();
                    SyntaxNode questionNode2 = new QuestionNode(syntaxNode);
                    catNode._left = questionNode2;
                    catNode2 = catNode;
                    while (true) {
                        __parseUnsignedInteger2--;
                        if (__parseUnsignedInteger2 <= 1) {
                            break;
                        }
                        questionNode2 = questionNode2._clone(iArr);
                        catNode2._right = new CatNode();
                        catNode2 = (CatNode) catNode2._right;
                        catNode2._left = questionNode2;
                    }
                    _clone = questionNode2._clone(iArr);
                }
                catNode2._right = _clone;
                catNode3 = catNode;
            }
        }
        this.__position = iArr[0];
        return catNode3;
    }

    static boolean _isLowerCase(char c2) {
        return c2 >= 'a' && c2 <= 'z';
    }

    static boolean _isUpperCase(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }

    static boolean _isWordCharacter(char c2) {
        return (c2 >= 'a' && c2 <= 'z') || (c2 >= 'A' && c2 <= 'Z') || ((c2 >= '0' && c2 <= '9') || c2 == '_');
    }

    static char _toggleCase(char c2) {
        int i;
        if (_isUpperCase(c2)) {
            i = c2 + ' ';
        } else if (!_isLowerCase(c2)) {
            return c2;
        } else {
            i = c2 - ' ';
        }
        return (char) i;
    }

    SyntaxNode _newTokenNode(char c2, int i) {
        if (this.__inCharacterClass || this.__caseSensitive || !(_isUpperCase(c2) || _isLowerCase(c2))) {
            return new TokenNode(c2, i);
        }
        CharacterClassNode characterClassNode = new CharacterClassNode(i);
        characterClassNode._addToken(c2);
        characterClassNode._addToken(_toggleCase(c2));
        return characterClassNode;
    }

    SyntaxTree _parse(char[] cArr) throws MalformedPatternException {
        SyntaxTree syntaxTree;
        this.__closeParen = 0;
        this.__openParen = 0;
        this.__regularExpression = cArr;
        this.__bytesRead = 0;
        this.__expressionLength = cArr.length;
        this.__inCharacterClass = false;
        this.__position = 0;
        __match(this.__lookahead);
        char c2 = this.__lookahead;
        if (c2 == '^') {
            this.__beginAnchor = true;
            __match(c2);
        }
        int i = this.__expressionLength;
        if (i > 0 && cArr[i - 1] == '$') {
            this.__expressionLength = i - 1;
            this.__endAnchor = true;
        }
        int i2 = this.__expressionLength;
        if (i2 > 1 || (i2 == 1 && !this.__beginAnchor)) {
            CatNode catNode = new CatNode();
            catNode._left = __regex();
            int i3 = this.__position;
            this.__position = i3 + 1;
            catNode._right = new TokenNode((char) 256, i3);
            syntaxTree = new SyntaxTree(catNode, this.__position);
        } else {
            syntaxTree = new SyntaxTree(new TokenNode((char) 256, 0), 1);
        }
        syntaxTree._computeFollowPositions();
        return syntaxTree;
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(String str) throws MalformedPatternException {
        return compile(str, 0);
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(String str, int i) throws MalformedPatternException {
        this.__endAnchor = false;
        this.__beginAnchor = false;
        this.__caseSensitive = (i & 1) == 0;
        this.__multiline = (i & 2) != 0;
        AwkPattern awkPattern = new AwkPattern(str, _parse(str.toCharArray()));
        awkPattern._options = i;
        awkPattern._hasBeginAnchor = this.__beginAnchor;
        awkPattern._hasEndAnchor = this.__endAnchor;
        return awkPattern;
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(char[] cArr) throws MalformedPatternException {
        return compile(cArr, 0);
    }

    @Override // org.apache.oro.text.regex.PatternCompiler
    public Pattern compile(char[] cArr, int i) throws MalformedPatternException {
        this.__endAnchor = false;
        this.__beginAnchor = false;
        this.__caseSensitive = (i & 1) == 0;
        this.__multiline = (i & 2) != 0;
        AwkPattern awkPattern = new AwkPattern(new String(cArr), _parse(cArr));
        awkPattern._options = i;
        awkPattern._hasBeginAnchor = this.__beginAnchor;
        awkPattern._hasEndAnchor = this.__endAnchor;
        return awkPattern;
    }
}
