package antlr;

import antlr.collections.AST;
import antlr.collections.ASTEnumeration;
import antlr.collections.impl.ASTEnumerator;
import antlr.collections.impl.Vector;
import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
/* loaded from: classes.dex */
public abstract class BaseAST implements AST, Serializable {
    private static String[] tokenNames = null;
    private static boolean verboseStringConversion = false;
    protected BaseAST down;
    protected BaseAST right;

    @Override // antlr.collections.AST
    public int getType() {
        return 0;
    }

    @Override // antlr.collections.AST
    public abstract void initialize(int i, String str);

    @Override // antlr.collections.AST
    public abstract void initialize(Token token);

    @Override // antlr.collections.AST
    public abstract void initialize(AST ast);

    @Override // antlr.collections.AST
    public void setText(String str) {
    }

    @Override // antlr.collections.AST
    public void setType(int i) {
    }

    @Override // antlr.collections.AST
    public void addChild(AST ast) {
        if (ast == null) {
            return;
        }
        BaseAST baseAST = this.down;
        if (baseAST == null) {
            this.down = (BaseAST) ast;
            return;
        }
        while (true) {
            BaseAST baseAST2 = baseAST.right;
            if (baseAST2 == null) {
                baseAST.right = (BaseAST) ast;
                return;
            }
            baseAST = baseAST2;
        }
    }

    @Override // antlr.collections.AST
    public int getNumberOfChildren() {
        BaseAST baseAST = this.down;
        if (baseAST == null) {
            return 0;
        }
        int i = 1;
        while (true) {
            baseAST = baseAST.right;
            if (baseAST == null) {
                return i;
            }
            i++;
        }
    }

    private void doWorkForFindAll(Vector vector, AST ast, boolean z) {
        for (AST ast2 = this; ast2 != null; ast2 = ast2.getNextSibling()) {
            if ((z && ast2.equalsTreePartial(ast)) || (!z && ast2.equalsTree(ast))) {
                vector.appendElement(ast2);
            }
            if (ast2.getFirstChild() != null) {
                ((BaseAST) ast2.getFirstChild()).doWorkForFindAll(vector, ast, z);
            }
        }
    }

    @Override // antlr.collections.AST
    public boolean equals(AST ast) {
        return ast != null && getText().equals(ast.getText()) && getType() == ast.getType();
    }

    @Override // antlr.collections.AST
    public boolean equalsList(AST ast) {
        if (ast == null) {
            return false;
        }
        AST ast2 = this;
        while (ast2 != null && ast != null) {
            if (!ast2.equals(ast)) {
                return false;
            }
            if (ast2.getFirstChild() != null) {
                if (!ast2.getFirstChild().equalsList(ast.getFirstChild())) {
                    return false;
                }
            } else if (ast.getFirstChild() != null) {
                return false;
            }
            ast2 = ast2.getNextSibling();
            ast = ast.getNextSibling();
        }
        return ast2 == null && ast == null;
    }

    @Override // antlr.collections.AST
    public boolean equalsListPartial(AST ast) {
        if (ast == null) {
            return true;
        }
        AST ast2 = this;
        while (ast2 != null && ast != null) {
            if (!ast2.equals(ast)) {
                return false;
            }
            if (ast2.getFirstChild() != null && !ast2.getFirstChild().equalsListPartial(ast.getFirstChild())) {
                return false;
            }
            ast2 = ast2.getNextSibling();
            ast = ast.getNextSibling();
        }
        return ast2 != null || ast == null;
    }

    @Override // antlr.collections.AST
    public boolean equalsTree(AST ast) {
        if (equals(ast)) {
            return getFirstChild() != null ? getFirstChild().equalsList(ast.getFirstChild()) : ast.getFirstChild() == null;
        }
        return false;
    }

    @Override // antlr.collections.AST
    public boolean equalsTreePartial(AST ast) {
        if (ast == null) {
            return true;
        }
        if (equals(ast)) {
            return getFirstChild() == null || getFirstChild().equalsListPartial(ast.getFirstChild());
        }
        return false;
    }

    @Override // antlr.collections.AST
    public ASTEnumeration findAll(AST ast) {
        Vector vector = new Vector(10);
        if (ast == null) {
            return null;
        }
        doWorkForFindAll(vector, ast, false);
        return new ASTEnumerator(vector);
    }

    @Override // antlr.collections.AST
    public ASTEnumeration findAllPartial(AST ast) {
        Vector vector = new Vector(10);
        if (ast == null) {
            return null;
        }
        doWorkForFindAll(vector, ast, true);
        return new ASTEnumerator(vector);
    }

    @Override // antlr.collections.AST
    public AST getFirstChild() {
        return this.down;
    }

    @Override // antlr.collections.AST
    public AST getNextSibling() {
        return this.right;
    }

    @Override // antlr.collections.AST
    public String getText() {
        return "";
    }

    public void removeChildren() {
        this.down = null;
    }

    @Override // antlr.collections.AST
    public void setFirstChild(AST ast) {
        this.down = (BaseAST) ast;
    }

