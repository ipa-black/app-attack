package antlr;

import antlr.collections.impl.BitSet;
import java.util.Hashtable;
/* loaded from: classes.dex */
public abstract class CharScanner implements TokenStream {
    public static final char EOF_CHAR = 65535;
    static final char NO_CHAR = 0;
    protected Token _returnToken;
    protected boolean caseSensitive;
    protected boolean caseSensitiveLiterals;
    protected boolean commitToPath;
    protected ANTLRHashString hashString;
    protected LexerSharedInputState inputState;
    protected Hashtable literals;
    protected boolean saveConsumedInput;
    protected int tabsize;
    protected ANTLRStringBuffer text;
    protected Class tokenObjectClass;
    protected int traceDepth;

    @Override // antlr.TokenStream
    public abstract Token nextToken() throws TokenStreamException;

    public void uponEOF() throws TokenStreamException, CharStreamException {
    }

    public CharScanner() {
        this.saveConsumedInput = true;
        this.caseSensitive = true;
        this.caseSensitiveLiterals = true;
        this.tabsize = 8;
        this._returnToken = null;
        this.commitToPath = false;
        this.traceDepth = 0;
        this.text = new ANTLRStringBuffer();
        this.hashString = new ANTLRHashString(this);
        setTokenObjectClass("antlr.CommonToken");
    }

    public CharScanner(InputBuffer inputBuffer) {
        this();
        this.inputState = new LexerSharedInputState(inputBuffer);
    }

    public CharScanner(LexerSharedInputState lexerSharedInputState) {
        this();
        this.inputState = lexerSharedInputState;
    }

    public void append(char c2) {
        if (this.saveConsumedInput) {
            this.text.append(c2);
        }
    }

    public void append(String str) {
        if (this.saveConsumedInput) {
            this.text.append(str);
        }
    }

    public void commit() {
        this.inputState.input.commit();
    }

    public void consume() throws CharStreamException {
        if (this.inputState.guessing == 0) {
            char LA = LA(1);
            if (this.caseSensitive) {
                append(LA);
            } else {
                append(this.inputState.input.LA(1));
            }
            if (LA == '\t') {
                tab();
            } else {
                this.inputState.column++;
            }
        }
        this.inputState.input.consume();
    }

    public void consumeUntil(int i) throws CharStreamException {
        while (LA(1) != 65535 && LA(1) != i) {
            consume();
        }
    }

    public void consumeUntil(BitSet bitSet) throws CharStreamException {
        while (LA(1) != 65535 && !bitSet.member(LA(1))) {
            consume();
        }
    }

    public boolean getCaseSensitive() {
        return this.caseSensitive;
    }

    public final boolean getCaseSensitiveLiterals() {
        return this.caseSensitiveLiterals;
    }

    public int getColumn() {
        return this.inputState.column;
    }

    public void setColumn(int i) {
        this.inputState.column = i;
    }

    public boolean getCommitToPath() {
        return this.commitToPath;
    }

    public String getFilename() {
        return this.inputState.filename;
    }

    public InputBuffer getInputBuffer() {
        return this.inputState.input;
    }

    public LexerSharedInputState getInputState() {
        return this.inputState;
    }

    public void setInputState(LexerSharedInputState lexerSharedInputState) {
        this.inputState = lexerSharedInputState;
    }

    public int getLine() {
        return this.inputState.line;
    }

    public String getText() {
        return this.text.toString();
    }

    public Token getTokenObject() {
        return this._returnToken;
    }

