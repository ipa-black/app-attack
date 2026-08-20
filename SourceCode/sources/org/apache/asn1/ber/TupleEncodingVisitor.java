package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.AbstractStatefulEncoder;
/* loaded from: classes5.dex */
public class TupleEncodingVisitor extends AbstractStatefulEncoder implements TupleNodeVisitor {
    private static final ByteBuffer[] EMPTY_ARRAY = new ByteBuffer[0];
    private ArrayList buffers = new ArrayList();
    private VisitorMonitor visitorMonitor = VisitorMonitor.NOOP;

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public boolean canVisit(TupleNode tupleNode) {
        return true;
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public ArrayList getOrder(TupleNode tupleNode, ArrayList arrayList) {
        return arrayList;
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public boolean isPrefix() {
        return true;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) throws EncoderException {
        if (obj instanceof DefaultMutableTupleNode) {
            ((DefaultMutableTupleNode) obj).accept(this);
            return;
        }
        throw new IllegalArgumentException(new StringBuffer("Expected an argument of type DefaultMutableTupleNode but instead got an instance of ").append(obj.getClass().getName()).toString());
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public void visit(TupleNode tupleNode) {
        Tuple tuple = tupleNode.getTuple();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[tuple.getTagLength() + tuple.getLengthLength()]);
        tuple.setTag(wrap, tuple.getTagLength());
        tuple.setLength(wrap, tuple.getLengthLength());
        this.buffers.add(wrap.flip());
        if (tuple.isPrimitive()) {
            this.buffers.add(tuple.getLastValueChunk());
        }
        this.visitorMonitor.visited(this, tupleNode);
    }

    public void flush() {
        this.buffers.clear();
        super.encodeOccurred((ByteBuffer[]) this.buffers.toArray(EMPTY_ARRAY));
    }

    @Override // org.apache.asn1.ber.TupleNodeVisitor
    public void setMonitor(VisitorMonitor visitorMonitor) {
        this.visitorMonitor = visitorMonitor;
    }
}
