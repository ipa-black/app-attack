package antlr;

import java.io.PrintWriter;
/* loaded from: classes.dex */
public class CSharpNameSpace extends NameSpace {
    public CSharpNameSpace(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // antlr.NameSpace
    public void emitDeclarations(PrintWriter printWriter) {
        printWriter.println(new StringBuffer("namespace ").append(getName()).toString());
        printWriter.println("{");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // antlr.NameSpace
    public void emitClosures(PrintWriter printWriter) {
        printWriter.println("}");
    }
}
