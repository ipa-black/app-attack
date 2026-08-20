package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public interface TupleNode {
    void accept(TupleNodeVisitor tupleNodeVisitor);

    void encode(ByteBuffer byteBuffer);

    boolean equals(Object obj);

    int getChildCount();

    TupleNode getChildTupleNodeAt(int i);

    Iterator getChildren();

    int getIndex(TupleNode tupleNode);

    TupleNode getParentTupleNode();

    Tuple getTuple();

    List getValueChunks();

    int size();
}
