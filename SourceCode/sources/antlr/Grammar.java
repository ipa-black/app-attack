package antlr;

import antlr.collections.impl.Vector;
import com.appodeal.ads.modules.common.internal.Constants;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
/* loaded from: classes.dex */
public abstract class Grammar {
    protected Tool antlrTool;
    protected String className;
    protected CodeGenerator generator;
    protected String superClass;
    protected LLkGrammarAnalyzer theLLkAnalyzer;
    protected TokenManager tokenManager;
    protected boolean buildAST = false;
    protected boolean analyzerDebug = false;
    protected boolean interactive = false;
    protected String exportVocab = null;
    protected String importVocab = null;
    protected Token preambleAction = new CommonToken(0, "");
    protected String fileName = null;
    protected Token classMemberAction = new CommonToken(0, "");
    protected boolean hasSyntacticPredicate = false;
    protected boolean hasUserErrorHandling = false;
    protected int maxk = 1;
    protected boolean traceRules = false;
    protected boolean debuggingOutput = false;
    protected boolean defaultErrorHandler = true;
    protected String comment = null;
    protected Hashtable symbols = new Hashtable();
    protected Hashtable options = new Hashtable();
    protected Vector rules = new Vector(100);

    public abstract void generate() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getSuperClass();

    public abstract void processArguments(String[] strArr);

    public Grammar(String str, Tool tool, String str2) {
        this.superClass = null;
        this.className = null;
        this.className = str;
        this.antlrTool = tool;
        this.superClass = str2;
    }

    public void define(RuleSymbol ruleSymbol) {
        this.rules.appendElement(ruleSymbol);
        this.symbols.put(ruleSymbol.getId(), ruleSymbol);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getClassName() {
        return this.className;
    }

    public boolean getDefaultErrorHandler() {
        return this.defaultErrorHandler;
    }

    public String getFilename() {
        return this.fileName;
    }

    public int getIntegerOption(String str) throws NumberFormatException {
        Token token = (Token) this.options.get(str);
        if (token == null || token.getType() != 20) {
            throw new NumberFormatException();
        }
        return Integer.parseInt(token.getText());
    }

    public Token getOption(String str) {
        return (Token) this.options.get(str);
    }

    public GrammarSymbol getSymbol(String str) {
        return (GrammarSymbol) this.symbols.get(str);
    }

    public Enumeration getSymbols() {
        return this.symbols.elements();
    }

    public boolean hasOption(String str) {
        return this.options.containsKey(str);
    }

    public boolean isDefined(String str) {
        return this.symbols.containsKey(str);
    }

    public void setCodeGenerator(CodeGenerator codeGenerator) {
        this.generator = codeGenerator;
    }

    public void setFilename(String str) {
        this.fileName = str;
    }

    public void setGrammarAnalyzer(LLkGrammarAnalyzer lLkGrammarAnalyzer) {
        this.theLLkAnalyzer = lLkGrammarAnalyzer;
    }

    public boolean setOption(String str, Token token) {
        this.options.put(str, token);
        String text = token.getText();
        if (str.equals("k")) {
            try {
                int integerOption = getIntegerOption("k");
                this.maxk = integerOption;
                if (integerOption <= 0) {
                    this.antlrTool.error(new StringBuffer("option 'k' must be greater than 0 (was ").append(token.getText()).append(")").toString(), getFilename(), token.getLine(), token.getColumn());
                    this.maxk = 1;
                }
            } catch (NumberFormatException unused) {
                this.antlrTool.error(new StringBuffer("option 'k' must be an integer (was ").append(token.getText()).append(")").toString(), getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (str.equals("codeGenMakeSwitchThreshold")) {
            try {
                getIntegerOption("codeGenMakeSwitchThreshold");
            } catch (NumberFormatException unused2) {
                this.antlrTool.error("option 'codeGenMakeSwitchThreshold' must be an integer", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (str.equals("codeGenBitsetTestThreshold")) {
            try {
                getIntegerOption("codeGenBitsetTestThreshold");
            } catch (NumberFormatException unused3) {
                this.antlrTool.error("option 'codeGenBitsetTestThreshold' must be an integer", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (str.equals("defaultErrorHandler")) {
            if (text.equals("true")) {
                this.defaultErrorHandler = true;
            } else if (text.equals("false")) {
                this.defaultErrorHandler = false;
            } else {
                this.antlrTool.error("Value for defaultErrorHandler must be true or false", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (str.equals("analyzerDebug")) {
            if (text.equals("true")) {
                this.analyzerDebug = true;
            } else if (text.equals("false")) {
                this.analyzerDebug = false;
            } else {
                this.antlrTool.error("option 'analyzerDebug' must be true or false", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (!str.equals("codeGenDebug")) {
            return str.equals("classHeaderSuffix") || str.equals("classHeaderPrefix") || str.equals("namespaceAntlr") || str.equals("namespaceStd") || str.equals("genHashLines") || str.equals("noConstructors");
        } else {
            if (text.equals("true")) {
                this.analyzerDebug = true;
            } else if (text.equals("false")) {
                this.analyzerDebug = false;
            } else {
                this.antlrTool.error("option 'codeGenDebug' must be true or false", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        }
    }

    public void setTokenManager(TokenManager tokenManager) {
        this.tokenManager = tokenManager;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer((int) Constants.SERVER_TIMEOUT_MS);
        Enumeration elements = this.rules.elements();
        while (elements.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements.nextElement();
            if (!ruleSymbol.id.equals("mnextToken")) {
                stringBuffer.append(ruleSymbol.getBlock().toString());
                stringBuffer.append("\n\n");
            }
        }
        return stringBuffer.toString();
    }
}
