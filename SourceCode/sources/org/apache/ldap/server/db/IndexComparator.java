package org.apache.ldap.server.db;

import org.apache.ldap.common.util.BigIntegerComparator;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public class IndexComparator implements TupleComparator {
    private static final SerializableComparator BIG_INTEGER_COMPARATOR = new SerializableComparator("1.2.6.1.4.1.18060.1.1.1.2.2") { // from class: org.apache.ldap.server.db.IndexComparator.1
        private static final long serialVersionUID = 3690478030414165816L;

        @Override // org.apache.ldap.server.schema.SerializableComparator, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return BigIntegerComparator.INSTANCE.compare(obj, obj2);
        }
    };
    private static final long serialVersionUID = 3257283621751633459L;
    private final boolean isForwardMap;
    private final SerializableComparator keyComp;

    public IndexComparator(SerializableComparator serializableComparator, boolean z) {
        this.keyComp = serializableComparator;
        this.isForwardMap = z;
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public SerializableComparator getKeyComparator() {
        if (this.isForwardMap) {
            return this.keyComp;
        }
        return BIG_INTEGER_COMPARATOR;
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public SerializableComparator getValueComparator() {
        if (this.isForwardMap) {
            return BIG_INTEGER_COMPARATOR;
        }
        return this.keyComp;
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public int compareKey(Object obj, Object obj2) {
        return getKeyComparator().compare(obj, obj2);
    }

    @Override // org.apache.ldap.server.db.TupleComparator
    public int compareValue(Object obj, Object obj2) {
        return getValueComparator().compare(obj, obj2);
    }
}
