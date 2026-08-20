package antlr.preprocessor;

import antlr.CodeGenerator;
import antlr.collections.impl.IndexedVector;
import java.io.IOException;
import java.util.Enumeration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Grammar {
    protected antlr.Tool antlrTool;
    protected String fileName;
    protected Hierarchy hier;
    protected String memberAction;
    protected String name;
    protected IndexedVector options;
    protected String preambleAction;
    protected IndexedVector rules;
    protected String superGrammar;
    protected String tokenSection;
    protected String type;
    protected boolean predefined = false;
    protected boolean alreadyExpanded = false;
    protected boolean specifiedVocabulary = false;
    protected String importVocab = null;
    protected String exportVocab = null;

    public Grammar(antlr.Tool tool, String str, String str2, IndexedVector indexedVector) {
        this.name = str;
        this.superGrammar = str2;
        this.rules = indexedVector;
        this.antlrTool = tool;
    }

    public void addOption(Option option) {
        if (this.options == null) {
            this.options = new IndexedVector();
        }
        this.options.appendElement(option.getName(), option);
    }

    public void addRule(Rule rule) {
        this.rules.appendElement(rule.getName(), rule);
    }

    public void expandInPlace() {
        Grammar superGrammar;
        if (this.alreadyExpanded || (superGrammar = getSuperGrammar()) == null) {
            return;
        }
        if (this.exportVocab == null) {
            this.exportVocab = getName();
        }
        if (superGrammar.isPredefined()) {
            return;
        }
        superGrammar.expandInPlace();
        this.alreadyExpanded = true;
        this.hier.getFile(getFileName()).setExpanded(true);
        Enumeration elements = superGrammar.getRules().elements();
        while (elements.hasMoreElements()) {
            inherit((Rule) elements.nextElement(), superGrammar);
        }
        IndexedVector options = superGrammar.getOptions();
        if (options != null) {
            Enumeration elements2 = options.elements();
            while (elements2.hasMoreElements()) {
                inherit((Option) elements2.nextElement(), superGrammar);
            }
        }
        IndexedVector indexedVector = this.options;
        if ((indexedVector != null && indexedVector.getElement("importVocab") == null) || this.options == null) {
            addOption(new Option("importVocab", new StringBuffer().append(superGrammar.exportVocab).append(";").toString(), this));
            String pathToFile = this.antlrTool.pathToFile(superGrammar.getFileName());
            String stringBuffer = new StringBuffer().append(pathToFile).append(superGrammar.exportVocab).append(CodeGenerator.TokenTypesFileSuffix).append(CodeGenerator.TokenTypesFileExt).toString();
            String fileMinusPath = this.antlrTool.fileMinusPath(stringBuffer);
            if (!pathToFile.equals(new StringBuffer(".").append(System.getProperty("file.separator")).toString())) {
                try {
                    this.antlrTool.copyFile(stringBuffer, fileMinusPath);
                } catch (IOException unused) {
                    this.antlrTool.toolError(new StringBuffer("cannot find/copy importVocab file ").append(stringBuffer).toString());
                    return;
                }
            }
        }
        inherit(superGrammar.memberAction, superGrammar);
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getName() {
        return this.name;
    }

    public IndexedVector getOptions() {
        return this.options;
    }

    public IndexedVector getRules() {
        return this.rules;
    }

    public Grammar getSuperGrammar() {
        String str = this.superGrammar;
        if (str == null) {
            return null;
        }
        return this.hier.getGrammar(str);
    }

    public String getSuperGrammarName() {
        return this.superGrammar;
    }

    public String getType() {
        return this.type;
    }

    public void inherit(Option option, Grammar grammar) {
        if (option.getName().equals("importVocab") || option.getName().equals("exportVocab")) {
            return;
        }
        IndexedVector indexedVector = this.options;
        if ((indexedVector != null ? (Option) indexedVector.getElement(option.getName()) : null) == null) {
            addOption(option);
        }
    }

    public void inherit(Rule rule, Grammar grammar) {
        Rule rule2 = (Rule) this.rules.getElement(rule.getName());
        if (rule2 != null) {
            if (rule2.sameSignature(rule)) {
                return;
            }
            this.antlrTool.warning(new StringBuffer("rule ").append(getName()).append(".").append(rule2.getName()).append(" has different signature than ").append(grammar.getName()).append(".").append(rule2.getName()).toString());
            return;
        }
        addRule(rule);
    }

    public void inherit(String str, Grammar grammar) {
        if (this.memberAction == null && str != null) {
            this.memberAction = str;
        }
    }

    public boolean isPredefined() {
        return this.predefined;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setHierarchy(Hierarchy hierarchy) {
        this.hier = hierarchy;
    }

    public void setMemberAction(String str) {
        this.memberAction = str;
    }

    public void setOptions(IndexedVector indexedVector) {
        this.options = indexedVector;
    }

    public void setPreambleAction(String str) {
        this.preambleAction = str;
    }

    public void setPredefined(boolean z) {
        this.predefined = z;
    }

    public void setTokenSection(String str) {
        this.tokenSection = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10000);
        String str = this.preambleAction;
        if (str != null) {
            stringBuffer.append(str);
        }
        if (this.superGrammar == null) {
            return new StringBuffer("class ").append(this.name).append(";").toString();
        }
        stringBuffer.append(new StringBuffer("class ").append(this.name).append(" extends ").append(this.type).append(";").append(System.getProperty("line.separator")).append(System.getProperty("line.separator")).toString());
        IndexedVector indexedVector = this.options;
        if (indexedVector != null) {
            stringBuffer.append(Hierarchy.optionsToString(indexedVector));
        }
        if (this.tokenSection != null) {
            stringBuffer.append(new StringBuffer().append(this.tokenSection).append("\n").toString());
        }
        if (this.memberAction != null) {
            stringBuffer.append(new StringBuffer().append(this.memberAction).append(System.getProperty("line.separator")).toString());
        }
        for (int i = 0; i < this.rules.size(); i++) {
            Rule rule = (Rule) this.rules.elementAt(i);
            if (!getName().equals(rule.enclosingGrammar.getName())) {
                stringBuffer.append(new StringBuffer("// inherited from grammar ").append(rule.enclosingGrammar.getName()).append(System.getProperty("line.separator")).toString());
            }
            stringBuffer.append(new StringBuffer().append(rule).append(System.getProperty("line.separator")).append(System.getProperty("line.separator")).toString());
        }
        return stringBuffer.toString();
    }
}
