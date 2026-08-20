package org.apache.asn1.ber;

import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public interface TupleEventConsumer {
    void chunkedValue(Tuple tuple, ByteBuffer byteBuffer);

    void finish(Tuple tuple);

    void length(Tuple tuple);

    void tag(Tuple tuple);
}
