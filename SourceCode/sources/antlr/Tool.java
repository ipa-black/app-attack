package antlr;

import antlr.collections.impl.BitSet;
import antlr.collections.impl.Vector;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
/* loaded from: classes.dex */
public class Tool {
    protected static String literalsPrefix = "LITERAL_";
    protected static String outputDir = ".";
    protected static boolean upperCaseMangledLiterals = false;
    public static String version = "";
    protected String grammarFile;
    protected boolean hasError = false;
    boolean genDiagnostics = false;
    boolean genDocBook = false;
    boolean genHTML = false;

    /* renamed from: f  reason: collision with root package name */
    transient Reader f12f = new InputStreamReader(System.in);
    protected NameSpace nameSpace = null;
    protected String namespaceAntlr = null;
    protected String namespaceStd = null;
    protected boolean genHashLines = true;
    protected boolean noConstructors = false;
    private BitSet cmdLineArgValid = new BitSet();
    ToolErrorHandler errorHandler = new DefaultToolErrorHandler(this);

    public String getGrammarFile() {
        return this.grammarFile;
    }

    public boolean hasError() {
        return this.hasError;
    }

    public NameSpace getNameSpace() {
        return this.nameSpace;
    }

    public String getNamespaceStd() {
        return this.namespaceStd;
    }

    public String getNamespaceAntlr() {
        return this.namespaceAntlr;
    }

    public boolean getGenHashLines() {
        return this.genHashLines;
    }

    public String getLiteralsPrefix() {
        return literalsPrefix;
    }

    public boolean getUpperCaseMangledLiterals() {
        return upperCaseMangledLiterals;
    }

    public void setFileLineFormatter(FileLineFormatter fileLineFormatter) {
        FileLineFormatter.setFormatter(fileLineFormatter);
    }

    protected void checkForInvalidArguments(String[] strArr, BitSet bitSet) {
        for (int i = 0; i < strArr.length; i++) {
            if (!bitSet.member(i)) {
                warning(new StringBuffer("invalid command-line argument: ").append(strArr[i]).append("; ignored").toString());
            }
        }
    }