    public char LA(int i) throws CharStreamException {
        if (this.caseSensitive) {
            return this.inputState.input.LA(i);
        }
        return toLower(this.inputState.input.LA(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Token makeToken(int i) {
        try {
            Token token = (Token) this.tokenObjectClass.newInstance();
            token.setType(i);
            token.setColumn(this.inputState.tokenStartColumn);
            token.setLine(this.inputState.tokenStartLine);
            return token;
        } catch (IllegalAccessException unused) {
            panic(new StringBuffer("Token class is not accessible").append(this.tokenObjectClass).toString());
            return Token.badToken;
        } catch (InstantiationException unused2) {
            panic(new StringBuffer("can't instantiate token: ").append(this.tokenObjectClass).toString());
            return Token.badToken;
        }
    }

    public int mark() {
        return this.inputState.input.mark();
    }

    public void match(char c2) throws MismatchedCharException, CharStreamException {
        if (LA(1) != c2) {
            throw new MismatchedCharException(LA(1), c2, false, this);
        }
        consume();
    }

    public void match(BitSet bitSet) throws MismatchedCharException, CharStreamException {
        if (!bitSet.member(LA(1))) {
            throw new MismatchedCharException(LA(1), bitSet, false, this);
        }
        consume();
    }

    public void match(String str) throws MismatchedCharException, CharStreamException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (LA(1) != str.charAt(i)) {
                throw new MismatchedCharException(LA(1), str.charAt(i), false, this);
            }
            consume();
        }
    }

    public void matchNot(char c2) throws MismatchedCharException, CharStreamException {
        if (LA(1) == c2) {
            throw new MismatchedCharException(LA(1), c2, true, this);
        }
        consume();
    }

    public void matchRange(char c2, char c3) throws MismatchedCharException, CharStreamException {
        if (LA(1) < c2 || LA(1) > c3) {
            throw new MismatchedCharException(LA(1), c2, c3, false, this);
        }
        consume();
    }

    public void newline() {
        this.inputState.line++;
        this.inputState.column = 1;
    }

    public void tab() {
        int i = this.tabsize;
        setColumn(((((getColumn() - 1) / i) + 1) * i) + 1);
    }

    public void setTabSize(int i) {
        this.tabsize = i;
    }

    public int getTabSize() {
        return this.tabsize;
    }

    public void panic() {
        System.err.println("CharScanner: panic");
        System.exit(1);
    }

    public void panic(String str) {
        System.err.println(new StringBuffer("CharScanner; panic: ").append(str).toString());
        System.exit(1);
    }

    public void reportError(RecognitionException recognitionException) {
        System.err.println(recognitionException);
    }

    public void reportError(String str) {
        if (getFilename() == null) {
            System.err.println(new StringBuffer("error: ").append(str).toString());
        } else {
            System.err.println(new StringBuffer().append(getFilename()).append(": error: ").append(str).toString());
        }
    }

    public void reportWarning(String str) {
        if (getFilename() == null) {
            System.err.println(new StringBuffer("warning: ").append(str).toString());
        } else {
            System.err.println(new StringBuffer().append(getFilename()).append(": warning: ").append(str).toString());
        }
    }

    public void resetText() {
        this.text.setLength(0);
        LexerSharedInputState lexerSharedInputState = this.inputState;
        lexerSharedInputState.tokenStartColumn = lexerSharedInputState.column;
        LexerSharedInputState lexerSharedInputState2 = this.inputState;
        lexerSharedInputState2.tokenStartLine = lexerSharedInputState2.line;
    }

    public void rewind(int i) {
        this.inputState.input.rewind(i);
    }

    public void setCaseSensitive(boolean z) {
        this.caseSensitive = z;
    }

    public void setCommitToPath(boolean z) {
        this.commitToPath = z;
    }

    public void setFilename(String str) {
        this.inputState.filename = str;
    }

    public void setLine(int i) {
        this.inputState.line = i;
    }

    public void setText(String str) {
        resetText();
        this.text.append(str);
    }

    public void setTokenObjectClass(String str) {
        try {
            this.tokenObjectClass = Class.forName(str);
        } catch (ClassNotFoundException unused) {
            panic(new StringBuffer("ClassNotFoundException: ").append(str).toString());
        }
    }

    public int testLiteralsTable(int i) {
        this.hashString.setBuffer(this.text.getBuffer(), this.text.length());
        Integer num = (Integer) this.literals.get(this.hashString);
        return num != null ? num.intValue() : i;
    }

    public int testLiteralsTable(String str, int i) {
        Integer num = (Integer) this.literals.get(new ANTLRHashString(str, this));
        return num != null ? num.intValue() : i;
    }

    public char toLower(char c2) {
        return Character.toLowerCase(c2);
    }

    public void traceIndent() {
        for (int i = 0; i < this.traceDepth; i++) {
            System.out.print(" ");
        }
    }

    public void traceIn(String str) throws CharStreamException {
        this.traceDepth++;
        traceIndent();
        System.out.println(new StringBuffer("> lexer ").append(str).append("; c==").append(LA(1)).toString());
    }

    public void traceOut(String str) throws CharStreamException {
        traceIndent();
        System.out.println(new StringBuffer("< lexer ").append(str).append("; c==").append(LA(1)).toString());
        this.traceDepth--;
    }
}
