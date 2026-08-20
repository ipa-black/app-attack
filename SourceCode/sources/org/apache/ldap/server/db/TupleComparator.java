package org.apache.ldap.server.db;

import java.io.Serializable;
import org.apache.ldap.server.schema.SerializableComparator;
/* loaded from: classes3.dex */
public interface TupleComparator extends Serializable {
    int compareKey(Object obj, Object obj2);

    int compareValue(Object obj, Object obj2);

    SerializableComparator getKeyComparator();

    SerializableComparator getValueComparator();
}