    @Override // antlr.collections.AST
    public void setNextSibling(AST ast) {
        this.right = (BaseAST) ast;
    }

    public static void setVerboseStringConversion(boolean z, String[] strArr) {
        verboseStringConversion = z;
        tokenNames = strArr;
    }

    @Override // antlr.collections.AST
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        if (verboseStringConversion && !getText().equalsIgnoreCase(tokenNames[getType()]) && !getText().equalsIgnoreCase(StringUtils.stripFrontBack(tokenNames[getType()], "\"", "\""))) {
            stringBuffer.append(getText());
            stringBuffer.append(",<");
            stringBuffer.append(tokenNames[getType()]);
            stringBuffer.append(">]");
            return stringBuffer.toString();
        }
        return getText();
    }

    @Override // antlr.collections.AST
    public String toStringList() {
        String stringBuffer = new StringBuffer().append(getFirstChild() != null ? " (" : "").append(" ").append(toString()).toString();
        if (getFirstChild() != null) {
            stringBuffer = new StringBuffer().append(stringBuffer).append(((BaseAST) getFirstChild()).toStringList()).toString();
        }
        if (getFirstChild() != null) {
            stringBuffer = new StringBuffer().append(stringBuffer).append(" )").toString();
        }
        return getNextSibling() != null ? new StringBuffer().append(stringBuffer).append(((BaseAST) getNextSibling()).toStringList()).toString() : stringBuffer;
    }

    @Override // antlr.collections.AST
    public String toStringTree() {
        String stringBuffer = new StringBuffer().append(getFirstChild() != null ? " (" : "").append(" ").append(toString()).toString();
        if (getFirstChild() != null) {
            stringBuffer = new StringBuffer().append(stringBuffer).append(((BaseAST) getFirstChild()).toStringList()).toString();
        }
        return getFirstChild() != null ? new StringBuffer().append(stringBuffer).append(" )").toString() : stringBuffer;
    }

    public static String decode(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '&') {
                char charAt2 = str.charAt(i + 1);
                char charAt3 = str.charAt(i + 2);
                char charAt4 = str.charAt(i + 3);
                int i2 = i + 4;
                char charAt5 = str.charAt(i2);
                int i3 = i + 5;
                char charAt6 = str.charAt(i3);
                if (charAt2 == 'a' && charAt3 == 'm' && charAt4 == 'p' && charAt5 == ';') {
                    stringBuffer.append("&");
                    i = i3;
                } else {
                    if (charAt2 == 'l' && charAt3 == 't' && charAt4 == ';') {
                        stringBuffer.append("<");
                    } else if (charAt2 == 'g' && charAt3 == 't' && charAt4 == ';') {
                        stringBuffer.append(">");
                    } else {
                        if (charAt2 == 'q' && charAt3 == 'u' && charAt4 == 'o' && charAt5 == 't' && charAt6 == ';') {
                            stringBuffer.append("\"");
                        } else if (charAt2 == 'a' && charAt3 == 'p' && charAt4 == 'o' && charAt5 == 's' && charAt6 == ';') {
                            stringBuffer.append("'");
                        } else {
                            stringBuffer.append("&");
                        }
                        i += 6;
                    }
                    i = i2;
                }
            } else {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return new String(stringBuffer);
    }

    public static String encode(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                stringBuffer.append("&quot;");
            } else if (charAt == '<') {
                stringBuffer.append("&lt;");
            } else if (charAt == '>') {
                stringBuffer.append("&gt;");
            } else if (charAt == '&') {
                stringBuffer.append("&amp;");
            } else if (charAt == '\'') {
                stringBuffer.append("&apos;");
            } else {
                stringBuffer.append(charAt);
            }
        }
        return new String(stringBuffer);
    }

    public void xmlSerializeNode(Writer writer) throws IOException {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("<");
        stringBuffer.append(new StringBuffer().append(getClass().getName()).append(" ").toString());
        stringBuffer.append(new StringBuffer("text=\"").append(encode(getText())).append("\" type=\"").append(getType()).append("\"/>").toString());
        writer.write(stringBuffer.toString());
    }

    public void xmlSerializeRootOpen(Writer writer) throws IOException {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("<");
        stringBuffer.append(new StringBuffer().append(getClass().getName()).append(" ").toString());
        stringBuffer.append(new StringBuffer("text=\"").append(encode(getText())).append("\" type=\"").append(getType()).append("\">\n").toString());
        writer.write(stringBuffer.toString());
    }

    public void xmlSerializeRootClose(Writer writer) throws IOException {
        writer.write(new StringBuffer("</").append(getClass().getName()).append(">\n").toString());
    }

    public void xmlSerialize(Writer writer) throws IOException {
        for (AST ast = this; ast != null; ast = ast.getNextSibling()) {
            if (ast.getFirstChild() == null) {
                ((BaseAST) ast).xmlSerializeNode(writer);
            } else {
                BaseAST baseAST = (BaseAST) ast;
                baseAST.xmlSerializeRootOpen(writer);
                ((BaseAST) ast.getFirstChild()).xmlSerialize(writer);
                baseAST.xmlSerializeRootClose(writer);
            }
        }
    }
}
