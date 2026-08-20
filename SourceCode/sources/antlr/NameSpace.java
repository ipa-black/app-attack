package antlr;

import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;
/* loaded from: classes.dex */
public class NameSpace {
    private String _name;
    private Vector names = new Vector();

    public NameSpace(String str) {
        this._name = new String(str);
        parse(str);
    }

    public String getName() {
        return this._name;
    }

    protected void parse(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "::");
        while (stringTokenizer.hasMoreTokens()) {
            this.names.addElement(stringTokenizer.nextToken());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emitDeclarations(PrintWriter printWriter) {
        Enumeration elements = this.names.elements();
        while (elements.hasMoreElements()) {
            printWriter.println(new StringBuffer("ANTLR_BEGIN_NAMESPACE(").append((String) elements.nextElement()).append(")").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emitClosures(PrintWriter printWriter) {
        for (int i = 0; i < this.names.size(); i++) {
            printWriter.println("ANTLR_END_NAMESPACE");
        }
    }
}
