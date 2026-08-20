package antlr;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TreeWalkerGrammar extends Grammar {
    protected boolean transform;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TreeWalkerGrammar(String str, Tool tool, String str2) {
        super(str, tool, str2);
        this.transform = false;
    }

    @Override // antlr.Grammar
    public void generate() throws IOException {
        this.generator.gen(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.Grammar
    public String getSuperClass() {
        return "TreeParser";
    }

    @Override // antlr.Grammar
    public void processArguments(String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("-trace")) {
                this.traceRules = true;
                this.antlrTool.setArgOK(i);
            } else if (strArr[i].equals("-traceTreeParser")) {
                this.traceRules = true;
                this.antlrTool.setArgOK(i);
            }
        }
    }

    @Override // antlr.Grammar
    public boolean setOption(String str, Token token) {
        if (str.equals("buildAST")) {
            if (token.getText().equals("true")) {
                this.buildAST = true;
            } else if (token.getText().equals("false")) {
                this.buildAST = false;
            } else {
                this.antlrTool.error("buildAST option must be true or false", getFilename(), token.getLine(), token.getColumn());
            }
            return true;
        } else if (str.equals("ASTLabelType")) {
            super.setOption(str, token);
            return true;
        } else if (super.setOption(str, token)) {
            return true;
        } else {
            this.antlrTool.error(new StringBuffer("Invalid option: ").append(str).toString(), getFilename(), token.getLine(), token.getColumn());
            return false;
        }
    }
}
