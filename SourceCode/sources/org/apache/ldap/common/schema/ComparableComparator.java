package org.apache.ldap.common.schema;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes3.dex */
public class ComparableComparator implements Comparator, Serializable {
    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj instanceof Comparable) {
            return ((Comparable) obj).compareTo(obj2);
        }
        if (obj2 instanceof Comparable) {
            return -((Comparable) obj2).compareTo(obj);
        }
        return obj.hashCode() - obj2.hashCode();
    }
}
