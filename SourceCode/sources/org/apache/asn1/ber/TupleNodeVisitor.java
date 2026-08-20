package org.apache.asn1.ber;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public interface TupleNodeVisitor {
    boolean canVisit(TupleNode tupleNode);

    ArrayList getOrder(TupleNode tupleNode, ArrayList arrayList);

    boolean isPrefix();

    void setMonitor(VisitorMonitor visitorMonitor);

    void visit(TupleNode tupleNode);
}
