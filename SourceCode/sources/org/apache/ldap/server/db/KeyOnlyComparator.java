package org.apache.ldap.server.db;

import java.io.Serializable;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public class KeyOnlyComparator implements TupleComparator, Serializable {
    private static final long serialVersionUID = 3544956549803161397L;
    private SerializableComparator keyComparator;

    public KeyOnlyComparator(SerializableComparator serializableComparator) {
        this.keyComparator = serializableComparator;
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public SerializableComparator getKeyComparator() {
        return this.keyComparator;
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public SerializableComparator getValueComparator() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public int compareKey(Object obj, Object obj2) {
        return this.keyComparator.compare(obj, obj2);
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public int compareValue(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }
}
