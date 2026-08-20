package org.apache.asn1.ber;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class DeterminateLengthVisitor implements TupleNodeVisitor {
    private VisitorMonitor monitor = VisitorMonitor.NOOP;

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public ArrayList getOrder(TupleNode tupleNode, ArrayList arrayList) {
        return arrayList;
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public boolean isPrefix() {
        return false;
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public void visit(TupleNode tupleNode) {
        Iterator children = tupleNode.getChildren();
        int i = 0;
        while (children.hasNext()) {
            TupleNode tupleNode2 = (TupleNode) children.next();
            Tuple tuple = tupleNode2.getTuple();
            if (tuple.isIndefiniteTerminator()) {
                ((MutableTupleNode) tupleNode2).setParent(null);
            } else {
                i += tuple.size();
            }
        }
        tupleNode.getTuple().setValueLength(i);
        this.monitor.visited(this, tupleNode);
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public boolean canVisit(TupleNode tupleNode) {
        return tupleNode.getTuple().isIndefinite();
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public void setMonitor(VisitorMonitor visitorMonitor) {
        this.monitor = visitorMonitor;
    }
}
