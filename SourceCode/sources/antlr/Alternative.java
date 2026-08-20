package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Alternative {
    protected Lookahead[] cache;
    private boolean doAutoGen;
    protected ExceptionSpec exceptionSpec;
    AlternativeElement head;
    protected int lookaheadDepth;
    protected String semPred;
    protected SynPredBlock synPred;
    AlternativeElement tail;
    protected Token treeSpecifier = null;

    public Alternative() {
    }

    public Alternative(AlternativeElement alternativeElement) {
        addElement(alternativeElement);
    }

    public void addElement(AlternativeElement alternativeElement) {
        if (this.head == null) {
            this.tail = alternativeElement;
            this.head = alternativeElement;
            return;
        }
        this.tail.next = alternativeElement;
        this.tail = alternativeElement;
    }

    public boolean atStart() {
        return this.head == null;
    }

    public boolean getAutoGen() {
        return this.doAutoGen && this.treeSpecifier == null;
    }

    public Token getTreeSpecifier() {
        return this.treeSpecifier;
    }

    public void setAutoGen(boolean z) {
        this.doAutoGen = z;
    }
}
