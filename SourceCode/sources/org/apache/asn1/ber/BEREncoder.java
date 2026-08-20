package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.stateful.AbstractStatefulEncoder;
/* loaded from: classes5.dex */
public class BEREncoder extends AbstractStatefulEncoder implements TupleEventConsumer {
    private static final int DEFAULT_BUFSZ = 32;
    private ByteBuffer buf;

    public BEREncoder() {
        this(32);
    }

    public BEREncoder(int i) {
        this.buf = null;
        this.buf = ByteBuffer.allocateDirect(i);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) {
        throw new UnsupportedOperationException("This encoder receives tuples ONLY via callback methods");
    }

    @Override // org.apache.asn1.ber.TupleEventConsumer
    public void tag(Tuple tuple) {
        if (this.buf.remaining() >= tuple.getTagLength()) {
            tuple.setTag(this.buf, tuple.getTagLength());
            return;
        }
        this.buf.flip();
        encodeOccurred(this.buf);
        this.buf.clear();
        tuple.setTag(this.buf, tuple.getTagLength());
    }

    @Override // org.apache.asn1.ber.TupleEventConsumer
    public void length(Tuple tuple) {
        if (this.buf.remaining() >= tuple.getLengthLength()) {
            tuple.setLength(this.buf, tuple.getLengthLength());
            return;
        }
        this.buf.flip();
        encodeOccurred(this.buf);
        this.buf.clear();
        tuple.setLength(this.buf, tuple.getLengthLength());
    }

    @Override // org.apache.asn1.ber.TupleEventConsumer
    public void chunkedValue(Tuple tuple, ByteBuffer byteBuffer) {
        if (this.buf.position() > 0) {
            this.buf.flip();
            encodeOccurred(this.buf);
            this.buf.clear();
        }
        encodeOccurred(tuple.getLastValueChunk());
    }

    @Override // org.apache.asn1.ber.TupleEventConsumer
    public void finish(Tuple tuple) {
        if (!tuple.isPrimitive() && tuple.isIndefinite()) {
            if (this.buf.remaining() < 2) {
                this.buf.flip();
                encodeOccurred(this.buf);
                this.buf.clear();
            }
            this.buf.put((byte) 0);
            this.buf.put((byte) 0);
            this.buf.flip();
            encodeOccurred(this.buf);
            this.buf.clear();
        }
    }
}
