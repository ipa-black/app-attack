package org.apache.ldap.server.db;

import java.math.BigInteger;
import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public class IndexRecord {
    private final Tuple tuple = new Tuple();
    private Attributes entry = null;

    public void setTuple(Tuple tuple, Attributes attributes) {
        this.tuple.setKey(tuple.getKey());
        this.tuple.setValue(tuple.getValue());
        this.entry = attributes;
    }

    public void setSwapped(Tuple tuple, Attributes attributes) {
        this.tuple.setKey(tuple.getValue());
        this.tuple.setValue(tuple.getKey());
        this.entry = attributes;
    }

    public BigInteger getEntryId() {
        return (BigInteger) this.tuple.getValue();
    }

    public Object getIndexKey() {
        return this.tuple.getKey();
    }

    public void setEntryId(BigInteger bigInteger) {
        this.tuple.setValue(bigInteger);
    }

    public void setIndexKey(Object obj) {
        this.tuple.setKey(obj);
    }

    public Attributes getAttributes() {
        return this.entry;
    }

    public void setAttributes(Attributes attributes) {
        this.entry = attributes;
    }

    public void clear() {
        this.entry = null;
        this.tuple.setKey(null);
        this.tuple.setValue(null);
    }

    public void copy(IndexRecord indexRecord) {
        this.entry = indexRecord.getAttributes();
        this.tuple.setKey(indexRecord.getIndexKey());
        this.tuple.setValue(indexRecord.getEntryId());
    }
}
