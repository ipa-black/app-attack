package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.asn1.codec.binary.Hex;
import org.apache.commons.lang.StringUtils;
/* loaded from: classes5.dex */
public class DefaultMutableTupleNode implements MutableTupleNode {
    private ArrayList children;
    private DefaultMutableTupleNode parent;
    private Tuple tuple;
    private List valueChunks;

    public DefaultMutableTupleNode() {
        this.children = new ArrayList();
        this.valueChunks = new ArrayList(2);
    }

    public DefaultMutableTupleNode(Tuple tuple) {
        this.children = new ArrayList();
        this.valueChunks = new ArrayList(2);
        this.tuple = tuple;
        if (!tuple.isPrimitive() || tuple.getLastValueChunk() == null) {
            return;
        }
        this.valueChunks.add(tuple.getLastValueChunk());
    }

    public DefaultMutableTupleNode(Tuple tuple, List list) {
        this.children = new ArrayList();
        ArrayList arrayList = new ArrayList(2);
        this.valueChunks = arrayList;
        this.tuple = tuple;
        arrayList.addAll(list);
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void insert(MutableTupleNode mutableTupleNode, int i) {
        this.children.add(i, mutableTupleNode);
    }

    public void addFront(DefaultMutableTupleNode defaultMutableTupleNode) {
        if (this.children.isEmpty()) {
            this.children.add(defaultMutableTupleNode);
        } else {
            this.children.add(0, defaultMutableTupleNode);
        }
    }

    public void addLast(DefaultMutableTupleNode defaultMutableTupleNode) {
        this.children.add(defaultMutableTupleNode);
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void remove(int i) {
        this.children.remove(i);
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void remove(MutableTupleNode mutableTupleNode) {
        this.children.remove(mutableTupleNode);
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void removeFromParent() {
        this.parent.remove(this);
        this.parent = null;
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void setParent(MutableTupleNode mutableTupleNode) {
        DefaultMutableTupleNode defaultMutableTupleNode = this.parent;
        if (defaultMutableTupleNode != null) {
            defaultMutableTupleNode.remove(this);
        }
        this.parent = (DefaultMutableTupleNode) mutableTupleNode;
    }

    @Override // org.apache.asn1.ber.TupleNode
    public TupleNode getParentTupleNode() {
        return this.parent;
    }

    @Override // org.apache.asn1.ber.TupleNode
    public Iterator getChildren() {
        return Collections.unmodifiableList(this.children).iterator();
    }

    @Override // org.apache.asn1.ber.TupleNode
    public TupleNode getChildTupleNodeAt(int i) {
        return (TupleNode) this.children.get(i);
    }

    @Override // org.apache.asn1.ber.TupleNode
    public int getIndex(TupleNode tupleNode) {
        return this.children.indexOf(tupleNode);
    }

    @Override // org.apache.asn1.ber.TupleNode
    public int getChildCount() {
        return this.children.size();
    }

    @Override // org.apache.asn1.ber.TupleNode
    public int size() {
        if (this.tuple.isPrimitive()) {
            return this.tuple.size();
        }
        int size = this.tuple.size();
        if (this.tuple.isIndefinite()) {
            TupleNode tupleNode = null;
            for (int i = 0; i < this.children.size(); i++) {
                tupleNode = (TupleNode) this.children.get(i);
                size += tupleNode.size();
            }
            return (tupleNode == null || !tupleNode.getTuple().isIndefiniteTerminator()) ? size + 2 : size;
        }
        return size;
    }

    @Override // org.apache.asn1.ber.TupleNode
    public Tuple getTuple() {
        return this.tuple;
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void setTuple(Tuple tuple) {
        this.tuple = tuple;
        this.valueChunks.clear();
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void setTuple(Tuple tuple, List list) {
        this.tuple = tuple;
        this.valueChunks.clear();
        this.valueChunks.addAll(list);
    }

    @Override // org.apache.asn1.ber.TupleNode
    public List getValueChunks() {
        return this.valueChunks;
    }

    @Override // org.apache.asn1.ber.MutableTupleNode
    public void addValueChunk(ByteBuffer byteBuffer) {
        this.valueChunks.add(byteBuffer);
    }

    @Override // org.apache.asn1.ber.TupleNode
    public void encode(ByteBuffer byteBuffer) {
        byteBuffer.put(this.tuple.toEncodedBuffer(this.valueChunks));
        if (this.tuple.isPrimitive()) {
            return;
        }
        TupleNode tupleNode = null;
        for (int i = 0; i < this.children.size(); i++) {
            tupleNode = (TupleNode) this.children.get(i);
            tupleNode.encode(byteBuffer);
        }
        if ((tupleNode == null || !tupleNode.getTuple().isIndefiniteTerminator()) && this.tuple.isIndefinite()) {
            byteBuffer.put((byte) 0);
            byteBuffer.put((byte) 0);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.tuple.getId());
        stringBuffer.append(' ').append(this.tuple.typeClass);
        stringBuffer.append('[').append(this.tuple.length).append("][");
        stringBuffer.append(new String(this.tuple.getLastValueChunk().array()));
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    public String toDepthFirstString() {
        StringBuffer stringBuffer = new StringBuffer();
        printDepthFirst(stringBuffer, 0);
        return stringBuffer.toString();
    }

    private String getHex(int i) {
        return new String(Hex.encodeHex(new byte[]{(byte) (((-16777216) & i) >> 24), (byte) ((16711680 & i) >> 16), (byte) ((65280 & i) >> 8), (byte) (i & 255)}));
    }

    public void printDepthFirst(StringBuffer stringBuffer, int i) {
        String repeat = StringUtils.repeat("\t", i);
        if (i != 0) {
            stringBuffer.append("\n");
        }
        stringBuffer.append(repeat).append(this.tuple.getId());
        stringBuffer.append(" [").append("0x");
        stringBuffer.append(getHex(this.tuple.getRawPrimitiveTag()));
        stringBuffer.append(']');
        stringBuffer.append('[').append(this.tuple.length).append(']');
        for (int i2 = 0; i2 < this.children.size(); i2++) {
            ((DefaultMutableTupleNode) this.children.get(i2)).printDepthFirst(stringBuffer, i + 1);
        }
    }

    @Override // org.apache.asn1.ber.TupleNode
    public boolean equals(Object obj) {
        if (obj instanceof DefaultMutableTupleNode) {
            return equals(this, (DefaultMutableTupleNode) obj);
        }
        return false;
    }

    public static boolean equals(DefaultMutableTupleNode defaultMutableTupleNode, DefaultMutableTupleNode defaultMutableTupleNode2) {
        if (defaultMutableTupleNode == defaultMutableTupleNode2) {
            return true;
        }
        if (defaultMutableTupleNode.getTuple().equals(defaultMutableTupleNode2.getTuple()) && defaultMutableTupleNode.getChildCount() == defaultMutableTupleNode2.getChildCount()) {
            for (int i = 0; i < defaultMutableTupleNode.getChildCount(); i++) {
                if (!equals((DefaultMutableTupleNode) defaultMutableTupleNode.getChildTupleNodeAt(i), (DefaultMutableTupleNode) defaultMutableTupleNode2.getChildTupleNodeAt(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.asn1.ber.TupleNode
    public void accept(TupleNodeVisitor tupleNodeVisitor) {
        if (tupleNodeVisitor.canVisit(this)) {
            int i = 0;
            if (tupleNodeVisitor.isPrefix()) {
                ArrayList order = tupleNodeVisitor.getOrder(this, this.children);
                if (tupleNodeVisitor.canVisit(this)) {
                    tupleNodeVisitor.visit(this);
                }
                while (i < order.size()) {
                    ((TupleNode) order.get(i)).accept(tupleNodeVisitor);
                    i++;
                }
                return;
            }
            ArrayList order2 = tupleNodeVisitor.getOrder(this, this.children);
            while (i < order2.size()) {
                ((TupleNode) order2.get(i)).accept(tupleNodeVisitor);
                i++;
            }
            if (tupleNodeVisitor.canVisit(this)) {
                tupleNodeVisitor.visit(this);
            }
        }
    }
}
