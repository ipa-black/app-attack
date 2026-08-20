package antlr.debug;
/* loaded from: classes.dex */
public class Tracer extends TraceAdapter implements TraceListener {
    String indent = "";

    protected void dedent() {
        if (this.indent.length() < 2) {
            this.indent = "";
        } else {
            this.indent = this.indent.substring(2);
        }
    }

    @Override // antlr.debug.TraceAdapter, antlr.debug.TraceListener
    public void enterRule(TraceEvent traceEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(traceEvent).toString());
        indent();
    }

    @Override // antlr.debug.TraceAdapter, antlr.debug.TraceListener
    public void exitRule(TraceEvent traceEvent) {
        dedent();
        System.out.println(new StringBuffer().append(this.indent).append(traceEvent).toString());
    }

    protected void indent() {
        this.indent = new StringBuffer().append(this.indent).append("  ").toString();
    }
}
