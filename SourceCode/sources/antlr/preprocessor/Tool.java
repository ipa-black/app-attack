package antlr.preprocessor;

import antlr.collections.impl.Vector;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Enumeration;
/* loaded from: classes.dex */
public class Tool {
    protected antlr.Tool antlrTool;
    protected String[] args;
    protected String grammarFileName;
    protected Vector grammars;
    protected int nargs;
    protected Hierarchy theHierarchy;

    public Tool(antlr.Tool tool, String[] strArr) {
        this.antlrTool = tool;
        processArguments(strArr);
    }

    public static void main(String[] strArr) {
        Tool tool = new Tool(new antlr.Tool(), strArr);
        tool.preprocess();
        for (String str : tool.preprocessedArgList()) {
            System.out.print(new StringBuffer(" ").append(str).toString());
        }
        System.out.println();
    }

    public boolean preprocess() {
        if (this.grammarFileName == null) {
            this.antlrTool.toolError("no grammar file specified");
            return false;
        }
        if (this.grammars != null) {
            this.theHierarchy = new Hierarchy(this.antlrTool);
            Enumeration elements = this.grammars.elements();
            while (elements.hasMoreElements()) {
                String str = (String) elements.nextElement();
                try {
                    this.theHierarchy.readGrammarFile(str);
                } catch (FileNotFoundException unused) {
                    this.antlrTool.toolError(new StringBuffer("file ").append(str).append(" not found").toString());
                    return false;
                }
            }
        }
        if (this.theHierarchy.verifyThatHierarchyIsComplete()) {
            this.theHierarchy.expandGrammarsInFile(this.grammarFileName);
            GrammarFile file = this.theHierarchy.getFile(this.grammarFileName);
            String nameForExpandedGrammarFile = file.nameForExpandedGrammarFile(this.grammarFileName);
            if (nameForExpandedGrammarFile.equals(this.grammarFileName)) {
                String[] strArr = this.args;
                int i = this.nargs;
                this.nargs = i + 1;
                strArr[i] = this.grammarFileName;
                return true;
            }
            try {
                file.generateExpandedFile();
                String[] strArr2 = this.args;
                int i2 = this.nargs;
                this.nargs = i2 + 1;
                strArr2[i2] = new StringBuffer().append(this.antlrTool.getOutputDirectory()).append(System.getProperty("file.separator")).append(nameForExpandedGrammarFile).toString();
                return true;
            } catch (IOException unused2) {
                this.antlrTool.toolError(new StringBuffer("cannot write expanded grammar file ").append(nameForExpandedGrammarFile).toString());
                return false;
            }
        }
        return false;
    }

    public String[] preprocessedArgList() {
        int i = this.nargs;
        String[] strArr = new String[i];
        System.arraycopy(this.args, 0, strArr, 0, i);
        this.args = strArr;
        return strArr;
    }

    private void processArguments(String[] strArr) {
        this.nargs = 0;
        this.args = new String[strArr.length];
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-glib")) {
                if (File.separator.equals("\\") && strArr[i].indexOf(47) != -1) {
                    this.antlrTool.warning("-glib cannot deal with '/' on a PC: use '\\'; ignoring...");
                } else {
                    i++;
                    this.grammars = antlr.Tool.parseSeparatedList(strArr[i], ';');
                }
            } else if (strArr[i].equals("-o")) {
                String[] strArr2 = this.args;
                int i2 = this.nargs;
                int i3 = i2 + 1;
                this.nargs = i3;
                strArr2[i2] = strArr[i];
                int i4 = i + 1;
                if (i4 >= strArr.length) {
                    this.antlrTool.error("missing output directory with -o option; ignoring");
                } else {
                    this.nargs = i2 + 2;
                    strArr2[i3] = strArr[i4];
                    this.antlrTool.setOutputDirectory(strArr[i4]);
                    i = i4;
                }
            } else if (strArr[i].charAt(0) == '-') {
                String[] strArr3 = this.args;
                int i5 = this.nargs;
                this.nargs = i5 + 1;
                strArr3[i5] = strArr[i];
            } else {
                this.grammarFileName = strArr[i];
                if (this.grammars == null) {
                    this.grammars = new Vector(10);
                }
                this.grammars.appendElement(this.grammarFileName);
                if (i + 1 < strArr.length) {
                    this.antlrTool.warning("grammar file must be last; ignoring other arguments...");
                    return;
                }
            }
            i++;
        }
    }
}
