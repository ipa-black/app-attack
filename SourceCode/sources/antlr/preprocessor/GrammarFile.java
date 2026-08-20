package antlr.preprocessor;

import antlr.collections.impl.IndexedVector;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
/* loaded from: classes.dex */
public class GrammarFile {
    protected String fileName;
    protected IndexedVector options;
    protected antlr.Tool tool;
    protected String headerAction = "";
    protected boolean expanded = false;
    protected IndexedVector grammars = new IndexedVector();

    public GrammarFile(antlr.Tool tool, String str) {
        this.fileName = str;
        this.tool = tool;
    }

    public void addGrammar(Grammar grammar) {
        this.grammars.appendElement(grammar.getName(), grammar);
    }

    public void generateExpandedFile() throws IOException {
        if (this.expanded) {
            PrintWriter openOutputFile = this.tool.openOutputFile(nameForExpandedGrammarFile(getName()));
            openOutputFile.println(toString());
            openOutputFile.close();
        }
    }

    public IndexedVector getGrammars() {
        return this.grammars;
    }

    public String getName() {
        return this.fileName;
    }

    public String nameForExpandedGrammarFile(String str) {
        return this.expanded ? new StringBuffer("expanded").append(this.tool.fileMinusPath(str)).toString() : str;
    }

    public void setExpanded(boolean z) {
        this.expanded = z;
    }

    public void addHeaderAction(String str) {
        this.headerAction = new StringBuffer().append(this.headerAction).append(str).append(System.getProperty("line.separator")).toString();
    }

    public void setOptions(IndexedVector indexedVector) {
        this.options = indexedVector;
    }

    public String toString() {
        String str = this.headerAction;
        if (str == null) {
            str = "";
        }
        IndexedVector indexedVector = this.options;
        String optionsToString = indexedVector != null ? Hierarchy.optionsToString(indexedVector) : "";
        StringBuffer stringBuffer = new StringBuffer(10000);
        stringBuffer.append(str);
        stringBuffer.append(optionsToString);
        Enumeration elements = this.grammars.elements();
        while (elements.hasMoreElements()) {
            stringBuffer.append(((Grammar) elements.nextElement()).toString());
        }
        return stringBuffer.toString();
    }
}