    public void copyFile(String str, String str2) throws IOException {
        BufferedWriter bufferedWriter;
        File file = new File(str);
        File file2 = new File(str2);
        BufferedReader bufferedReader = null;
        try {
            if (!file.exists() || !file.isFile()) {
                throw new FileCopyException(new StringBuffer("FileCopy: no such source file: ").append(str).toString());
            }
            if (!file.canRead()) {
                throw new FileCopyException(new StringBuffer("FileCopy: source file is unreadable: ").append(str).toString());
            }
            if (file2.exists()) {
                if (file2.isFile()) {
                    new DataInputStream(System.in);
                    if (!file2.canWrite()) {
                        throw new FileCopyException(new StringBuffer("FileCopy: destination file is unwriteable: ").append(str2).toString());
                    }
                } else {
                    throw new FileCopyException(new StringBuffer("FileCopy: destination is not a file: ").append(str2).toString());
                }
            } else {
                File parent = parent(file2);
                if (!parent.exists()) {
                    throw new FileCopyException(new StringBuffer("FileCopy: destination directory doesn't exist: ").append(str2).toString());
                }
                if (!parent.canWrite()) {
                    throw new FileCopyException(new StringBuffer("FileCopy: destination directory is unwriteable: ").append(str2).toString());
                }
            }
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file2));
                try {
                    char[] cArr = new char[1024];
                    while (true) {
                        int read = bufferedReader2.read(cArr, 0, 1024);
                        if (read == -1) {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        } else {
                            bufferedWriter.write(cArr, 0, read);
                        }
                    }
                    bufferedReader2.close();
                    try {
                        bufferedWriter.close();
                    } catch (IOException unused2) {
                    }
                } catch (Throwable th) {
                    bufferedReader = bufferedReader2;
                    th = th;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                bufferedReader = bufferedReader2;
                th = th2;
                bufferedWriter = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter = null;
        }
    }

    public void doEverythingWrapper(String[] strArr) {
        System.exit(doEverything(strArr));
    }

    public int doEverything(String[] strArr) {
        antlr.preprocessor.Tool tool = new antlr.preprocessor.Tool(this, strArr);
        boolean preprocess = tool.preprocess();
        String[] preprocessedArgList = tool.preprocessedArgList();
        processArguments(preprocessedArgList);
        if (preprocess) {
            this.f12f = getGrammarReader();
            TokenBuffer tokenBuffer = new TokenBuffer(new ANTLRLexer(this.f12f));
            LLkAnalyzer lLkAnalyzer = new LLkAnalyzer(this);
            MakeGrammar makeGrammar = new MakeGrammar(this, strArr, lLkAnalyzer);
            try {
                ANTLRParser aNTLRParser = new ANTLRParser(tokenBuffer, makeGrammar, this);
                aNTLRParser.setFilename(this.grammarFile);
                aNTLRParser.grammar();
                if (hasError()) {
                    fatalError("Exiting due to errors.");
                }
                checkForInvalidArguments(preprocessedArgList, this.cmdLineArgValid);
                String stringBuffer = new StringBuffer("antlr.").append(getLanguage(makeGrammar)).append("CodeGenerator").toString();
                try {
                    CodeGenerator codeGenerator = (CodeGenerator) Class.forName(stringBuffer).newInstance();
                    codeGenerator.setBehavior(makeGrammar);
                    codeGenerator.setAnalyzer(lLkAnalyzer);
                    codeGenerator.setTool(this);
                    codeGenerator.gen();
                    return 0;
                } catch (ClassNotFoundException unused) {
                    panic(new StringBuffer("Cannot instantiate code-generator: ").append(stringBuffer).toString());
                    return 0;
                } catch (IllegalAccessException unused2) {
                    panic(new StringBuffer("code-generator class '").append(stringBuffer).append("' is not accessible").toString());
                    return 0;
                } catch (IllegalArgumentException unused3) {
                    panic(new StringBuffer("Cannot instantiate code-generator: ").append(stringBuffer).toString());
                    return 0;
                } catch (InstantiationException unused4) {
                    panic(new StringBuffer("Cannot instantiate code-generator: ").append(stringBuffer).toString());
                    return 0;
                }
            } catch (RecognitionException e2) {
                fatalError(new StringBuffer("Unhandled parser error: ").append(e2.getMessage()).toString());
                return 0;
            } catch (TokenStreamException e3) {
                fatalError(new StringBuffer("TokenStreamException: ").append(e3.getMessage()).toString());
                return 0;
            }
        }
        return 1;
    }

    public void error(String str) {
        this.hasError = true;
        System.err.println(new StringBuffer("error: ").append(str).toString());
    }

    public void error(String str, String str2, int i, int i2) {
        this.hasError = true;
        System.err.println(new StringBuffer().append(FileLineFormatter.getFormatter().getFormatString(str2, i, i2)).append(str).toString());
    }

    public Object factory(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Exception unused) {
            warning(new StringBuffer("Can't create an object of type ").append(str).toString());
            return null;
        }
    }

    public String fileMinusPath(String str) {
        int lastIndexOf = str.lastIndexOf(System.getProperty("file.separator"));
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public String getLanguage(MakeGrammar makeGrammar) {
        if (this.genDiagnostics) {
            return "Diagnostic";
        }
        if (this.genHTML) {
            return "HTML";
        }
        if (this.genDocBook) {
            return "DocBook";
        }
        return makeGrammar.language;
    }

    public String getOutputDirectory() {
        return outputDir;
    }

    private static void help() {
        System.err.println("usage: java antlr.Tool [args] file.g");
        System.err.println("  -o outputDir       specify output directory where all output generated.");
        System.err.println("  -glib superGrammar specify location of supergrammar file.");
        System.err.println("  -debug             launch the ParseView debugger upon parser invocation.");
        System.err.println("  -html              generate a html file from your grammar.");
        System.err.println("  -docbook           generate a docbook sgml file from your grammar.");
        System.err.println("  -diagnostic        generate a textfile with diagnostics.");
        System.err.println("  -trace             have all rules call traceIn/traceOut.");
        System.err.println("  -traceLexer        have lexer rules call traceIn/traceOut.");
        System.err.println("  -traceParser       have parser rules call traceIn/traceOut.");
        System.err.println("  -traceTreeParser   have tree parser rules call traceIn/traceOut.");
        System.err.println("  -h|-help|--help    this message");
    }

    public static void main(String[] strArr) {
        System.err.println("ANTLR Parser Generator   Version 2.7.2   1989-2003 jGuru.com");
        version = Version.project_version;
        try {
            if (strArr.length == 0) {
                help();
                System.exit(1);
            }
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i].equals("-h") || strArr[i].equals("-help") || strArr[i].equals("--help")) {
                    help();
                    System.exit(1);
                }
            }
            new Tool().doEverything(strArr);
        } catch (Exception e2) {
            System.err.println(new StringBuffer().append(System.getProperty("line.separator")).append(System.getProperty("line.separator")).toString());
            System.err.println(new StringBuffer("#$%%*&@# internal error: ").append(e2.toString()).toString());
            System.err.println("[complain to nearest government official");
            System.err.println(" or send hate-mail to parrt@jguru.com;");
            System.err.println(new StringBuffer(" please send stack trace with report.]").append(System.getProperty("line.separator")).toString());
            e2.printStackTrace();
        }
        System.exit(0);
    }

    public PrintWriter openOutputFile(String str) throws IOException {
        return new PrintWriter(new PreservingFileWriter(new StringBuffer().append(outputDir).append(System.getProperty("file.separator")).append(str).toString()));
    }

    public Reader getGrammarReader() {
        try {
            if (this.grammarFile != null) {
                return new BufferedReader(new FileReader(this.grammarFile));
            }
            return null;
        } catch (IOException unused) {
            fatalError(new StringBuffer("cannot open grammar file ").append(this.grammarFile).toString());
            return null;
        }
    }

    public void reportException(Exception exc, String str) {
        System.err.println(str == null ? exc.getMessage() : new StringBuffer().append(str).append(": ").append(exc.getMessage()).toString());
    }

    public void reportProgress(String str) {
        System.out.println(str);
    }

    public void fatalError(String str) {
        System.err.println(str);
        System.exit(1);
    }

    public void panic() {
        fatalError("panic");
    }

    public void panic(String str) {
        fatalError(new StringBuffer("panic: ").append(str).toString());
    }

    public File parent(File file) {
        String parent = file.getParent();
        if (parent == null) {
            if (file.isAbsolute()) {
                return new File(File.separator);
            }
            return new File(System.getProperty("user.dir"));
        }
        return new File(parent);
    }

    public static Vector parseSeparatedList(String str, char c2) {
        Vector vector = new Vector(10);
        StringBuffer stringBuffer = new StringBuffer(100);
        int i = 0;
        while (i < str.length()) {
            while (i < str.length() && str.charAt(i) != c2) {
                stringBuffer.append(str.charAt(i));
                i++;
            }
            vector.appendElement(stringBuffer.toString());
            stringBuffer.setLength(0);
            if (i < str.length()) {
                i++;
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        return vector;
    }

    public String pathToFile(String str) {
        int lastIndexOf = str.lastIndexOf(System.getProperty("file.separator"));
        if (lastIndexOf == -1) {
            return new StringBuffer(".").append(System.getProperty("file.separator")).toString();
        }
        return str.substring(0, lastIndexOf + 1);
    }

    protected void processArguments(String[] strArr) {
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-diagnostic")) {
                this.genDiagnostics = true;
                this.genHTML = false;
                setArgOK(i);
            } else if (strArr[i].equals("-o")) {
                setArgOK(i);
                int i2 = i + 1;
                if (i2 >= strArr.length) {
                    error("missing output directory with -o option; ignoring");
                } else {
                    setOutputDirectory(strArr[i2]);
                    setArgOK(i2);
                    i = i2;
                }
            } else if (strArr[i].equals("-html")) {
                this.genHTML = true;
                this.genDiagnostics = false;
                setArgOK(i);
            } else if (strArr[i].equals("-docbook")) {
                this.genDocBook = true;
                this.genDiagnostics = false;
                setArgOK(i);
            } else if (strArr[i].charAt(0) != '-') {
                this.grammarFile = strArr[i];
                setArgOK(i);
            }
            i++;
        }
    }

    public void setArgOK(int i) {
        this.cmdLineArgValid.add(i);
    }

    public void setOutputDirectory(String str) {
        outputDir = str;
    }

    public void toolError(String str) {
        System.err.println(new StringBuffer("error: ").append(str).toString());
    }

    public void warning(String str) {
        System.err.println(new StringBuffer("warning: ").append(str).toString());
    }

    public void warning(String str, String str2, int i, int i2) {
        System.err.println(new StringBuffer().append(FileLineFormatter.getFormatter().getFormatString(str2, i, i2)).append("warning:").append(str).toString());
    }

    public void warning(String[] strArr, String str, int i, int i2) {
        if (strArr == null || strArr.length == 0) {
            panic("bad multi-line message to Tool.warning");
        }
        System.err.println(new StringBuffer().append(FileLineFormatter.getFormatter().getFormatString(str, i, i2)).append("warning:").append(strArr[0]).toString());
        for (int i3 = 1; i3 < strArr.length; i3++) {
            System.err.println(new StringBuffer().append(FileLineFormatter.getFormatter().getFormatString(str, i, i2)).append("    ").append(strArr[i3]).toString());
        }
    }

    public void setNameSpace(String str) {
        if (this.nameSpace == null) {
            this.nameSpace = new NameSpace(StringUtils.stripFrontBack(str, "\"", "\""));
        }
    }
}
