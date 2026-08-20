package antlr.preprocessor;

import antlr.collections.impl.IndexedVector;
import java.util.Enumeration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Rule {
    protected String args;
    protected boolean bang = false;
    protected String block;
    protected Grammar enclosingGrammar;
    protected String initAction;
    protected String name;
    protected IndexedVector options;
    protected String returnValue;
    protected String throwsSpec;
    protected String visibility;

    public Rule(String str, String str2, IndexedVector indexedVector, Grammar grammar) {
        this.name = str;
        this.block = str2;
        this.options = indexedVector;
        setEnclosingGrammar(grammar);
    }

    public String getArgs() {
        return this.args;
    }

    public boolean getBang() {
        return this.bang;
    }

    public String getName() {
        return this.name;
    }

    public String getReturnValue() {
        return this.returnValue;
    }

    public String getVisibility() {
        return this.visibility;
    }

    public boolean narrowerVisibility(Rule rule) {
        if (this.visibility.equals("public")) {
            return !rule.equals("public");
        } else if (this.visibility.equals("protected")) {
            return rule.equals("private");
        } else {
            this.visibility.equals("private");
            return false;
        }
    }

    public boolean sameSignature(Rule rule) {
        boolean equals = this.name.equals(rule.getName());
        String str = this.args;
        boolean equals2 = str != null ? str.equals(rule.getArgs()) : true;
        String str2 = this.returnValue;
        return equals && equals2 && (str2 != null ? str2.equals(rule.getReturnValue()) : true);
    }

    public void setArgs(String str) {
        this.args = str;
    }

    public void setBang() {
        this.bang = true;
    }

    public void setEnclosingGrammar(Grammar grammar) {
        this.enclosingGrammar = grammar;
    }

    public void setInitAction(String str) {
        this.initAction = str;
    }

    public void setOptions(IndexedVector indexedVector) {
        this.options = indexedVector;
    }

    public void setReturnValue(String str) {
        this.returnValue = str;
    }

    public void setThrowsSpec(String str) {
        this.throwsSpec = str;
    }

    public void setVisibility(String str) {
        this.visibility = str;
    }

    public String toString() {
        String stringBuffer = this.returnValue == null ? "" : new StringBuffer("returns ").append(this.returnValue).toString();
        String str = this.args;
        if (str == null) {
            str = "";
        }
        String stringBuffer2 = new StringBuffer().append(new StringBuffer("").append(this.visibility != null ? new StringBuffer().append(this.visibility).append(" ").toString() : "").toString()).append(this.name).append(getBang() ? "!" : "").append(str).append(" ").append(stringBuffer).append(this.throwsSpec).toString();
        if (this.options != null) {
            String stringBuffer3 = new StringBuffer().append(stringBuffer2).append(System.getProperty("line.separator")).append("options {").append(System.getProperty("line.separator")).toString();
            Enumeration elements = this.options.elements();
            while (elements.hasMoreElements()) {
                stringBuffer3 = new StringBuffer().append(stringBuffer3).append((Option) elements.nextElement()).append(System.getProperty("line.separator")).toString();
            }
            stringBuffer2 = new StringBuffer().append(stringBuffer3).append("}").append(System.getProperty("line.separator")).toString();
        }
        if (this.initAction != null) {
            stringBuffer2 = new StringBuffer().append(stringBuffer2).append(this.initAction).append(System.getProperty("line.separator")).toString();
        }
        return new StringBuffer().append(stringBuffer2).append(this.block).toString();
    }
}
