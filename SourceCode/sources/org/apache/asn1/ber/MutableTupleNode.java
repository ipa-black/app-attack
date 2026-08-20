package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes5.dex */
public interface MutableTupleNode extends TupleNode {
    void addValueChunk(ByteBuffer byteBuffer);

    void insert(MutableTupleNode mutableTupleNode, int i);

    void remove(int i);

    void remove(MutableTupleNode mutableTupleNode);

    void removeFromParent();

    void setParent(MutableTupleNode mutableTupleNode);

    void setTuple(Tuple tuple);

    void setTuple(Tuple tuple, List list);
}
