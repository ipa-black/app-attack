package org.apache.asn1.ber;
/* loaded from: classes5.dex */
public interface VisitorMonitor {
    public static final VisitorMonitor NOOP = new VisitorMonitor() { // from class: org.apache.asn1.ber.VisitorMonitor.1
        @Override // org.apache.asn1.ber.VisitorMonitor
        public void visited(TupleNodeVisitor tupleNodeVisitor, TupleNode tupleNode) {
        }
    };

    void visited(TupleNodeVisitor tupleNodeVisitor, TupleNode tupleNode);
}
