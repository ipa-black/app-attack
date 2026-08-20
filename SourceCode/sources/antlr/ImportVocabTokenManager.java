package antlr;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ImportVocabTokenManager extends SimpleTokenManager implements Cloneable {
    private String filename;
    protected Grammar grammar;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImportVocabTokenManager(Grammar grammar, String str, String str2, Tool tool) {
        super(str2, tool);
        this.grammar = grammar;
        this.filename = str;
        File file = new File(this.filename);
        if (!file.exists()) {
            file = new File(this.antlrTool.getOutputDirectory(), this.filename);
            if (!file.exists()) {
                this.antlrTool.panic(new StringBuffer("Cannot find importVocab file '").append(this.filename).append("'").toString());
            }
        }
        setReadOnly(true);
        try {
            ANTLRTokdefParser aNTLRTokdefParser = new ANTLRTokdefParser(new ANTLRTokdefLexer(new BufferedReader(new FileReader(file))));
            aNTLRTokdefParser.setTool(this.antlrTool);
            aNTLRTokdefParser.setFilename(this.filename);
            aNTLRTokdefParser.file(this);
        } catch (RecognitionException e2) {
            this.antlrTool.panic(new StringBuffer("Error parsing importVocab file '").append(this.filename).append("': ").append(e2.toString()).toString());
        } catch (TokenStreamException unused) {
            this.antlrTool.panic(new StringBuffer("Error reading importVocab file '").append(this.filename).append("'").toString());
        } catch (FileNotFoundException unused2) {
            this.antlrTool.panic(new StringBuffer("Cannot find importVocab file '").append(this.filename).append("'").toString());
        }
    }

    @Override // antlr.SimpleTokenManager, antlr.TokenManager
    public Object clone() {
        ImportVocabTokenManager importVocabTokenManager = (ImportVocabTokenManager) super.clone();
        importVocabTokenManager.filename = this.filename;
        importVocabTokenManager.grammar = this.grammar;
        return importVocabTokenManager;
    }

    @Override // antlr.SimpleTokenManager, antlr.TokenManager
    public void define(TokenSymbol tokenSymbol) {
        super.define(tokenSymbol);
    }

    public void define(String str, int i) {
        TokenSymbol tokenSymbol;
        if (str.startsWith("\"")) {
            tokenSymbol = new StringLiteralSymbol(str);
        } else {
            tokenSymbol = new TokenSymbol(str);
        }
        tokenSymbol.setTokenType(i);
        super.define(tokenSymbol);
        int i2 = i + 1;
        if (i2 <= this.maxToken) {
            i2 = this.maxToken;
        }
        this.maxToken = i2;
    }

    @Override // antlr.SimpleTokenManager, antlr.TokenManager
    public boolean isReadOnly() {
        return this.readOnly;
    }

    @Override // antlr.SimpleTokenManager, antlr.TokenManager
    public int nextTokenType() {
        return super.nextTokenType();
    }
}
